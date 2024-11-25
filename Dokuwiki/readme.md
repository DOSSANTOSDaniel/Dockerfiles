# Image Docker permettant d'avoir Dokuwiki, simple serveur Dokuwiki

Image basé sur php:7.3-apache, cette image permet d'avoir un serveur Dokuwiki en local, les données du serveur sont accessibles sur l'hôte au travers d'un volume.

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
