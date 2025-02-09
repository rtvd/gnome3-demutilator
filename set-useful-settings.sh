#!/bin/sh

echo "Disabling animations ..."
gsettings set org.gnome.desktop.interface enable-animations false

echo "Disabling hot corners ..."
gsettings set org.gnome.desktop.interface enable-hot-corners false

echo "Disable 'dynamic workspaces' ..."
gsettings set org.gnome.mutter dynamic-workspaces false

echo "Setting the number of workspaces to 9 ..."
gsettings set org.gnome.desktop.wm.preferences num-workspaces 9

echo "Settings workspaces to be global (not only the active screen) ..."
gsettings set org.gnome.mutter workspaces-only-on-primary false

echo "Switching between applications only within the current workspace ..."
gsettings set org.gnome.shell.app-switcher current-workspace-only true
gsettings set org.gnome.shell.window-switcher current-workspace-only true

echo "Switching off the abominable 'attach-modal-dialogs' feature ..."
gsettings set org.gnome.mutter attach-modal-dialogs false