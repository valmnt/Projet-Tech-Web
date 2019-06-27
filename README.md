 # Document technique du projet Tech&Web

## Objectif du site :

Ce site a été conçu dans le but d'avoir un curriculum en ligne. Bien entendu, étant étudiant en école d'informatique un curriculum en papier aurait très peu de valeur.
C'est pour cela que j'ai developpé ce site web avec des technologies différentes ayant pour chacune un rôle bien définit dans la conception et le fonctionnement 
du site.

## Sommaire 

* Html / Css
* Javascript
* Merise / Sql
* Php

## Html / Css

* L'html et le css ont été les premières technologies à avoir été utilisé
* Elles m'ont permit de concevoir l'esthétisme de mon site web
* L'html et le css ont également été utilisé dans le but de rendre le site responsive

## Javascript

* Le javascript a permis de rendre le site plus intéractif
* Un système d'onglet a été réalisé afin d'exposer mes différents projets informatique
* Chaques onglets est différents des autres *la couleur de fond, le texte ainsi que les images sont différents*

*Sytème d'onglets*

![merise](/img/onglets.PNG)

## Merise Sql

### Merise

Merise a permis de représenter schématiquement ma base de donnée

![merise](/img/MONT_VALENTIN_MERISE.PNG)

### Sql

Après avoir réalisé la partie théorique de la base de donnée, je l'ai mis en pratique.
Etant une base de donnée pour un curriculum j'ai crée les tables suivantes:

* Infoperso --> informations générales à mon sujets (nom, prénom...)
* Competence
* Experience
* Formation
* passions
* contact --> formulaire de contact
* structure --> contient les infrastructure liées aux expériences et aux formations

*deux tables intermédiaires (qui feront le lien entre certaines tables) :*

* competence_experience
* competence_formation

## Php

Le php est présent en majorité sur mon site pour les raisons suivantes :

* Permet de dynamiser le site, plus besoin de repasser par du code pour rajouter de nouveaux éléments (experiences, compétences, passions...)
* Permet de lier notre site avec une base de donner PhpMyAdmin
* Permet de gérer le contenue du site depuis une page administration, qui a un système de login pour éviter que tout le monde puisse modifier le contenu du site
* Permet d'éviter de répéter du code manuellement

*Page d'adminsitration*

![admin](/img/admin.PNG)


