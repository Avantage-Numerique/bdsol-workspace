# Outils pour coordonner le développement

Version 0.0.5 : on a décidé d'utiliser Docker pour garder les containers séparés, mais toujours dans le même
environnement.

## Répertoires git

1. `api` : [https://github.com/Avantage-Numerique/bdsol-api.git](https://github.com/Avantage-Numerique/bdsol-api.git)
2. `app` : [https://github.com/Avantage-Numerique/bdsol-app.git](https://github.com/Avantage-Numerique/bdsol-app.git)

## Installation

### Windows

#### Avec l'outil d'installation
1. Cloner ce répertoire dans votre environnement de travail.
2. Assurez-vous que Docker est actif.
3. Double cliquez sur le fichier `deploy-dev-env.bat` pour exécuter le script d'installation.

### Installation manuelle

1. Créer le répertoire `app`.
2. Créer le répertoire `api`.
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
  - Rendez-vous dans le dossier de l'app et faire `npm run dev`.


## Objectifs

1. Collaborer dans la mise en place de ces dépendances dans tout le `stack` de l'application.
2. Permettre la prise en main du développement plus rapide et mieux communiquer entre développeurs.
3. Planifier et déterminer les besoins en développement pour mieux préparer l'intégration continue (CI) en staging et en
   production.

## Algorithme de l'installateur

```shell
# Register var for the app folder
mkdir ./app

# Register var for the api folder
mkdir ./api

#checkout app in ./app
#checkout api in ./api

# Npm install in ./app
# npm install in ./api

# Enlève le fichier git pour le répertoire workspace.

# docker compose build.
```


## À faire

- [X] Tester les étapes d'installation et de démarrage
  -  [X] Améliorer la documentation d'installation
  - [X] Améliorer la documentation de démarrage
- [X] Faire un script pour automatiser l'installation sur Windows
- [ ] Faire un script shell/node pour automatiser l'installation

## Plan de travail

- [X] Établir un environnement reproduisable pour bien testé le front-end et le backend.
- [X] établir les dépendances et restrictions de versions : **[Node](https://nodejs.org/fr/) 16 pour l'api et l'app**
  - [X] Ports **`3000` front end et `8000` pour API**
  - [X] Environnement / Type de serveurs : Node pour les deux, [mongodb](https://www.mongodb.com/fr-fr) pour l'instant
    comme engin de base de données.
  - [ ] Gestion des versions et des dépendances à venir pour l'API
