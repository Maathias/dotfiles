## Use powerline
#USE_POWERLINE="true"
# Source manjaro-zsh-configuration
#if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
#  source /usr/share/zsh/manjaro-zsh-config
#fi
## Use manjaro zsh prompt
#if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#  source /usr/share/zsh/manjaro-zsh-prompt
#fii

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt autocd beep extendedglob nomatch notify
bindkey -v

zstyle :compinstall filename '/home/mathias/.zshrc'

autoload -Uz compinit
compinit

export VISUAL=vim
export EDITOR="$VISUAL"

setopt histignoredups

autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

alias l="exa -l --sort=type --group-directories-first"
alias suvi="sudo -e"

alias git-prune-merged="git fetch --prune; git branch -r | awk '{print \$1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print \$1}' | xargs git branch -d"

alias dcmp="docker-compose"

alias dotfiles='git --git-dir=$HOME/.dotfiles/.git --work-tree=$HOME/.dotfiles'

PROMPT="%B%F{red}%n@%m%f%b:%F{blue}%~%f %# "

#export DENO_INSTALL="/home/mathias/.deno"
#export PATH="$PATH:$DENO_INSTALL/bin"
#export PATH="$PATH:$HOME/.spicetify"
export PATH="$PATH:$HOME/.local/bin"
#export PATH="$PATH:$HOME/.yarn/bin"
#export PATH=$PATH:/home/mathias/.spicetify

alias ".."="cd ../"
alias "..."="cd ../../"
alias "...."="cd ../../../"
alias -- "-"="cd -"
