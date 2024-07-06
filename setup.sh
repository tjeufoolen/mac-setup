# install xcode build tools
xcode-select --install

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# TODO: rework for dumpfile
# install homebrew formulae
# xargs brew install < brew-formulae.txt

# install homebrew casks
# xargs brew install < brew-casks.txt
# ENDTODO: rework for dumpfile

# install meslont 'nerd'font
oh-my-posh font install meslo

# configure git
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

# install node versions
n latest
n lts

# Configure jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(jenv init -)"' >> ~/.zshrc
eval "$(jenv init -)"
jenv enable-plugin export

# TODO: rework for apple silicon
# Add installed java versions to jenv
# jenv add /usr/local/opt/openjdk@11 #TODO: search alternative so its also available for apple silicon
# jenv add /usr/local/opt/openjdk@11
# jenv add /usr/local/opt/openjdk@17

# Specify default java version with jenv
# jenv global 17.0
# ENDTODO: rework for apple silicon

# create dev folder
mkdir ~/Workspace
