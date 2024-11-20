#! bin/bash

# Assume the public facing interface is public
firewall-cmd --set-default-zone=public

# Services
firewall-cmd --permanent --zone=public --add-port=25 # SMTP
firewall-cmd --permanent --zone=public --add-port=143 # IMAP