#!/bin/bash

# This is a test script to quickly see changes made to the theme
# Requires 'User Theme' extension https://extensions.gnome.org/extension/19/user-themes/

EXT_DEP="user-theme@gnome-shell-extensions.gcampax.github.com"

if [[ $(gnome-extensions list | grep user-theme) ]]; then
  
  if [[ $(gnome-extensions info $EXT_DEP | grep ENABLED) ]]; then

    case $1 in
    "--light")
    # update shell light theme
    gsettings set org.gnome.shell.extensions.user-theme name Adwaita
    gsettings set org.gnome.shell.extensions.user-theme name 'Neptune-light'
    # update gtk light theme
    gsettings set org.gnome.desktop.interface gtk-theme Adwaita
    gsettings set org.gnome.desktop.interface gtk-theme 'Neptune-light'
    ;;
    "--dark")
    # update shell dark theme
    gsettings set org.gnome.shell.extensions.user-theme name Adwaita-dark
    gsettings set org.gnome.shell.extensions.user-theme name 'Neptune-dark'
    # update gtk dark theme
    gsettings set org.gnome.desktop.interface gtk-theme Adwaita-dark
    gsettings set org.gnome.desktop.interface gtk-theme 'Neptune-dark'
    ;;
    *) echo "Test options: --light --dark"
    esac

  else echo "'User-theme' extension must be enabled." && exit 1
  fi

else echo "'User-theme' extension not installed." &&  exit 2
fi