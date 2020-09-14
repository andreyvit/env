# Setting up an Ubuntu server

`sshconfig`:

    Host d1
      User andreyvit
      HostName xxx.xxx.xxx.xxx
      ControlPath ~/.ssh/master-%r@%h:%p

Create user:

    apt-get update
    apt-get upgrade
    apt-get install mosh
    hostnamectl set-hostname d1.tarantsov.com

    apt-get install figlet
    figlet 'dee one' | tee /etc/motd

    $ ssh root@d1
    adduser andreyvit   # refuse to set a password
    addgroup admin
    adduser andreyvit admin

    VISUAL=vim visudo
    # change this:
    %admin ALL=(ALL) ALL
    %sudo   ALL=(ALL:ALL) ALL
    # into this:
    %admin ALL=(ALL) NOPASSWD:ALL
    %sudo   ALL=(ALL:ALL) NOPASSWD:ALL

    su andreyvit
    mkdir -m700 .ssh
    cat >.ssh/authorized_keys
    chmod 600 .ssh/authorized_keys

Verify that you can login:

    $ ssh d1

Disable root and password logins:

    sudo perl -i -pe 's/^PermitRootLogin yes$/PermitRootLogin no/; s/^#PasswordAuthentication yes$/PasswordAuthentication no/' /etc/ssh/sshd_config
    sudo service ssh restart

    sudo apt-get install fail2ban

    sudo apt-get install unattended-upgrades
    sudo dpkg-reconfigure unattended-upgrades
    sudo perl -i -pe 's!^//Unattended-Upgrade::Mail "root";$!Unattended-Upgrade::Mail "root";!' /etc/apt/apt.conf.d/50unattended-upgrades
    sudo perl -i -pe 's!^APT::Periodic::AutocleanInterval "0";$!APT::Periodic::AutocleanInterval "7";!' /etc/apt/apt.conf.d/10periodic

    sudo apt-get install apt-listchanges
    sudo perl -i -pe 's!^which=news$!which=both!' /etc/apt/listchanges.conf

    sudo ufw allow ssh
    sudo ufw allow http
    sudo ufw allow https
    sudo ufw allow 500/udp
    sudo ufw allow 4500/udp
    sudo ufw allow 1701/udp
    sudo ufw allow 60000:61000/udp  # mosh
    sudo ufw allow proto esp from any to any
    sudo ufw enable

    sudo apt-get install mailutils
    sudo apt-get install postfix

    sudo dpkg-reconfigure postfix
    echo 'root: andreyvit@gmail.com' | sudo tee -a /etc/aliases
    sudo newaliases
    sudo service postfix restart

    sudo apt-get install logwatch

    sudo dpkg-reconfigure tzdata
    sudo apt-get install ntp

    sudo apt-get install glances
