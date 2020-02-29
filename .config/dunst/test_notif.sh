#!/usr/bin/env sh

killall dunst

notify-send -i info "Test" "This a low urgency notification" --urgency low
notify-send -i important "Test" "This a normal urgency notifiction" --urgency normal
notify-send -i error "Test" "This a critical urgency notification" --urgency critical
