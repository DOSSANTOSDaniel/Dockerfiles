# Image de base
FROM kalilinux/kali-rolling

# Variables
ENV debuser="daniel"
# Attention mettre au moins 8 caractères
ENV debpasswd="digital91300"
ENV rootpasswd="$debpasswd"
ENV lang="LANG=fr_FR.UTF-8"

WORKDIR /root

# Dep
RUN apt update\
&& apt full-upgrade -y\
&& apt install dialog -y\
&& apt install apt-utils -y\
&& echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections\ 
&& apt install xorg -y\
&& apt install dbus-x11 -y\
&& apt install x11-xserver-utils -y\
&& apt install python -y\
&& apt install python-numpy -y\
&& apt install locales -y\
&& export $lang\
&& apt install firefox-esr -y\
&& apt install iproute2 -y\
&& apt install wget -y\
&& apt install curl -y\
&& apt install iproute2 -y


# Création d'utilisateur
RUN useradd -ms /bin/bash $debuser

# Installation et configuration de xfce
RUN apt install xfce4 -y\
&& apt install xfce4-goodies -y
RUN apt install procps -y

# Installation de tightvncserver
RUN apt install vnc4server -y

# Installation de NoVNC
RUN apt install git -y
RUN git clone https://github.com/novnc/noVNC.git

# Lancement des serveurs
RUN yes $debpasswd | vncpasswd
CMD vncserver\
&& /root/noVNC/utils/launch.sh --vnc localhost:5901

# Password
RUN yes $debpasswd | passwd $debuser
RUN yes $rootpasswd | passwd

EXPOSE 6080
EXPOSE 5901

VOLUME /home/$debuser/Partage
