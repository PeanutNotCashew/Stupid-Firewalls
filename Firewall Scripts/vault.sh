#! bin/bash

ufw default deny

# FTP (service) ports
ufw allow 20
ufw allow 21

# SSH, for remote access
ufw allow 22