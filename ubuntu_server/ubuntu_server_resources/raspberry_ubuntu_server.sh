#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y

# sudo dpkg-reconfigure keyboard-configuration
# 105 Generic 

# Check status
# SSH
# sudo systemctl status ssh
# sudo uwf allow ssh

# Add user
# sudo adduser <username>
# sudo usermod -aG sudo <username>
# sudo su <username>

# Hostname
# sudo nano /etc/hostname
# sudo nano /etc/hosts
 
# Networking
# ls /sys/class/net
# sudo nano /etc/netplan/50-cloud-init.yaml

###############################################
# network:
#    ethernets:
#        eth0:
#            dhcp4: true
#            optional: true
#    version: 2
#    wifis:
#        wlan0:
#            dhcp4: true
#            optional: true
#            access-points:
#                <SSID>:
#                    password: <password>
#################################################

# sudo systemctl start wpa_supplicant
# sudo netplan generate
# sudo netplan apply
 


# Envoirement
sudo apt-get install git -y
sudo apt-get install default-jdk -y
# Utility
sudo apt-get install ranger -y

# Connectivity
sudo apt-get install openssh-server -y
sudo apt-get install net-tools wireless-tools -y

# Servers
# Windows hosts file -> (admin) notepad C:\\Windows\System32\drivers\etc\hosts
sudo apt install samba
mkdir /home/<username>/sambashare/
sudo nano /etc/samba/smb.conf

########################################
# At the EOF
# [sambashare]
#     comment = Samba on Ubuntu
#     path = /home/username/sambashare
#     read only = no
#     browsable = yes
########################################

sudo service smbd restart
sudo ufw allow samba
# sudo smbpasswd -a <username>