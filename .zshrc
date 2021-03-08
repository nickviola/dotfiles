#### OH-MY-ZSH Stuff
ZSH=~/.oh-my-zsh
ZSH_THEME="tonotdo"

## Past Themes
#ZSH_THEME="tonotdo"
#ZSH_THEME="af-magic"

plugins=(
  brew
  iterm2
  zsh-completions
  git
  bundler
  dotenv
  osx
  rake
  pyenv
  warhol
  node
  npm
  colored-man-pages
  colorize
  docker
  docker-compose
  docker-machine
  aws
  compleat
  man
  react-native
  terraform
  thefuck
  zsh_reload
  tmux
  vagrant
  vagrant-prompt
  chucknorris
  dash
  git-extras
  history
  emoji
  emoji-clock
  ripgrep
  gitignore
  jsontools
  themes
  please
  fancy-ctrl-z
  frontend-search
  battery
)

source $ZSH/oh-my-zsh.sh

#### Completer refresh after plugins
autoload -U compinit && compinit

#### Environment Variables
export NODE_NO_WARNINGS=0
export PATH=/usr/local/bin/usr/local/sbin:~/bin:$PATH
export PATH=$PATH:/usr/local/opt/python/libexec/bin
export PATH=$PATH:/usr/local/opt/bison/bin
export PKG_CONFIG_PATH=/usr/local/opt/ncurses/lib/pkgconfig
export GOBIN=$HOME/go/bin
export HISTSIZE=2000
export SAVEHIST=8000
export HISTFILE=~/.history
export LC_CTYPE=en_US.UTF-8
export ANDROID_HOME=~/Library/Android/sdk
export VLC_PATH=/Applications/VLC.app/Contents/MacOS/lib
export VLC_PLUGIN_PATH=/Applications/VLC.app/Contents/MacOS/plugins
export ASK_DEFAULT_DEVICE_LOCALE="en-US"
export WORKON_HOME=~/.venv
export PROJECT_HOME=~/workspace
export VIRTUALENVWRAPPER_PYTHON=$HOME/.pyenv/shims/python


#### AWS Stuff
source ~/CloudStorage/dev/source_files/aws-env
source /usr/local/bin/aws_zsh_completer.sh

#### Heroku Autocomplete
export HEROKU_AC_ZSH_SETUP_PATH="~/Library/Caches/heroku/autocomplete/zsh_setup";
# test -f $HEROKU_AC_ZSH_SETUP_PATH;
source $HEROKU_AC_ZSH_SETUP_PATH;

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh


# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh


#### Directory Shortcut Aliases
alias l='ls -laF'
alias update-lambda='ask deploy -t lambda'
alias update-skill='ask deploy'
alias gs='git status'
alias dockerclean='docker volume rm $(docker volume ls -qf dangling=true)'alias reload-shell='exec $SHELL'
alias docker-events="docker events --since=10m --until=$(date +%s) --format '{{json .}}' | jsonpp"


#### Python pyenv Setup
#eval "$(pyenv init -)" &> /dev/null
eval "$(pyenv virtualenv init -)" &> /dev/null
pyenv virtualenvwrapper_lazy &> /dev/null
export PATH="$(pyenv root)/shims:$PATH"

#### Ruby rbenv Setup
#test -e "~/.iterm2_shell_integration.zsh" && source #"$#{HOME}/.iterm2_shell_integration.zsh"
eval "$(rbenv init -)" &> /dev/null
export PATH="$(rbenv root)/shims:$PATH"


# Start tmux if not running
tmux start-server &> /dev/null
if [ -z "$VIM_TMUX" ]
  then
    tmux -2 new -s VIM_TMUX -d &> /dev/null
fi

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

#eval $(docker-machine env default)
export PATH="/usr/local/bin:$PATH"
