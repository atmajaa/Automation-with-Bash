#!/bin/bash
chrome_start_time=0
chrome_time_limit=60
while true; do
    current_app=$(xdotool getwindowfocus getwindowname)
    current_time=$(date +%s)
    if [[ $current_app == "YouTube - Google Chrome" ]]; then
        if [[ $chrome_start_time -eq 0 ]]; then
            chrome_start_time=$current_time
        fi
        time_spent=$(( (current_time-chrome_start_time) / 60 ))
        if [[ $time_spent -ge $chrome_time_limit ]]; then
            notify-send "Time limit exceed!!" "You have spent $time_spent minutes on Youtube" 
            xdotool getactivewindow windowminimize
        fi
    else
        chrome_start_time=0
    fi
    sleep 10
    done