#!/bin/sh

cat << EOF

Dash-to-Dock extension annoyingly grabs shortcuts like Super+1, Super+2, etc., and uses them to select or launch applications in the dock.
It seems exceptionally useless, while it also steals useful shortcuts.

Wiping out annoying shortcuts of the 'dash-to-dock' extension, but not wiping the one which switches the focus to it ...
EOF

for type in app-ctrl-hotkey app-hotkey app-shift-hotkey
do
  for i in $(seq 1 10)
  do
    gsettings set org.gnome.shell.extensions.dash-to-dock ${type}-${i} []
  done
done
echo "DONE"

cat << EOF

If you do need to wipe that shortcut, run the following command:

$ gsettings set org.gnome.shell.extensions.dash-to-dock shortcut []

Meanwhile, the shortcut is configured as:
EOF
gsettings get org.gnome.shell.extensions.dash-to-dock shortcut
echo ""

cat << EOF

Now wiping out many keybindings of Gnome 3 ...
EOF

for i in $(seq 1 9)
do
  gsettings set org.gnome.shell.keybindings switch-to-application-${i} []
  gsettings set org.gnome.shell.keybindings open-new-window-application-${i} []
done

for name in screenshot screenshot-window shift-overview-down shift-overview-up show-screen-recording-ui
do
  gsettings set org.gnome.shell.keybindings ${name} []
done

for i in $(seq 1 12)
do
  gsettings set org.gnome.mutter.wayland.keybindings switch-to-session-${i} []
done
gsettings set org.gnome.mutter.wayland.keybindings restore-shortcuts []

for name in begin-move begin-resize cycle-group cycle-group-backward cycle-panels cycle-panels-backward \
    cycle-windows cycle-windows-backward show-desktop switch-applications-backward switch-group switch-group-backward \
    move-to-monitor-up move-to-monitor-down move-to-monitor-left move-to-monitor-right switch-windows-backward \
    panel-main-menu switch-input-source-backward switch-panels switch-panels-backward
do
  gsettings set org.gnome.desktop.wm.keybindings ${name} []
done

for i in $(seq 1 12)
do
  gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-${i} []
  gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-${i} []
done
for i in up down left right last
do
  gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-${i} []
  gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-${i} []
done

cat << EOF

Getting rid of a 'restore window' shortcut set by the 'tiling assistant' ...

EOF
gsettings set org.gnome.shell.extensions.tiling-assistant restore-window []


echo "DONE"