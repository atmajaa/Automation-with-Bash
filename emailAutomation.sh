#!/bin/bash
recipient="aatmajapitale@gmail.com"
subject="Automated test email"
body="Hello I am learning bash. This is automated test mail. Hope you have a nice day"
notification="Email sent"
echo "$body" | ssmtp "$recipient"
notify-send $notification