#!/bin/bash

# Raspbian CLI minimal version from Raspberry Pi Imager
# Default user: pi 
#         pass: raspberry

# Configure CLI (Optional)
sudo dpkg-reconfigure console-setup

# Configure Raspberry Pi
# Setup Keyboard and Langugae, Networking, SSH, ...
sudo raspi-config

# Alternative network configuration
# Example in root folder
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install ranger -y
sudo apt-get install default-jdk -y
sudo apt-get install tomcat9 -y



# Docker?
# Git?
# Python?