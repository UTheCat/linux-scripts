# Setup script for Arch Linux Gaming VM
# This script assumes it's being run on a VMWare virtual machine.

# Update system
echo "Updating system..."
sudo pacman -Syu

# Manual Pages viewer
echo "Installing man-db..."
sudo pacman -Sy man-db

# Gnome Desktop Manager
echo "Installing Gnome Desktop Manager..."
sudo pacman -Sy gdm
echo "Enabling gdm"
sudo systemctl enable gdm.service

# Gamescope
echo "Installing gamescope..."
sudo pacman -Sy gamescope

# Git
echo "Installing Git..."
sudo pacman -Sy git

# VSCode
echo "Installing VSCode..."
sudo pacman -Sy code

# .NET
echo "Installing .NET..."
sudo pacman -Sy dotnet-sdk

# Firefox
echo "Installing Firefox..."
sudo pacman -Sy firefox

# Godot (Mono)
echo "Installing godot-mono..."
sudo pacman -Sy godot-mono

# Flatpak
echo "Installing Flatpak..."
sudo pacman -Sy flatpak

# open-vm-tools (Open VMWare Tools)
echo "Installing open-vm-tools..."
sudo pacman -Sy open-vm-tools
echo "Enabling open-vm-tools"
sudo systemctl enable open-vm-tools

# ProtonVPN
echo "Installing ProtonVPN..."
sudo pacman -Sy proton-vpn-gtk-app

# Sober (Runs Roblox on Linux)
echo "Installing Sober..."
flatpak install -u org.vinegarhq.Sober

# User directories
echo "Making ~/bin directory..."
mkdir ~/bin

echo "Making ~/repos directory..."
mkdir ~/repos

# Git config
echo "Configuring Git..."
git config --global user.name "Anonymous"
git config --global user.email "<>"

# Done.
echo "Done. Now rebooting..."
reboot
