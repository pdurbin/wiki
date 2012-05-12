## touchpad

    [pdurbin@tabby ~]$ cat ~/.config/autostart/syndaemon.desktop 

    [Desktop Entry]
    Type=Application
    Exec=syndaemon -i 1.0 -K -R -t
    Hidden=false
    X-GNOME-Autostart-enabled=true
    Name[en_US]=0pdurbin-disable-touchpad-while-typing
    Name=0pdurbin-disable-touchpad-while-typing
    Comment[en_US]=
    Comment=
    [pdurbin@tabby ~]$ 

http://unix.stackexchange.com/questions/37962/can-i-prevent-disable-touchpad-while-typing-from-affecting-mouse-movements

## alt-tab

    yum install gnome-shell-extension-alternate-tab
    gsettings set org.gnome.shell.extensions.alternate-tab behaviour all_thumbnails

http://git.gnome.org/browse/gnome-shell-extensions/tree/extensions/alternate-tab

