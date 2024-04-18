# install xcode build tools
xcode-select --install

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install homebrew formulae
xargs brew install < brew-formulae.txt

# install homebrew casks
xargs brew install < brew-casks.txt

# setup Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# configure git
git config --global user.name tjeufoolen
git config --global user.email tjeu@foolen.me
git config --global core.editor code
git config --global core.autocrlf input
git config --global pull.rebase true
git config --global rebase.autoStash true
git lfs install

# install node versions
n latest
n lts

# Configure jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(jenv init -)"' >> ~/.zshrc
eval "$(jenv init -)"
jenv enable-plugin export

# Add installed java versions to jenv
jenv add /usr/local/opt/openjdk@8
jenv add /usr/local/opt/openjdk@11
jenv add /usr/local/opt/openjdk@17

# Specify default java version with jenv
jenv global 17.0

# create dev folder
mkdir ~/Workspace
