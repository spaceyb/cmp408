#!/usr/bin/env python3

import time
from gpiozero import LED

# Set GPIO18 and GPIO23
red = LED(18)
yellow = LED(23)

for i in range(4):
    red.on()
    yellow.on()

    time.sleep(1)

    red.off()
    yellow.off()

    time.sleep(1)


