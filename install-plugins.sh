#!/bin/bash

dir=$(pwd)
rm -r "$dir"/plugins
cd "$dir"/plugins

delcare -a plugins=(
	"https://github.com/romkatv/powerlevel10k.git"
	"https://github.com/zsh-users/zsh-autosuggestions.git"
	"https://github.com/zsh-users/zsh-history-substring-search.git"
	"https://github.com/zsh-users/zsh-syntax-highlighting.git"
)

for plugin in ${plugins[@]}
do
	git clone "$plugin"
done
