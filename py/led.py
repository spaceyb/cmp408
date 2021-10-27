#!/usr/bin/env python3

import time
from gpiozero import LED

# Set the red LED to GPIO18(Pin12) 
# Set the yellow LED to GPIO23(Pin 16)
red = LED(18)
yellow = LED(23)
print("Red LED on")
red.on()

print("Wait for one second")
time.sleep(1)

print("LED off")
red.off()

print("Yellow LED on")
yellow.on()

print("Wait for one second")
time.sleep(1)

print("LED off")
yellow.off()
