#!/bin/bash

# TODO edit /etc/resolv.conf for DNS resolution before running this command
#systemctl stop systemd-resolved.service && systemctl disable systemd-resolved.service
cd

# General Apps
sudo apt install yt-dlp gelemental

# Android SDK & friends
#sudo apt install adb android-sdk android-sdk-build-tools android-sdk-common

# Wireshark & traffic stuff
# Try out GUI for Nmap (nmapsi4)
sudo apt install -y wireshark wireshark-doc termshark tshark tcpspy

# Sys Admin tools
sudo apt install  -y tree xclip curl htop net-tools mlocate nmap elfutils neofetch ranger

# Firewall & Security stuffs
#sudo apt install firewalld checksec sshpass

# Development tools
sudo apt install -y nasm mc arduino cmake dnsenum bsdgames

# install Vim & Friends
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
sudo apt install vim neovim luarocks ripgrep tmux gopls npm cargo

#Install Virtualbox
#sudo apt install -y virtualbox

#GEF-GDB
sudo apt install gdb
bash -c "$(curl -fsSL https://gef.blah.cat/sh)"

# Install Javascript stuff
# sudo apt install npm
# sudo npm install json ; #  nativefier collects errors if json npm is not installed
# sudo npm install -g nativefier ; # Runs website as desktop application
# nativefier "https://wiki.archlinux.org/" --name "arch_Wiki" ; Builds chromium "App" of the Arch Wiki for easy access of linux documentation



# 6502 Development / Emulator
#sudo apt install cc65 fceux

# CAN communitation software
#sudo apt-get install -y libsdl2-dev libsdl2-image-dev can-utils


# SDR software
#sudo apt install -y rtl-sdr cubicsdr gnuradio gnuradio-dev

# rtl28xxu setup for cheap sdr dongle
#echo 'blacklist dvb_usb_rtl28xxu' | sudo tee – append /etc/modprobe.d/blacklist-dvb_usb_rtl28xxu.conf

# Hardware Monitoring
sudo apt install -y lm-sensors i7z hardinfo psensor

# Bettercap dependencies
#sudo apt install -y build-essential libpcap-dev libusb-1.0-0-dev libnetfilter-queue-dev

# Python stuff
sudo apt install -y python3 python3.10-venv python-is-python3 bpython python3-pip
# Pip doesn't like installing through root FYI
#pip3 install pwntools sympy scapy oathtool
export PATH=$PATH:$HOME/.local/bin

# Circuitpython build tools
sudo add-apt-repository ppa:pybricks/ppa
## These tools are helpfull outside of circuit-python
sudo apt install -y git gh gettext uncrustify

# Docker (check /root/.docker/config.json for privesc)
sudo apt install -y docker.io docker-doc

# Needs permissions for monitoring software
# sudo apt install -y auditd snoopy

# Ngrok setup
#cd ~/Downloads
#wget "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip"
#unzip ngrok* && mv ngrok ~/bin  && cd ~/bin
#./ngrok authtoken 1sAM0Si9t8uRibzsQuJDU22snhN_5hj3sevngEu5oPDa4NNUr

# Doom Emacs setup
#sudo apt install emacs
#emacs &
#git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
#~/.config/emacs/bin/doom install

# Spacevim setup
## Should not be root when this is excecuted
# sudo curl -sLf https://spacevim.org/install.sh | bash
    # curl -sLf https://spacevim.org/install.sh | bash -s -- --uninstall # To uninstall Spacevim

# Starship setup
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# Install colorscripts for the terminal art
cd ~/Git/
git clone https://gitlab.com/dwt1/shell-color-scripts.git
cd shell-color-scripts
sudo make install
# sudo make uninstall # To uninstall
# zsh completion
    # sudo cp completions/_colorscript /usr/share/zsh/site-functions
# Fish completion
    # sudo cp completions/colorscript.fish /usr/share/fish/vendor_completions.d

# Install Radare2
#git clone https://github.com/radareorg/radare2
#radare2/sys/install.sh
    # Run 'make CS_COMMIT_ARCHIVE=1' to download capstone with wget/curl instead of git

# Install Blender & Davinci Resolve
sudo apt install blender
# Davinci Dependants
# sudo apt install libssl3 ocl-icd-opencl-dev fakeroot xorriso
# Install Resolve From "https://www.blackmagicdesign.com/products/davinciresolve/"
# Extract to ~/bin/
