# Rendu examen final docker. 

### - Conteneurisation de l’application web. 

Nous avons tout d'abord commencer par créer un fichier Dockerfile avec toutes les commandes utiles à notre projet :
![fichier Dockerfile](https://cdn.discordapp.com/attachments/1031536340728287302/1042014502603997234/image.png "Dockerfile")

Ensuite, nous avons executé la commande docker build suivi du nom de l'image que nous voulions créer : 
![commande](https://cdn.discordapp.com/attachments/1031536340728287302/1042014760163606569/image.png "commande build")

Avant de lancer le run de notre image, on verifie à supprimer tout les containers existants:
![commande](https://cdn.discordapp.com/attachments/1031536340728287302/1042015121913950209/image.png "commande run")

Puis après avoir fait le build et le rm on fait un run en le mettant en arrière plan grace à "-d", on lui attribue un port libre avec “-p”, puis la machine locale “8080” et le conteneur “8080” :
![commande](https://cdn.discordapp.com/attachments/1031536340728287302/1042015795020050432/image.png "commande run")

Grace à celà, nous avons pu observer que nous avions bel et bien récupérer l'image du site web sur notre adresse ip au port indiqué: 192.168.99.10:8080 
Voici donc le rendu que nous avons eu :
![rendu](https://cdn.discordapp.com/attachments/1031536340728287302/1042014119341068339/image.png "rendu site web")

### - Private registery 

Nous avons créer un registre privé, pour ce faire nous avons executé ces commandes :
D'abord, créons le registre: 
![rendu](https://media.discordapp.net/attachments/1031536340728287302/1042021626906157077/image.png "rendu site web")
De plus, nous créons une interfaceweb pour visualiser notre registre privé :
![rendu](https://media.discordapp.net/attachments/1031536340728287302/1042022689877004318/image.png "rendu site web")
Puis, nous ajoutons un tag à notre image pour pouvoir le push correctement sur notre registre privé :
![rendu](https://media.discordapp.net/attachments/1031536340728287302/1042023510203187273/image.png "rendu site web")
Pour enfin faire un push final sur le registre: 
![rendu](https://media.discordapp.net/attachments/1031536340728287302/1042039261655994448/image.png "rendu site web")

### - Docker-compose

Nous avons ensuite créé un fichier docker-compose.yml pour simplifier nos déploiements sur odoo et pgadmin.
Voici la structure de notre fichier :
Tout d'abord, nous devons créer l'environnement sur chaques services. Nous avons
ic-webapp: 
![rendu](https://cdn.discordapp.com/attachments/1031536340728287302/1042039618922614784/image.png "rendu site web")
postgres:
![rendu](https://media.discordapp.net/attachments/1031536340728287302/1042039661243146240/image.png "rendu site web")
pgadmin :
![rendu](https://media.discordapp.net/attachments/1031536340728287302/1042039717530714122/image.png "rendu site web")
odoo :
![rendu](https://media.discordapp.net/attachments/1031536340728287302/1042039759549247529/image.png "rendu site web")
les networks et les volumes utilisés:
![rendu](https://media.discordapp.net/attachments/1031536340728287302/1042039799009263646/image.png "rendu site web")

Après celà, on lance la commande docker-compose up --build
![rendu](https://cdn.discordapp.com/attachments/1031536340728287302/1042044636102918144/image.png "rendu site web")
Nous pouvons donc nous rendre sur l'interface web:
![rendu](https://media.discordapp.net/attachments/1031536340728287302/1042045043063664741/image.png?width=1440&height=509 "rendu site web")
Ensuite nous pouvons bien cliquer sur les liens présents :
pgadmin: 
Le client peut se connecter avec les identifiants présent dans notre docker-compose: 
![rendu](https://cdn.discordapp.com/attachments/1031536340728287302/1042045348421582908/image.png "rendu site web")
Puis voici l'interface du client avec ses bases de données :
![rendu](https://media.discordapp.net/attachments/1031536340728287302/1042045444743770163/image.png?width=1328&height=663 "rendu site web")

#### Liste des identifiants:
| identifiant | password |
| ------ | ------ |
| abc@gmail.com | AZERY!|
| admin | QWERTY!|



### - Sources
| Fichiers | Liens |
| ------ | ------ |
| Docker-compose | [Exam_Docker/docker-compose.yml][PlDc] |
| Dockerfile | [Exam_Docker/Dockerfile][PlDf] |


Sites utiles :
    
    https://hub.docker.com/r/dpage/pgadmin4/
    https://hub.docker.com/_/odoo
    https://openclassrooms.com/fr/courses/2035766-optimisez-votre-deploiement-en-creant-des-conteneurs-avec-docker/6211517-creez-votre-premier-dockerfile
    https://openclassrooms.com/fr/courses/2035766-optimisez-votre-deploiement-en-creant-des-conteneurs-avec-docker/6211677-creez-un-fichier-docker-compose-pour-orchestrer-vos-conteneurs
    https://devopssec.fr/article/deployer-manipuler-securiser-un-serveur-registry-docker-prive
    
### - Licence

**ParisYnovCampus**

    Les participants au projet:
        - Raphaël CARRILHO
        - Noah SUHARD
        - Ilyes BESBES
        - Keenan SZCZEPKOWSKI


 [PlDc]: <https://github.com/raphacarr/Exam_docker/blob/master/docker-compose.yml>
  [PlDf]: <https://github.com/raphacarr/Exam_docker/blob/master/Dockerfile>