#! bin/sh

#https://docs.freebsd.org/en/books/handbook/firewalls/

# freeBSD only uses proprietary firewalls

# Enable PF
if $(! sysrc pf_enable | grep -q "YES"); then
    sudo sysrc pf_enable="YES"
fi
# Double check using correct rule file
if $(! sysrc pf_rules | grep -q "/etc/pf.conf"); then
    sudo sysrc pf_rules="/etc/pf.conf"
fi
# Check that rule file is created
if $(! -f /etc/pf.conf); then
    sudo touch /etc/pf.conf
    sudo service pf start
fi

# Enable
sudo pfctl -e

# Clear rule file
echo '' | sudo tee /etc/pf.conf

# Add rules
echo 'block in' | sudo tee -a /etc/pf.conf
echo 'pass out' | sudo tee -a /etc/pf.conf

echo 'pass in quick proto { tcp, udp } to any port { 22, 3306 }' | sudo tee -a /etc/pf.conf

# Flush existing rules, and load newly created rules
sudo pfctl -F all -f /etc/pf.conf

# Print rules
sudo pfctl -s rules