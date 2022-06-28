#! /bin/bash

BASEPATH="./"
reset # équivalent à CLS
echo "Installation de l'espace de travail pour la BDSOL ici"

echo "On fera le travail dans : $BASEPATH"
cd $BASEPATH;

echo "On supprime le dossier .git dans $BASEPATH pour garder que ./app et ./api"
rm -rf .git


# API

echo "On clone le répertoire de travail de l'api ici $BASEPATH"
git clone https://github.com/Avantage-Numerique/bdsol-api.git

mv bdsol-api api
cd api
cp .env.exemple .env

npm install


cd ..


# APP

echo "On clone le répertoire de travail de l'app ici $BASEPATH"
git clone https://github.com/Avantage-Numerique/bdsol-app.git

mv bdsol-app app
cd app
cp .env.exemple .env


# force the env to install the newest newman
npm install -g newman
