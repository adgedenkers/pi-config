#!/bin/bash
# -------------------------------------------------------
# Setup Headless Raspberry Pi (with built-in WiFi)
# -------------------------------------------------------
#             _            _                 
#   __ _   __| | ___ _ __ | | _____ _ __ ___ 
#  / _` | / _` |/ _ \ '_ \| |/ / _ \ '__/ __|
# | (_| || (_| |  __/ | | |   <  __/ |  \__ \
#  \__,_(_)__,_|\___|_| |_|_|\_\___|_|  |___/
# adge.denkers@gmail.com | https://github.com/adgedenkers
# -------------------------------------------------------
# file name: setup.headless.sh
# location: /Users/adge/pi/_pi_config/
# date: 2020-02-09
# -------------------------------------------------------

echo "Setting up a headless Pi"

# setup variables
mac_root="/Users/adge/pi/_pi_config"
pi_root="/Volumes/boot"

# config file
config_file="$pi_root/config.txt"
# wpa file
wpa_file="$mac_root/wpa_supplicant.conf"


# create empty ssh file
touch "$pi_root/ssh"

mv "$pi_root/config.txt" "$pi_root/config.txt.bak"

echo "Moved the original config file"

echo "Created a new, empty config file"
touch "$pi_root/config.txt"



echo ""
echo "Setting up our own configuration"

echo "Adge's Raspberry Pi Configuration File" >> /Volumes/boot/config.txt
echo "2019-06-16" >> /Volumes/boot/config.txt
echo "adge.denkers@gmail.com" >> /Volumes/boot/config.txt
echo "" >> /Volumes/boot/config.txt

echo "# For more options and information see" >> /Volumes/boot/config.txt
echo "# http://rpf.io/configtxt" >> /Volumes/boot/config.txt
echo "" >> /Volumes/boot/config.txt
echo "# Enable i2c and spi (Adge)" >> /Volumes/boot/config.txt
echo "dtparam=i2c_arm=on" >> /Volumes/boot/config.txt
echo "dtparam=i2s=on" >> /Volumes/boot/config.txt
echo "dtparam=spi=on" >> /Volumes/boot/config.txt
echo "" >> /Volumes/boot/config.txt
echo "# Enable UART (Adge)" >> /Volumes/boot/config.txt
echo "enable_uart=1" >> /Volumes/boot/config.txt 
echo "# Enable Audio (Adge)" >> /Volumes/boot/config.txt
echo "dtparam=audio=on" >> /Volumes/boot/config.txt

echo ""
echo "Setup Complete"