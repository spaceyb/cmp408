#!/bin/bash

# Simple script to light up the LED's

# Initialise GPIO
sudo gpio -g mode 16 out
sudo gpio -g mode 20 out
sudo gpio -g mode 23 out

# Status of LED's
b_yellow=false
b_red=false
b_green=false

# Status of execution state
running=true

while [ $running = true ]
do
    echo "Choose either 1(Yellow), 2(Green), 3(Red)"
    echo -n "Enter Color: "
    read COLOR

    case $COLOR in
        1)
            if [ $b_yellow = false ]
                then
                    b_yellow=true
                    sudo gpio -g write 23 1
                else
                    b_yellow=false
                    sudo gpio -g write 23 0
            fi
            ;;
        2)
            if [ $b_red = false ]
                then 
                    b_red=true
                    sudo gpio -g write 16 1
                else
                    b_red=false
                    sudo gpio -g write 16 0
                fi
                ;;
        3)
            if [ $b_green = false ]
                then
                    b_green=true
                    sudo gpio -g write 20 1
                else
                    b_green=false
                    sudo gpio -g write 20 1
                fi
                ;;
    esac

    echo -n "Run again? (Y:N):"
    read STATE
    
    if [ $STATE = n ]
        then
            running=false
    fi
done

# Clean up GPIO
if [ $b_yellow = true ]
    then
    sudo gpio -g write 23 0
fi

if [ $b_red = true ]
    then
    sudo gpio -g write 16 0
fi

if [ $b_green = true ]
    then 
    sudo gpio -g write 20 0
fi
