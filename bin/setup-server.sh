#!/bin/bash
set -exo pipefail

if test $EUID -ne 0; then
   echo "This script must be run as root" 
   exit 1
fi

# apt-get install -y software-properties-common
# apt-get update
apt-get dist-upgrade -y

apt-get install -y fail2ban unattended-upgrades logwatch zsh
perl -i -pe 's!^/usr/sbin/logwatch .*!/usr/sbin/logwatch --output mail --mailto andrey@tarantsov.com --detail high!' /etc/cron.daily/00logwatch

perl -i -pe 's/\) ALL/) NOPASSWD:ALL/' /etc/sudoers

perl -i -pe 's/^#?PasswordAuthentication .*$/PasswordAuthentication no/' /etc/ssh/sshd_config
service ssh restart

apt-get install -y ufw
grep -q '^IPV6=yes$' /etc/default/ufw
ufw allow 22
ufw allow 80
ufw allow 443
ufw --force enable

apt-get install -y build-essential git screen tree

apt-get install -y libglu1-mesa libxi-dev libxmu-dev libopenblas-dev liblapack-dev gfortran
apt-get install -y python-pip python-dev python-numpy python-scipy

# Instructions from:
#     http://www.linuxandubuntu.com/home/how-to-install-latest-nvidia-drivers-in-linux
# For the latest version number, check under "## Current Status" on:
#     https://launchpad.net/~graphics-drivers/+archive/ubuntu/ppa
# Before upgrading the number here, you need to manually run:
#     apt-get purge 'nvidia*'
# Check installation:
#     lsmod | grep nvidia
# apt-get install -y nvidia-381

if ! nvidia-smi; then
    echo "Sadly, you need to install NVIDIA drivers yourself:"
    echo
    echo "    http://www.nvidia.com/Download/index.aspx"
    echo
    echo "Download then run e.g.:"
    echo
    echo "    sh NVIDIA-Linux-x86_64-375.39.run"
fi

if ! test -d /usr/local/cuda-8.0/bin; then
    # https://github.com/lwneal/install-keras
    wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda_8.0.61_375.26_linux-run
    wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/patches/2/cuda_8.0.61.2_linux-run

    echo "Sadly, you need to install CUDA yourself:"
    echo
    echo "    https://developer.nvidia.com/cuda-downloads"
    echo "    https://askubuntu.com/questions/799184/how-can-i-install-cuda-on-ubuntu-16-04"
    echo
    echo "IMPORTANT: answer NO to 'Install NVIDIA Accelerated Graphics Driver' prompt."
    echo
    echo "Now run:"
    echo "    sh cuda_8.0.61_375.26_linux-run"
    echo "    sh cuda_8.0.61.2_linux-run"
    exit 1
fi


################################################################################
# User: andreyvit

test -d /home/andreyvit || adduser --disabled-password --gecos "Andrey Tarantsov,,," --shell /usr/bin/zsh andreyvit
usermod -aG sudo andreyvit

mkdir -p /home/andreyvit/.ssh
test -f /home/andreyvit/.ssh/authorized_keys || echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC+0QKFkwIsWe1M2vGpC7muP18C1BcYd8q2b0p/DQSjW2eT43/TnzZk2OQa8d4AfZjnkEYjZOCVYQF4/U0+EQsHW45c+SX2mNIDdU/IpR/F/GtvJogJEFvib+mIYp2ED9N4IYiwHqS0ygI32pmObsPTa0j3AsO0ExuOzseE7cNPFy0iDxj85gT+zp/D5pZcG5n64UwAyyGHrzHwGsOfK6EjgBVpD3Y5PqLS/4krB3ynSeSptmPLzP/v+tWgLTxYAUlcxr9p7JrC2fBYDlbFxE/7pyryrguNf4IkftQLHJWz3PQ++wNCeIqFRBeQoWBbhOOwF4ZNNArSLEuJFzM+WzKBpkHzRtMifJCDx3CNs8YeSLsAvtU/VEoouH1Cco4rtfiuwsCBcNM25d7eWSnG4h9loTTq4AAWxHddQ4KKGiKnlpBn3/W80XG1LPzMuWoXbYn7gxHiEtGz9IXw/ubvNn/96esfXinzwky0Zl4r1LS61XEakRTmoyO2UXWztePdqPRU9yC2fMbAFbWJDi2s/BvbKlVvH/7w4OpV2CXv5BG/vihBzXXpixBN0x0pZz2pdUE9y9FPGGI/r22Zu6OOr2O6kWbC2hlDKtYLVGavknXNS3/7k4VFICH6wKHk9XOLT52rklt3399bQAZ3t7y5x4HoHvt2+GXOsH6GV3aaRMZ49Q== andreyvit@imac2016jun" >> /home/andreyvit/.ssh/authorized_keys
chown -R andreyvit:andreyvit /home/andreyvit/.ssh
chmod 700 /home/andreyvit/.ssh
chmod 600 /home/andreyvit/.ssh/authorized_keys

if ! test -f /home/andreyvit/.ssh/id_rsa; then
    sudo -Hu andreyvit ssh-keygen -q -t rsa -b 4096 -C 'andreyvit@grief' -N "" -f /home/andreyvit/.ssh/id_rsa

    echo
    echo "Please configure the following public key in GitHub (andreyvit):"
    echo
    cat /home/andreyvit/.ssh/id_rsa.pub
    echo
    read -p "Press ENTER when ready: "
fi

test -d /home/andreyvit/.oh-my-zsh || sudo -Hu andreyvit sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd /home/andreyvit
test -d /home/andreyvit/env || sudo -Hu andreyvit bash -c 'cd; git clone git@github.com:andreyvit/env.git'
sudo -Hu andreyvit bash -c 'cd ~/env; make all-linux'

echo "SUCCESS."