# Image de base
FROM debian:10.2

# Variables
ENV debuser="toto"
# Attention mettre au moins 8 caractères
ENV debpasswd="toto2019"
ENV rootpasswd="$debpasswd"
ENV lang="LANG=fr_FR.UTF-8"

# Erreurs
RUN apt update && apt install dialog -yqq && apt install apt-utils -yqq && echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

# Création d'utilisateur
RUN useradd -ms /bin/bash $debuser

#Configuration des locales
RUN apt-get install locales -yqq && export $lang

# Installation de tightvncserver
WORKDIR /home/$debuser
RUN apt install tightvncserver -yqq

# Installation de NoVNC
RUN apt install git -yqq
RUN git clone https://github.com/novnc/noVNC.git

# Installation et configuration de lxde
RUN apt install tasksel -yqq
RUN tasksel install mate-desktop

# Lancement des serveurs
RUN su - $debuser -c "yes $debpasswd | vncpasswd -t"
RUN mv /tmp/$debuser-vnc /home/$debuser/.vnc
CMD su - $debuser -c "vncserver && /home/$debuser/noVNC/utils/launch.sh --vnc localhost:5901"
#RUN chmod -R 777 /home/toto/
RUN chown -R $debuser:$debuser /home/toto/

# Password
RUN yes $debpasswd | passwd $debuser
RUN yes $rootpasswd | passwd
WORKDIR /home/$debuser
EXPOSE 6080
EXPOSE 5901

VOLUME /home/$debuser/Partage
