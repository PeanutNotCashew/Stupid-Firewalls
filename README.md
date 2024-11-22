# Firewalls for CCDC Mini-Comp (2024)
Contains hardcoded firewall rules for Linux boxes

# Linux Boxes:
- propaganda (Ubuntu 22.04): Docker/HTTP and SSH
- wiretap (Rocky 9): IMAP/SMTP
- vault (Debian 12): FTP
- spy (FreeBSD): MySQL

Note: vault and spy are both remote

# Getting it on the box:
1. Download git: `sudo apt install git`
2. Clone repo: `https://github.com/PeanutNotCashew/Stupid-Firewalls.git`
3. Move into file: `cd 'Stupid-Firewalls/Firewall Scripts'`
4. Pick your poison: `bash [file name]`