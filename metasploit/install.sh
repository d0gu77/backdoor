#!/bin/bash

# Snap yüklü değilse, Snap'ı yükleyelim
if ! command -v snap &> /dev/null
then
    echo "Snap is not installed. Installing Snap..."
    sudo apt update
    sudo apt install snapd -y
else
    echo "Snap is already installed."
fi

# Metasploit Framework'in Snap sürümünü yükleyelim
echo "Installing Metasploit Framework via Snap..."
sudo snap install metasploit-framework

# Yükleme sonrası kontrol
if snap list metasploit-framework &> /dev/null
then
    echo "Metasploit Framework installed successfully via Snap."
else
    echo "Failed to install Metasploit Framework via Snap."
fi
