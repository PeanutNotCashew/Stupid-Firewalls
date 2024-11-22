# Firewalls for CCDC Mini-Comp (2024)
Contains hardcoded firewall rules for Linux boxes

Progress:
- Vault: complete
- Propaganda: started
- Wiretap: complete
- Spy: my nemesis (might not get this)

# Linux Boxes:
- propaganda (Ubuntu 22.04): Docker/HTTP and SSH
- wiretap (Rocky 9): IMAP/SMTP
- vault (Debian 12): FTP
- spy (FreeBSD): MySQL

Note: vault and spy are both remote

# Getting it on the box:
1. Download git:
    - Debian, Ubuntu: `sudo apt install git`
    - Rocky: `dnf install git`
2. Clone repo: `git clone https://github.com/PeanutNotCashew/Stupid-Firewalls.git`
3. Move into file: `cd 'Stupid-Firewalls/Firewall Scripts'`
4. Pick your poison: `bash [file name]`