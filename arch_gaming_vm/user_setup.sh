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
echo "Done."
