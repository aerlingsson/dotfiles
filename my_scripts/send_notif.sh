#!/bin/bash
echo "notify-send '$1'" | at now + $2 minutes
echo "paplay /usr/share/sounds/gnome/default/alerts/drip.ogg" | at now + $2 minutes
