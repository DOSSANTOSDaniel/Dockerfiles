# Image Docker de Debian 10.2 avec l'interface graphique Mate

 Dockerfile permettant d'avoir un desktop près à l'emplois:
 * Avec Debian Buster.
 * Connexion sur l'interface graphique à l'aide d'un navigateur web (NoVNC).
 * Interface graphique: Mate.
 * Script bash complétant la création de l'image par l'ajout de quelques applications.

Image basé sur Debian Buster, cette image permet d'avoir une station de travail avec une interface graphique en local, la connexion à la machine se fait via NoVNC.

<a data-flickr-embed="true" href="https://www.flickr.com/photos/186226328@N07/49290970707/in/dateposted-public/" title="MateDesktopVNC"><img src="https://live.staticflickr.com/65535/49290970707_ead7ca1cee_k.jpg" width="100%" alt="MateDesktopVNC"></a><script async src="//embedr.flickr.com/assets/client-code.js" charset="utf-8"></script>

## Usage

#### Pour créer et démarrer un conteneur 
`docker run -ti -p 6080:6080  "ID"`

#### Identifiants
toto / toto2019

#### Fin de la configuration
1. Une fois le conteneur démarré ouvrir votre navigateur et tapez : "http://localhost:6080/vnc.html".
2. Taper le mot de passe toto2019 pour valider.

## Volumes
 * "/home/toto/Partage"
