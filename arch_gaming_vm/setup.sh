# Setup script for Arch Linux Gaming VM
# This script assumes it's being run on a VMWare virtual machine.
# This script also assumes it's being run with superuser privileges.

# Update system
echo "Updating system..."
pacman -Syu

# Manual Pages viewer
echo "Installing man-db..."
pacman -Sy man-db

# Mesa
echo "Installing Mesa..."
pacman -Sy mesa

# mesa-utils
echo "Installing mesa-utils..."
pacman -Sy mesa-utils

# Gnome Desktop Manager
echo "Installing Gnome Desktop Manager..."
pacman -Sy gdm

echo "Enabling gdm"
systemctl enable gdm.service

# Gnome Desktop
echo "Installing Gnome..."
pacman -Sy gnome

# Gamescope
echo "Installing gamescope..."
pacman -Sy gamescope

# Git
echo "Installing Git..."
pacman -Sy git

# VSCode
echo "Installing VSCode..."
pacman -Sy code

# .NET
echo "Installing .NET..."
pacman -Sy dotnet-sdk

# Firefox
echo "Installing Firefox..."
pacman -Sy firefox

# Godot (Mono)
echo "Installing godot-mono..."
pacman -Sy godot-mono

# Flatpak
echo "Installing Flatpak..."
pacman -Sy flatpak

# open-vm-tools (Open VMWare Tools)
echo "Installing open-vm-tools..."
pacman -Sy open-vm-tools

echo "Enabling open-vm-tools"
systemctl enable vmtoolsd

# ProtonVPN
echo "Installing ProtonVPN..."
pacman -Sy proton-vpn-gtk-app

# Done.
echo "Done. You may now reboot."
