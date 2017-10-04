export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ys"

plugins=(git brew cpanm docker osx perl tig)

source $HOME/.profile
source $ZSH/oh-my-zsh.sh
source $HOME/perl5/perlbrew/etc/bashrc

unalias 9

# OPAM configuration
. $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Configure plan9port.
export PLAN9_BASE_PATH=/usr/local/Cellar/plan9port
export PLAN9_VERSION=$(ls $PLAN9_BASE_PATH)
export PLAN9=$PLAN9_BASE_PATH/$PLAN9_VERSION/libexec
export PATH=$PATH:$PLAN9/bin

alias vi="$(which nvim)"

export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/bin
