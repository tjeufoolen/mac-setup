# install xcode build tools
xcode-select --install

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install homebrew formulae
xargs brew install < brew-formulae.txt

# install homebrew casks
xargs brew install < brew-casks.txt

# setup Oh My ZSH & theme
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
THEME="powerlevel10k/powerlevel10k"; sed -i s/^ZSH_THEME=".\+"$/ZSH_THEME=\"$THEME\"/g ~/.zshrc && source ~/.zshrc

# configure git
git config --global user.name tjeufoolen
git config --global user.email tjeu@foolen.me
git config --global core.editor nano

# install node version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/HEAD/install.sh | bash

nvm install lts
nvm install latest

# global npm installs
nvm use latest

# create dev folder
mkdir ~/Developer