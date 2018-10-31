#### OH-MY-ZSH Stuff
export ZSH=~/.oh-my-zsh

# Previous Themes
#ZSH_THEME="nanotech"
#ZSH_THEME="solorized
#ZSH_THEME="tonotdo"

# Current Theme
ZSH_THEME="agnoster"

# Plugins
plugins=(zsh-256color) 
plugins=(zsh-completions)
plugins=(warhol)
plugins=(git)

autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

#### Environment Variables
export HISTSIZE=2000
export SAVEHIST=8000
export HISTFILE=~/.history
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

#### Environment Variables
export HISTSIZE=1000
export SAVEHIST=2000
export HISTFILE=~/.history
export LC_CTYPE=en_US.UTF-8
export NODE_NO_WARNINGS=1

# Aliases
alias dockerclean='docker volume rm $(docker volume ls -qf dangling=true)'
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
