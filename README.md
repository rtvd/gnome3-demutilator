# gnome3-demutilator

Gnome 3 comes packed with keyboard shortcuts and various features.
However, not every feature or keyboard shortcut brings value.
Unfortunately, in case of Gnome 3, the default settings are exceptionally poor.

This repo is a collection of scripts.

## [wipe-out-shortcuts.sh](wipe-out-shortcuts.sh)

This script wipes out most of the shortcuts.

This is important, as Gnome's default shortcuts often get into conflict with shortcuts of other applications, while
bringing almost no value whatsoever. Running this script is a good starting point.

## [set-useful-settings.sh](set-useful-settings.sh)

This script configures a few important shortcuts to my liking.

In particular, it does the following:

* makes the keyboard layout switcher do it on `Alt+space`;
* configures sensible shortcuts to switch between virtual workspaces and move windows between them;
* defines launchers like `Super+t` for launching a terminal;
* sets shortcuts like `Super+up` and `Super+down` to toggle maximization state and to minimize windows.

## [set-useful-settings.sh](set-useful-settings.sh)

This script sets various settings unrelated to shortcuts, such as:

* Disables a terribly annoying 'attach modal dialogs' feature;
* Configures a fixed number of virtual workspaces and makes them be global (not display-specific);
* Disables animations and hot corners.
