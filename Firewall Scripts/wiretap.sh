#! bin/bash

if ! systemctl list-unit-files --type=service | grep -q "firewalld.service"
then # Install if not already installed
    dnf install firewalld
    systemctl enable firewalld
fi

systemctl start firewalld

# Assume the public facing interface is public
firewall-cmd --set-default-zone=public

# Services
firewall-cmd --permanent --zone=public --add-port=25/tcp # SMTP
firewall-cmd --permanent --zone=public --add-port=143/tcp # IMAP

# Reload
firewall-cmd --reload

# Display rules for manually removing extra rules
# Only the public zone should be active
firewall-cmd --list-all

# To remove, run either:
# firewall-cmd --zone=public --remove-service=[service]
# firewall-cmd --zone=public --remove-port=[port]/[protocol]