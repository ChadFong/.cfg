# System Specific config
source ~/.bashrc

# source ~/.git-prompt.sh

# PS1="\W\$(__git_ps1)\$ "

alias editor=vim

# .dotfile shortcuts
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias vimrc="editor ~/.vimrc"
alias prof="editor ~/.bash_profile"
alias runprof=". ~/.bash_profile"

alias g="git"

# Bash-completion
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
	    . /usr/share/bash-completion/bash_completion

# Git autocomplete:
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash

  # Add git completion to aliases
  __git_complete gco _git_checkout
fi


