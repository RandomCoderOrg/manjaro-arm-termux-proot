#!/usr/bin/env bash

# sudo check
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if command -v python3 &>/dev/null; then
    echo "Python3 is already installed"
else
    echo "Installing Python3"
    pacman -Syu
    pacman -S python3
fi

if [ -f /bin/systemctl ]; then
    echo "installing systemctl -> /bin/systemctl"
    cat systemctl > /bin/systemctl
    echo "Done..."
fi