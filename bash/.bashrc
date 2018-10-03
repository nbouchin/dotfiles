# If not running interactively, do not do anything

set -o vi 
shopt -s globstar

if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
fi

# colored man
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal
export EDITOR="nvim"
export VISUAL="nvim"
export TERM=xterm-256color

bind -m vi-insert "\C-l":clear-screen

#colored ls
alias ls='ls --color'
#alias ls='ls -G' 

# copy/paste
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias open='xdg-open'

# ls aliases
alias ll='ls -l'
alias la='ls -a'
alias l='ls'

# systemctl aliases
alias ss='systemctl status'
alias lus='systemctl list-units --type=service'

# ps aliases
alias pssh='ps faux | grep sshd'
alias psftp='ps faux | grep ftp'

# reset shell
alias esl='exec $SHELL -l'

# emacs aliases
alias em='emacs'
alias ec='emacsclient -n'
alias reconnect='nordvpn disconnect && nordvpn connect'
export PATH=~/.brew/bin/:$PATH