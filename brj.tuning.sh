#!/bin/sh

exit 0

dconf write /org/gnome/settings-daemon/peripherals/touchpad/scroll-method "'two-finger-scrolling'"

gsettings set org.pantheon.desktop.slingshot icon-size 48
gsettings set org.pantheon.desktop.slingshot columns 4

#gsettings set org.pantheon.desktop.gala.keybindings switch-input-source "['<Alt>Shift_L', '<Alt>Shift_R']"
#gsettings set org.pantheon.desktop.gala.keybindings switch-input-source "['<Alt>Shift_L', '<Alt>Shift_R', '<Shift>Alt_L', '<Shift>Alt_R']"
gsettings set org.pantheon.desktop.gala.keybindings switch-input-source "['<Ctrl>Shift_L', '<Ctrl>Shift_R', '<Shift>Control_L', '<Shift>Control_R']"

# caps geekly
# gsettings set org.pantheon.desktop.gala.keybindings switch-input-source "['Caps_Lock']"

gsettings set org.pantheon.desktop.wingpanel auto-adjust-alpha false
gsettings set org.pantheon.desktop.wingpanel background-alpha 0.2
killall wingpanel

