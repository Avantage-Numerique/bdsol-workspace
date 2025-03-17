# Outils pour coordonner le développement

Version 0.0.5 : on a décidé d'utiliser Docker pour garder les containers séparés, mais toujours dans le même
environnement.

## Répertoires git

1. `api` : [https://github.com/Avantage-Numerique/bdsol-api.git](https://github.com/Avantage-Numerique/bdsol-api.git)
2. `app` : [https://github.com/Avantage-Numerique/bdsol-app.git](https://github.com/Avantage-Numerique/bdsol-app.git)

## Installation

### Prérequis

- Node 16 et npm
- Docker et docker compose
- Git indeed
- Et votre IDE favori!

### Windows

#### Avec l'outil d'installation
1. Cloner ce répertoire dans votre environnement de travail.
2. Assurez-vous que Docker est actif.
3. Double cliquez sur le fichier `deploy-dev-env.bat` pour exécuter le script d'installation.
4. Supprimer le dossier `.git` pour garder seulement app + api

### Installation manuelle

1. Créer le répertoire `app`.
2. Créer le répertoire `api`.
3. Créer un sous-dossier `api/logs`.
4. Copier et renommer à `.env` le fichier `.env-exemple`
3. Checkout le répertoire de l'api dans `./api`
5. Installer les dépendances du projet avec `npm install` dans le dossier `./api`.
6. Checkout le répertoire de l'app dans `./app`
8. Installer les dépendances du projet avec `npm install` dans le dossier `./app`.


## Démarrer le projet

- Pour builder et démarrer l'API
  - Pour votre premier départ ou pour un changement de dépendance,
    - Dans la base du dossier bdsol-workspace, il faut construire les `container` de l'api et la base de données MongoDB en effectuant les commande :
      `docker compose build`

- Ensuite, toujours dans la base du dossier, effectuer la commande `docker compose up`.

- Pour démarrer l'app en dev
  - Rendez-vous dans le dossier de l'app et exécuter `npm run dev`.

### Utiliser le fichier `open-bdsol.bat`

#### Prérequis `2023-02-15`
- il faut être sur Windows
- Utiliser l'Application de terminal : [`Windows Terminal`](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701?hl=fr-ca&gl=ca&rtc=1)
- Il faut adapter le fichier avec le paramètre `-d` avec l'emplacement de votre environnement local de travail.
- Changer le path `BASEPATHCOMPOSE` pour le vôtre, avec les backslash pour windows.
  

  
## Pour mettre à jour les dépendances dans le container
1. Suprimer votre container créé pour la bdsol-api
2. Exécuter la commande `docker compose build --no-cache`
2. Exécuter la commande `docker compose up`

## Les courriels et tests
- Il faut faire un compose avec les paramètres du docker-compose + le dossier `dev`.
- Ensuite il faut paramètrer son `.env` avec les paramètres du serveur local smtp.

### Tester les courriels

- Accès dans le network Docker Mailhog : `nomDuContainer:1025` (smtp)
  - Pas besoin d'utilisateur prédéterminer ni de mot de passe. Donc mettre n'importe quoi.
- Mailhog web UI : `localhost:8025`

## Objectifs

1. Collaborer dans la mise en place de ces dépendances dans tout le `stack` de l'application.
2. Permettre la prise en main du développement plus rapide et mieux communiquer entre développeurs.
3. Planifier et déterminer les besoins en développement pour mieux préparer l'intégration continue (CI) en staging et en
   production.

## Structure du travail
- Nous travaillons avec Asana pour planifier les sprints.
- Nous utilisons les github issues pour ajouter des éléments qui sont des bugs
