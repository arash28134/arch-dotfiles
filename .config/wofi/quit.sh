#!/usr/bin/env bash

choice=$(printf "Lock\nLogout\nReboot\nShutdown" | wofi -d)
if [[ $choice == "Lock" ]];then
    bash ~/.config/system_scripts/wayland_session_lock
elif [[ $choice == "Logout" ]];then
    pkill -KILL -u "$USER"
elif [[ $choice == "Reboot" ]];then
    systemctl reboot
elif [[ $choice == "Shutdown" ]];then
    systemctl poweroff
fi
