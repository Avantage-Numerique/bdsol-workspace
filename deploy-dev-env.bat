REM Demande l'endroit d'installation

@ECHO OFF
CLS
SET /p R="Repertoire de base ( ex: C:/Subversion/src ) :"

ECHO Set les variables path

ECHO Aller au chemin de base
cd %R%


ECHO Clone le git data
git clone https://github.com/Avantage-Numerique/bdsol-workspace.git
CD bdsol-workspace
RD /S /Q .git

ECHO Clone le git api
git clone https://github.com/Avantage-Numerique/bdsol-api.git
REN bdsol-api api
CD api
COPY .env.exemple .env

REM Vérifie Dockerfile.dev
CALL npm install --force
CD ..

ECHO Clone le git app
git clone https://github.com/Avantage-Numerique/bdsol-app.git
REN bdsol-app app
CD app
COPY .env.exemple .env

REM Vérifie Dockerfile.dev

CALL npm install --force
CD ..

ECHO Install Newman pour les tests PostMan
CALL npm install -g newman

ECHO Build le docker
CALL docker compose build

REM Start a cmd et run frontend
START "Environnement Frontend" cmd.exe /K "CD app && npm run dev"

REM Run api
CD api
START "Environnement BackEnd" cmd.exe /K "docker compose up"
