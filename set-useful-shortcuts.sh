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

Now setting Ctrl+Super+left/right/1..9 to switch to virtual workspaces,
  and Shift+Ctrl+Super+left/right/1..9 to move windows to other virtual workspaces ...

EOF

for i in $(seq 1 9)
do
  gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-${i} "['<Shift><Ctrl><Super>${i}']"
  gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-${i} "['<Ctrl><Super>${i}']"
done

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Shift><Ctrl><Super>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Ctrl><Super>Left']"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Shift><Ctrl><Super>Right']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Ctrl><Super>Right']"

echo "'Caps Lock' is mostly unused as SCREAMING is not in vogue. Re-using it as a Compose key ..."
gsettings set org.gnome.desktop.input-sources xkb-options "['compose:caps']"

