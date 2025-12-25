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

doas rc-update add dbus
doas rc-service dbus start
doas rc-update add lightdm
doas rc-service lightdm start

# Internet

doas setup-interfaces

doas reboot
