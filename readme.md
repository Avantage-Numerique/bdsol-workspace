# Outils pour coordonner le développement

Version 0.0.5 : on a décidé d'utiliser Docker pour garder les containers séparés, mais toujours dans le même
environnement.

## Répertoires git

1. `api` : [https://github.com/Avantage-Numerique/bdsol-api.git](https://github.com/Avantage-Numerique/bdsol-api.git)
2. `app` : [https://github.com/Avantage-Numerique/bdsol-app.git](https://github.com/Avantage-Numerique/bdsol-app.git)

## Installation

1. Créer le répertoire `app`.
2. Créer le répertoire `api`.
3. Checkout le répertoire de l'api dans `./api`
4. Copier le fichier `api.Dockerfile.dev` dans le dossier `./api` et renommer le à `Dockerfile.dev` (notez que les
   répertoire ont déjà ces fichier Dockerfile.dev, faite le s'il y a un problème ou s'il est enlevé)
5. Installer les dépendances du projet avec `npm install` dans le dossier `./api`.
6. Checkout the app into `./app`
7. Copier le fichier `app.Dockerfile.dev` dans le dossier `./app` et renommer le à `Dockerfile.dev` (notez que les
   répertoire ont déjà ces fichier Dockerfile.dev, faite le s'il y a un problème ou s'il est enlevé)
8. Installer les dépendances du projet avec `npm install` dans le dossier `./app`.

## Démarrer le projet

- Pour votre premier départ ou pour un changement de dépendance,
  - Dans la base du dossier bdsol-worksapce, il faut contruire les `container` de l'api et la base de données MongoDB
    en effectuant les commande : `docker compose build`
- Ensuite, toujours dans la base du dossier, effectuer la commande `docker compose up`.
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

# docker compose build.
```


## À faire

- [ ] Tester les étapes d'installation et de démarrage
  -  [ ] Améliorer la documentation d'installation
  - [ ] Améliorer la documentation de démarrage
- [ ] Faire un script shell/node pour automatiser l'installation
- [ ] Faire un script shell/node pour automatiser le processus de mettre en place l'app et l'api/bd.

## Plan de travail

- [X] Établir un environnement reproduisable pour bien testé le front-end et le backend.
- [X] établir les dépendances et restrictions de versions : **[Node](https://nodejs.org/fr/) 16 pour l'api et l'app**
  - [X] Ports **`3000` front end et `8000` pour API**
  - [X] Environnement / Type de serveurs : Node pour les deux, [mongodb](https://www.mongodb.com/fr-fr) pour l'instant
    comme engin de base de données.
  - [ ] Gestion des versions et des dépendances à venir pour l'API
