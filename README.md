# Document technique du projet Tech&Web

## Descriptif du projet :

Dans le cadre de nos études, nous serons amenés à présenter notre travail à des tiers, par le biais d’un CV ainsi que des exemples de réalisations. Nous devons donc concevoir un site web qui doit être notre curriculum. Notre site web doit comporter plusieurs sections qui sont : Une présentation détaillée (expériences professionnelles, compétences, rubriques libres), Une section réalisations/Projets et une dernière section page de contact permettant aux visiteurs de nous contacter par le biais d’un formulaire. Nous aurons également une partie administrative pour pouvoir gérer les différentes sections de notre site web. Afin de concevoir cela, pour commencer j’ai établi mon curriculum sur papier afin de bien distinguer les grandes lignes de mon site. Une fois cela fait, j’ai établi un schéma merise me permettant de visualiser schématiquement mon site. Par la suite, je me suis interrogé sur le désigne du site. Une fois tous ces prérequis réalisé je me suis lancé dans le développement en utilisant HTML/CSS.

## Schéma Merise :

![merise](/img/MONT_VALENTIN_MERISE.PNG)

## Javascript

Après avoir établie l’HTML et le CSS, j’ai inséré du Javascript sur mon site. J’ai trouvé après mure réflexion qu’un carrousel pourrai être un bonne idée. Je n’ai pas encore décidé quelles images contiendra mon carrousel mais j’ai des idées en tête par exemple : Il pourrait contenir tous mes diplômes qu’on pourra consulter en faisant défilé le slider ou il pourra aussi être utiliser afin de mettre en avant toutes les entreprises ou j’ai travaillé… Ce qui est sûr c’est qu’il permettra de consulter des informations à mon sujet de manière simple et efficace.

## Ajout du SQL :

J’ai créé une base de données sous oracle avec le logiciel oracle sql developer. Je n’ai pas repris exactement mon schéma merise pour réaliser ma base de données. En pratique, le schéma n’était pas simple à réaliser et donc j’ai revue la conception théorique de la bdd. Dans la base de données, j’ai créé 9 tables : compétence, infoperso, contact, passions, formation, expérience, structures et dont 2 tables intermédiaires qui sont competence_formation et competence_experience qui font le lien entre les tables compétence, expérience et formation.Et ensuite j’ai inséré les information à on sujet dans les tables adéquats. Enfin j’ai importé mon fichier sur PhpMyAdmin afin de convertir en MySQL.

## Ergonomie :

Afin d’optimiser l’expérience utilisateur sur le site, j’ai appliqué quelques modifications. J’ai remplacé la partie « qualités » par une partie « compétences » avec un système de bar de progression. Et j’ai supprimé tout les réseaux sociaux sauf LinkedIn. J’ai également intégré une fonctionnalité qui permet de télécharger mon cv en PDF.
