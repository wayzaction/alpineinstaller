#!/bin/sh

# LOCALES

#doas apk add musl-locales
#doas apk add lang
#doas cp /etc/profile.d/20locale.sh /etc/profile.d/20locale.sh.sh

# X11

doas setup-xorg-base

# Graphical

doas apk add lightdm
doas apk add lightdm-gtk-greeter
doas apk add fluxbox
doas apk add firefox 

# ETC

doas apk add xterm
doas apk add dbus
doas apk add dbus-x11
doas rc-update add dbus
doas apk add flatpak

doas rc-update add lightdm

