#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar pam1 2>&1 | tee -a /tmp/polybar.log & disown
polybar pam2 2>&1 | tee -a /tmp/polybar.log & disown
# polybar pam3 2>&1 | tee -a /tmp/polybar.log & disown
polybar pam4 2>&1 | tee -a /tmp/polybar.log & disown
polybar pam5 2>&1 | tee -a /tmp/polybar.log & disown
# polybar pam6 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
