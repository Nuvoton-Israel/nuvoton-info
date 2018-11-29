#!/bin/sh

###################################################
# commands to operate/read from Poleg peripherals #
###################################################

# if you are using a fan connect it to J24 FAN3
# For fan power supply connect a 5V or 12V (depends on your fan) to J9 Floppy PWR
# You can connect P1 5V (quite near the PWR jumper) to J9 Floppy PWR

# PWM5 is called by SW pwm6 on FAN3 pin 4
# PWM6 is called by SW pwm7 on green LED
# PWM7 is called by SW pwm8 on red   LED 
echo 100 > /sys/class/hwmon/hwmon2/pwm6
echo 255 > /sys/class/hwmon/hwmon2/pwm6
echo 100 > /sys/class/hwmon/hwmon2/pwm7
echo 100 > /sys/class/hwmon/hwmon2/pwm8

# FAN3 is called by SW fan4_input on FAN3 pin 3
cat /sys/class/hwmon/hwmon2/fan*_input

# GPIO 146 is the green LED (muxed with PWM6)
# GPIO 147 is the red   LED (muxed with PWM7)
echo 146 > /sys/class/gpio/export            # Allocate GPIO146 in sysfs
echo out > /sys/class/gpio/gpio146/direction # Set pin direction =out
echo 1 > /sys/class/gpio/gpio146/value       # Set pin value =1 
echo 0 > /sys/class/gpio/gpio146/value       # Set pin value =0

# i2c
# There are 2 LM devices on board LM75 and TMP100
i2cdetect -y 1   # this will scan all addresses on channel 1
i2cdetect -y 2   # this will scan all addresses on channel 2
cat /sys/class/hwmon/hwmon*/temp1_input # this will read all our temperature sensors

# ADC test
# You can connect to one or more of ADC pins on J25 any voltage up-to 2V
cat /sys/bus/iio/devices/iio:device*/in_voltage*_raw  # decimal raw voltage

# USB - Insert DiskOnKey 
lsusb

# SPI Flash - SPI0(MTD0-9),SPI3(MTD10-11)
cat /proc/partitions
cat /proc/mtd
