# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# Fetch sys info
neofetch

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# My aliases
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"
alias v="nvim"
alias v.="nvim ."
alias gaa="git add ."
alias gca="git commit -m"
alias notes="nvim ~/Notes"

# My custom varibles
export ZSH_CUSTOM=~/.config/my-zsh-config
export PLUGINS_DIR=~/.config/my-zsh-config/plugins

# Set zsh history file
HISTFILE=$ZSH_CUSTOM/zsh_history
HISTZISE=10000
SAVEHIST=10000
setopt appendhistory

# Make ls colorful :)
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# Source Rust
source "$HOME/.cargo/env"

# My plugins
source $PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PLUGINS_DIR/powerlevel10k/powerlevel10k.zsh-theme
source $PLUGINS_DIR/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh

# Bind keys for substring history
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
