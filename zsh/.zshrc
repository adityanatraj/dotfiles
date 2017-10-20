# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/208505/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Aliases

## color ls
alias ls='ls -hG'

## sublime
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# Exports

## export the required JAVA HOME variable
export JAVA_HOME=$(/usr/libexec/java_home)

## export the GOPATH
export GOPATH="$HOME/Code/golang"

## add other /bin paths to PATH
path_items=(
$HOME/Code/golang/bin
$HOME/Code/sdks/google-cloud-sdk/bin
$HOME/Code/sdks/android/platform-tools
$HOME/.cargo/bin
$HOME/Code/bin
$PATH
)

function join_with() { local IFS="$1"; shift; echo "$*"; }
export PATH=$(join_with ":" ${path_items[@]})

## set up further completion
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

## Overloads

# set the prompt
export PS1="%(0?.%F{blue}[ %! ]%f.%F{red}[ %! ]%f) %n:%F{yellow}%1~%f %# "


## Extensions
function activate() {
  local cur_d=$(pwd)
  if [ -d "$cur_d"/env ]; then
      source "$cur_d"/env/bin/activate
  else
      echo "no env found"
  fi
}
