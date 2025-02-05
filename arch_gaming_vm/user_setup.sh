# Sober (Runs Roblox on Linux)
echo "Installing Sober..."
flatpak install --user https://sober.vinegarhq.org/sober.flatpakref

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
echo "Done."
