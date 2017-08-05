export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ys"

plugins=(git brew cpanm docker osx perl tig)

source $HOME/.profile
source $ZSH/oh-my-zsh.sh
source $HOME/perl5/perlbrew/etc/bashrc

unalias 9

# OPAM configuration
. $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export PLAN9=/usr/local/Cellar/plan9port/20140306/libexec

alias vi="$(which nvim)"

export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$PLAN9/bin
