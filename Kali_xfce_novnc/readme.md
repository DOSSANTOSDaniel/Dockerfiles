# Image Docker de Kali Linux avec l'interface graphique XFCE

 Dockerfile permettant d'avoir un conteneur avec un desktop près à l'emplois:
 * Avec Kali Linux.
 * Connexion sur l'interface graphique à l'aide d'un navigateur web (NoVNC).
 * Interface graphique: XFCE.
 * Script bash complétant la création de l'image par l'ajout de quelques applications, comme par exemple katoolin qui permet d'avoir le menu d'applications de Kali.
* Lancer katoolin puis appuyer sur 4 pour installer le menu.

Image basé sur Kali Linux, cette image permet d'avoir une station de travail avec une interface graphique en local, la connexion à la machine se fait via NoVNC.

<a data-flickr-embed="true" href="https://www.flickr.com/photos/186226328@N07/49290901837/in/dateposted-public/" title="kali"><img src="https://live.staticflickr.com/65535/49290901837_a2ea86ae8e_k.jpg" width="100%" alt="kali"></a><script async src="//embedr.flickr.com/assets/client-code.js" charset="utf-8"></script>

## Usage

#### Pour créer et démarrer un conteneur 
`docker run -ti --net=host --privileged -p 6080:6080 "id"`

#### Installation du menu de Kali Linux
Lancer la commande "katoolin", choisir "2 View categories" puis sélectionnez 0 pour installer l'intégralité des logiciels.
On peut aussi choisir les logiciels individuellement.

####  Lancer Metasploit
- `service postgresql start`
- `msfdb init`
- `msfconsole`

#### Identifiants
toto / toto2019

#### Fin de la configuration
1. Une fois le conteneur démarré ouvrir votre navigateur et tapez : "http://localhost:6080/vnc.html".
2. Taper le mot de passe toto2019 pour valider.
3. Lancer un terminal et taper katoolin puis appuyer sur 2 puis 0, cela va installer le menu de Kali Linux.

## Volumes
 * "/home/toto/Partage"
