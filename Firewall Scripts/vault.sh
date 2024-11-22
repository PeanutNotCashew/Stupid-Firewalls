#! bin/bash

# Note: Debian doesn't seem to have any firewalls by default

if ! systemctl list-unit-files --type=service | grep -q "ufw.service"
then # Install if not already installed
    sudo apt install ufw
else # Reset if already installed
    sudo ufw reset
fi
# Turn UFW on
sudo ufw enable

# Whitelist mode
sudo ufw default deny

# FTP (service) ports
sudo ufw allow 20
sudo ufw allow 21

# SSH, for remote access
sudo ufw allow 22