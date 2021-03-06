#!/usr/bin/env bash
time_out () { perl -e 'alarm shift; exec @ARGV' "$@"; }

# Run tmux if exists
if [ "$0" = "Apple_Terminal" ]
then
	if command -v tmux>/dev/null; then
		[ -z $TMUX ] && exec tmux
	else 
		echo "tmux not installed. Run ./deploy to configure dependencies"
	fi
fi
#echo "Updating configuration"
#(cd ~/dotfiles && time_out 3 git pull && time_out 3 git submodule update --init --recursive)
#(cd ~/dotfiles && git pull && git submodule update --init --recursive)
source ~/dotfiles/zsh/zshrc.sh
source ~/dotfiles/zsh/zsh_functions.sh
source ~/dotfiles/zsh/zsh_exports.sh
source ~/dotfiles/zsh/zsh_aliases.sh
