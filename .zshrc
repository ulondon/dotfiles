# Created by newuser for 5.3.1
#
export TERM=xterm-256color
export EDITOR=vim
source ~/.alias

bindkey "\e[1;3C" forward-word
bindkey "\e[1;3D" backward-word

autoload -Uz zmv

# NVM
[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec
