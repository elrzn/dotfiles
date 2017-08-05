export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ys"

plugins=(git brew cpanm docker osx perl tig)

source $HOME/.profile
source $ZSH/oh-my-zsh.sh
source $HOME/perl5/perlbrew/etc/bashrc

unalias 9

# OPAM configuration
. $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

alias acme='9 acme -af /mnt/font/Monaco/14a/font'
alias vi="$(which nvim)"

export PATH=$PATH:$HOME/go/bin
