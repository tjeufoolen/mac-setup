# Make sure gnu (coreutils) cli are before bsd to enforce correct ls
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/opt/homebrew/opt/coreutils/libexec/gnuman:$MANPATH"

# Link Homebrew
export PATH="/opt/homebrew/bin:$PATH"

# Load Oh My Posh prompt with custom theming
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/fox.toml)"

# Configure gnu ls coloring
LS_COLORS="di=0;35" # Make directories bold
export LS_COLORS
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Java version manager
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

alias ls="ls --color=always --group-directories-first"
alias ll="ls -la"
alias dev="cd ~/Workspace"
alias zshconfig="code ~/.zshrc"
alias reload="source ~/.zshrc"