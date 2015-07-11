#!/bin/sh

# o/ what's up.
#
# ~/.xinitrc

#if [ -d /etc/X11/xinit/xinitrc.d ]; then
 # for f in /etc/X11/xinit/xinitrc.d/*; do
  #  [ -x "$f" ] && . "$f"
  #done
  #unset f
#fi

xmodmap ~/.xmodmap &
feh --bg-scale ~/TxwQYcL.png &

#sxhkd &
#exec bspwm

exec i3

#exec startkde
# exec gnome-session

# exec startxfce4
# exec wmaker
# exec icewm
# exec blackbox
# exec fluxbox
# exec openbox-session
# exec cinnamon-session
# ...or the Window Manager of your choice
# exec xterm
