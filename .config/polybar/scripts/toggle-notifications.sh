#! /bin/bash
set -euo pipefail
IFS=$'\n\t'

if [[ -e /tmp/dunstpaused.tmp ]]; then
    rm /tmp/dunstpaused.tmp
    killall -SIGUSR2 dunst
    notify-send -i notifications_on_white_48x48 "Disturb me 🐵" "Notifications are back up" --urgency low
else
    touch /tmp/dunstpaused.tmp
    notify-send -i notifications_off_white_48x48 "Do not disturb 🙈" "Notifications are turned off" --urgency low
    sleep 10
    killall -SIGUSR1 dunst
fi
