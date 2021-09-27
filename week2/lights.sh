#!/bin/bash

# Simple script to light up the LED's

# Initialise GPIO
sudo gpio -g mode 16 out
sudo gpio -g mode 20 out
sudo gpio -g mode 23 out

echo -n "Choose either 1(Yellow), 2(Green), 3(Red)\n"
echo -n "Enter Color: "
read COLOR

case $COLOR in
    1)
        echo -n "Yellow"
        sudo gpio -g write 23 1
        ;;
    2)
        echo -n "Green"
        sudo gpio -g write 16 1
        ;;

    3)
        echo -n "Red"
        sudo gpio -g write 20 1
        ;;
esac


