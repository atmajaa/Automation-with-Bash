#!/bin/bash
APP_NAME="Youtube - Google Chrome"
current_app=$(xdotool getwindowfocus getwindowname)
notification="Time limit exceed!"

if [[ $current_app == $APP_NAME ]];
then
notify-send "$notification"
fi