# Outils pour coordonner le développement
Version 0.0.5 : on a décidé d'utiliser Docker pour garder les containers séparés, mais toujours dans le même environnement.

## Plan de travail
- [X] Établir un environnement reproduisable pour bien testé le front-end et le backend.
- [X] établir les dépendances et restrictions de versions : **[Node](https://nodejs.org/fr/) 16 pour l'api et l'app**
  - [X] Ports **`3000` front end et `8000` pour API**
  - [X] Environnement / Type de serveurs : Node pour les deux, [mongodb](https://www.mongodb.com/fr-fr) pour l'instant comme engin de base de données.
  - [ ] Gestion des versions et des dépendances à venir pour l'API

## Objectifs
1. Collaborer dans la mise en place de ces dépendances dans tout le `stack` de l'application.
2. Permettre la prise en main du développement plus rapide et mieux communiquer entre développeurs.
3. Planifier et déterminer les besoins en développement pour mieux préparer l'intégration continue (CI) en staging et en production.

## Testing
En cours de recherche, nos choix technologiques de l'application on dicté ces pistes :
1. **Le front-end étant en nextjs** <br>[Jest](https://jestjs.io/) est le moteur de test établi dans [nextjs](https://nextjs.org/) pour les tests du framework. Donc il serait le choix #1.
2. **L'API sera probablement en** [expressjs](https://expressjs.com/fr/) <br>on a le choix de [plusieurs librairies de tests](recherche-pour-les-tests).

### Recherche pour les tests
Une des sources intéressantes sur le sujet : https://medium.com/serverlessguru/how-to-unit-test-with-nodejs-76967019ba56
#### À faire
- [ ] Faire la comparaison des features : async, components, url, backend, etc.
#### ÉLagage des outils disponibles
#####Test suits
- [Jest](https://jestjs.io/)
  - [Enzyme](https://enzymejs.github.io/enzyme/) : test components output more easily
- [Chai](https://www.chaijs.com/)
- [Mocha](https://mochajs.org/)

#####Behavioural testing
- [Jasmine](https://jasmine.github.io/pages/getting_started.html)