#!/bin/bash

echo "⏻"

if [ "$BLOCK_BUTTON" = "1" ]; then
    confirm=$(echo -e "Shutdown\nSuspend\nHibernate\nReboot\nLock\nExit" | dmenu -i -p "Select an action:")

    case "$confirm" in
        "Shutdown")
            systemctl poweroff
            ;;
        "Suspend")
            systemctl suspend
            ;;
        "Hibernate")
            systemctl hibernate
            ;;
        "Reboot")
            systemctl reboot
            ;;
        "Lock")
            i3lock
            ;;
        "Exit")
            exit 0
            ;;
        *)
            exit 0
            ;;
    esac
fi
