#!/bin/sh

echo "Launching terminal on Super+t ..."
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>t']"

echo "Showing home directory on Super+Home ..."
gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>home']"

echo "Screen lock on Super+l ..."
gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "['<Super>l']"

echo "Minimizing a window on Super+down ..."
gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>down']"

echo "Toggle 'maximized' state for windows on Super+up ..."
gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Super>Up']"

echo "Switch applications on Super+Tab ..."
gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Super>Tab']"

echo "Switch windows on Alt+Tab ..."
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"

echo "Switch input source on Alt+Space ..."
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Alt>space']"
echo "While activating the window menu by Super+Space ..."
gsettings set org.gnome.desktop.wm.keybindings activate-window-menu "['<Super>space']"

cat << EOF

Now setting Super+1..9 to switch to specific virtual workspaces,
and Ctrl+Super+left/right to switch to the left/right virtual workspace like in Windows 11.

EOF

for i in $(seq 1 9)
do
  gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-${i} "['<Super>${i}']"
done

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Ctrl><Super>Left', '<Super>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Ctrl><Super>Right', '<Super>Left']"


cat << EOF

Also using Ctrl+Super+s to toggle the window's "sticky"ness (presence on all virtual workspaces).

This allows you to move the window anywhere you want by making it sticky first by pressing Ctrl+Super+s,
switching to a different virtual workspace, and making it non-sticky again but pressing Ctrl+Super+s again.

EOF

gsettings set org.gnome.desktop.wm.keybindings toggle-on-all-workspaces "['<Ctrl><Super>s']"

echo "'Caps Lock' is mostly unused as SCREAMING is not in vogue. Re-using it as a Compose key ..."
gsettings set org.gnome.desktop.input-sources xkb-options "['compose:caps']"

