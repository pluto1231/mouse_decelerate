# Mouse decelerate shell script

When connecting a high DPI mouse to Ubuntu Linux, the mouse pointer tend to move very fast even when pointer speed is set to lowest in system settings, this script aims to slow down mouse pointer speed even more on Linux using xinput

You might need to change DEV_NAME if your device is identified as something else, you can run this command to identify your device's name:

xinput list

Sometimes a single mouse may be identified as 2 devices by xinput, in this case the script will program all identified devices

The decelerate values are my personal perference, it can be tweaked to your liking
