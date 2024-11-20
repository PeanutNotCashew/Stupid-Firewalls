#! bin/bash

ufw default deny

# Allow services
ufw allow 80
ufw allow 22