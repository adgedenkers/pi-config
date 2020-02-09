#!/bin/bash
# -------------------------------------------------------
# Setup RaspberryPi Wifi and SSH
# -------------------------------------------------------
#             _            _                 
#   __ _   __| | ___ _ __ | | _____ _ __ ___ 
#  / _` | / _` |/ _ \ '_ \| |/ / _ \ '__/ __|
# | (_| || (_| |  __/ | | |   <  __/ |  \__ \
#  \__,_(_)__,_|\___|_| |_|_|\_\___|_|  |___/
# adge.denkers@gmail.com | https://github.com/adgedenkers
# -------------------------------------------------------
# file name: setup-boot.sh
# location: /Users/adge/pi/_pi_config/
# date: 2019-04-04
# -------------------------------------------------------

# ##############
# NOTE: This is to be executed after the Pi OS has been
# flashed to the SD Card. The SD card must be removed,
# then re-inserted in the Mac, and then run this script.
# 
# With the SD inserted in your Mac/Linux box, execute:
# $ ~/pi/_pi_config/setup-boot.sh
#
# Once script has finished, eject the SD card, and
# insert it into the Pi, and power on the Pi.
# Wait 30-90 seconds for it to appear on WiFi router,
# note its IP address, and then you can SSH into it
# using the command below. 
# Username: `pi`    Password: `raspberry`
#
# $ ssh pi@10.4.1.XYZ 
# ##############


# setup variables
home_root="/Users/adge/pi/_pi_config"
pi_root="/Volumes/boot"
pi_config_file="/Volumes/boot/config.txt"

# wpa file
wpa_file="$home_root/wpa_supplicant.conf"

cp $wpa_file "$pi_root/wpa_supplicant.conf"

cp "$pi_root/config.txt" "$pi_root/config.txt.bak"

# create empty ssh file
touch "/Volumes/boot/ssh"

# add uart to config.txt
echo "enable_uart=1" >> $pi_config_file

echo ""
echo "Setting up our own configuration"

echo "Adge's Raspberry Pi Configuration File" >> $pi_config_file
echo "2020-02-09" >> $pi_config_file
echo "adge.denkers@gmail.com" >> $pi_config_file
echo "" >> $pi_config_file

echo "# For more options and information see" >> $pi_config_file
echo "# http://rpf.io/configtxt" >> $pi_config_file
echo "" >> $pi_config_file
echo "# Enable i2c and spi (Adge)" >> $pi_config_file
echo "dtparam=i2c_arm=on" >> $pi_config_file
echo "dtparam=i2s=on" >> $pi_config_file
echo "dtparam=spi=on" >> $pi_config_file
echo "" >> $pi_config_file
echo "# Enable UART (Adge)" >> $pi_config_file
echo "enable_uart=1" >> $pi_config_file 
echo "# Enable Audio (Adge)" >> $pi_config_file
echo "dtparam=audio=on" >> $pi_config_file

echo ""
echo "Setup Complete"