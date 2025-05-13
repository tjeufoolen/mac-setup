# --------------------------------------------------
# Shell
# --------------------------------------------------

# Install xcode build tools
xcode-select --install

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install homebrew formulas
brew bundle --file=Brewfile

# Configure zshell
cp .zshrc ~
source ~/.zshrc

# --------------------------------------------------
# Git configuration
# --------------------------------------------------
git config --global user.name tjeufoolen
git config --global user.email 12643433+tjeufoolen@users.noreply.github.com
git config --global core.editor code
git config --global core.autocrlf input
git config --global pull.rebase true
git config --global rebase.autoStash true
git config --global commit.gpgsign true
git config --global gpg.format ssh
git config --global user.signingKey ~/.ssh/id_ed25519
git lfs install

# --------------------------------------------------
# Version managers
# --------------------------------------------------

# NodeJS
n latest
n lts

# Java
eval "$(jenv init -)"
jenv enable-plugin export

# Add installed java versions to jenv
jenv add /opt/homebrew/opt/openjdk@17
jenv add /opt/homebrew/opt/openjdk@21

# Specify default java version with jenv
jenv global 21.0

# --------------------------------------------------
# Development files
# --------------------------------------------------

# Create dev folder
mkdir -p ~/Workspace

# --------------------------------------------------
# Application files
# --------------------------------------------------

# Warp
mkdir -p ~/.warp
cp -a .warp ~/.warp
