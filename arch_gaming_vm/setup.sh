# Setup script for Arch Linux Gaming VM
# This script assumes it's being run on a Virtual Box virtual machine.
# This script also assumes it's being run with superuser privileges.

# Update system
echo "Updating system..."
pacman -Syu

# Manual Pages viewer
echo "Installing man-db..."
pacman -S man-db

# Mesa
echo "Installing Mesa..."
pacman -S mesa

# mesa-utils
echo "Installing mesa-utils..."
pacman -S mesa-utils

# Gnome Desktop Manager
# (commented out for now due to crashes)
#echo "Installing Gnome Desktop Manager..."
#pacman -S gdm

#echo "Enabling gdm"
#systemctl enable gdm.service

# Simple Desktop Display Manager
echo "Installing Simple Desktop Display Manager..."
pacman -S sddm

echo "Enabling Simple Desktop Display Manager..."
systemctl enable sddm

# Gnome Desktop
echo "Installing Gnome..."
pacman -S gnome

# Gamescope
echo "Installing gamescope..."
pacman -S gamescope

# Git
echo "Installing Git..."
pacman -S git

# VSCode
echo "Installing VSCode..."
pacman -S code

# .NET
echo "Installing .NET..."
pacman -S dotnet-sdk

# Firefox
echo "Installing Firefox..."
pacman -S firefox

# Godot (Mono)
echo "Installing godot-mono..."
pacman -S godot-mono

# Flatpak
echo "Installing Flatpak..."
pacman -S flatpak

# VirtualBox Guest Utils
echo "Installing VirtualBox Guest Utils..."
pacman -S virtualbox-guest-utils

echo "Enabling VBoxService so VirtualBox Guest Utils is started after boot..."
systemctl enable vboxservice.service

# ProtonVPN
echo "Installing ProtonVPN..."
pacman -S proton-vpn-gtk-app

# Done.
echo "Done. You may now reboot."
