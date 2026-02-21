#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# History settings
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoreboth:erasedups
HISTIGNORE='ls:bg:fg:history'
shopt -s histappend
shopt -s checkwinsize

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias bevm='su - vmstore'
alias begame='su - gamestore'
alias beme='exit'
alias who='whoami'
alias monkeys='echo "USERS: OWO VM STORE GAMESTORE"'

# Prompt
PS1='[\u@\h \W]\$ '

# Better completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
export PATH="$HOME/.npm-global/bin:$PATH"

# OpenClaw Completion
source "/home/owo/.openclaw/completions/openclaw.bash"
