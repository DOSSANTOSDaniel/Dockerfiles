# Image Docker permettant d'avoir Dokuwiki, simple serveur Dokuwiki

Image basé sur php:7.3-apache, cette image permet d'avoir un serveur Dokuwiki en local, les données du serveur sont accessibles sur l'hôte au travers d'un volume.

<img src="https://lh3.googleusercontent.com/Glz0T2_Or-sOEbWWwKXEbWrfJ9l-v0ogXrFZ_Dv-y79kBuTrq8mxJaknh7Sskqo0nR2shsPngIziRHvZ03cwbap3D7faZSRjRD5SVF3rYyuzTzcVl1A0Hk2CJl7vlWJBUhtCRO1Q21a0lFZV9Z-uAyoE1duBy54vGUtFbxSVcueoMv4c4nuwrNfLzqmd4LbeDaz4i65827qycSTncVVfHLV9Kr0_PVtyVq3N7OrsrZxItD77hTSAz-KzUKJv1Ezck1kwIC2WtPhijb8abQHazdBM2yXLpUxDceGyW4Z6pLHJvbOaUwk3f59dgsGWn48VWeSL7fsytZJ9kcmbQJ-UAfKsWNTcLuRVyYisGqiUZhEocVMMBMioEyrt65lkW1dk4tR5RRVGjH_56kLGuj3u5ScxxQotLPTdzsXMBpXzLQxSt6uGvH4ILfDpRZu0py2XuYuE962IxdJwMrzP6VP4iH6zB89xA3H6rUZyyjcilKCT6slosepydvrigH5oY1UATddVK425o2eOmqSmC9B6vB-s2mc078sDe3mFv_ae79OlF6zXFnETs0M2zO1vkwUWTQV3My6XsdngTo8AVBBtvzJbuih3U3v22Hj6H58o9Rlg4365vWHhBHKRTG51M-fkbybdKzwZmE1PZeDxu6bVI3I5SOd8N0KlYO127GWaFQA8LJ6GkKfu6_VOqG9Yk0Ejac-wt8XqIGro0bBWjhmd6-t6sg6zRUw6MDuJjUB3kpKU6iE=w1788-h893-no" width="100%">

## Usage
#### Pour télécharger l'image
`docker pull dossantosd/dokuwiki`

#### Pour créer et démarrer un conteneur 
`docker run -ti -p "Port hôte":80  "ID"`

#### Pour créer et démarrer un conteneur de manière détaché
`docker run -ti -d -p "Port hôte":80  "ID"`

#### Pour créer et démarrer un conteneur avec un accès au shell
`docker run -ti "ID" bash`

#### Stopper un conteneur
`docker stop "ID"`

#### Démarrer un conteneur
`docker start "ID"`

#### Fin de la configuration
1. Une fois le conteneur démarré ouvrir votre navigateur et tapez : "http://localhost:8080/install.php".
2. Suivre les instructions pour finaliser la configuration.

## Exemple
    docker images
    docker run -ti -p 8080:80 "ID"
    http://localhost:8080/install.php
    docker ps
    docker stop "ID"
    docker start "ID"

## Volumes
#### Ce volume est connecté au dossier "data" de Dokuwiki. 
 * "/var/www/html/doki_DATA"
