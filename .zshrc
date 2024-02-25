# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# Fetch sys info
neofetch

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.9

# My aliases
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"

# My custom varibles
export ZSH_CUSTOM=~/.config/my-zsh-config
export PLUGINS_DIR=~/.config/my-zsh-config/plugins

# Set zsh history file
HISTFILE=$ZSH_CUSTOM/zsh_history
HISTZISE=10000
SAVEHIST=10000
setopt appendhistory

# My plugins (always last)
source /home/christian/.config/my-zsh-config/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/christian/.config/my-zsh-config/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PLUGINS_DIR/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
