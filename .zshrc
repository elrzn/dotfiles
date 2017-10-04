export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ys"

plugins=(git brew cpanm docker osx perl tig)

source $HOME/.profile
source $ZSH/oh-my-zsh.sh

unalias 9

export PATH=$PATH:$HOME/bin

alias vi="$(which nvim)"

# Perl
if [ -x "$(command -v perlbrew)" ]; then
    source $HOME/perl5/perlbrew/etc/bashrc
fi

# OCaml
. $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# plan9port
export PLAN9_BASE_PATH=/usr/local/Cellar/plan9port
export PLAN9=$PLAN9_BASE_PATH/$(ls $PLAN9_BASE_PATH)/libexec
export PATH=$PATH:$PLAN9/bin

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

