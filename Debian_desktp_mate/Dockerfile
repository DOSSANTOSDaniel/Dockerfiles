# Image de base
FROM debian:10.2

# Variables
# Attention mettre au moins 8 caractères
ENV debpasswd="toto2019"

#Configuration des locales
RUN apt update && apt-get install locales -y && rm -rf /var/lib/apt/lists/* && localedef -i fr_FR -c -f UTF-8 -A /usr/share/locale/locale.alias fr_FR.UTF-8
ENV LANG fr_FR.utf8

WORKDIR /root

# Installation et configuration de Mate
RUN apt update && apt install mate-desktop-environment -y

# Installation et configuration de tigervnc
RUN apt install tigervnc-standalone-server -y && yes $debpasswd | vncpasswd

# Installation et configuration de novnc
RUN apt install novnc python-websockify -y && echo 'exec /usr/bin/mate-session &' > /root/.vnc/xstartup
CMD vncserver :1 -geometry 800x600 -localhost no && websockify -D --web=/usr/share/novnc/ 6080 localhost:5901

EXPOSE 6080
EXPOSE 5901

VOLUME /home/$debuser/Partage
