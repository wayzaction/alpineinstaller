# !/bin/sh

# LOCALES

doas apk add musl-locales
doas apk add lang
doas cp /etc/profile.d/20locale.sh /etc/profile.d/20locale.sh.sh

# X11

doas setup-xorg-base

# Graphical

doas apk add lightdm lightdm-gtk-greeter
doas apk add fluxbox
doas apk add firefox 

# Etcetera

doas apk add xterm
doas apk add dbus dbus-x11
doas apk add flatpak

# Services

sleep 1
doas rc-update add dbus
sleep 1
doas rc-service dbus start
sleep 1
doas rc-update add lightdm
sleep 1
doas rc-service lightdm start

#############

sleep 2

doas reboot
