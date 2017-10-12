export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ys"

plugins=(git brew docker osx tig ansible vagrant cpanm)

source $HOME/.profile
source $ZSH/oh-my-zsh.sh

# OCaml.
. $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

function _update_ocaml() {
	if [ -x "$(command -v opam)" ]; then
		opam update
		opam upgrade
	fi
}

# Perl
if [ -x "$(command -v perlbrew)" ]; then
	source $HOME/perl5/perlbrew/etc/bashrc
fi

function _update_homebrew() {
	if [ -x "$(command -v brew)" ]; then
		brew update
		brew upgrade
		brew cleanup
		brew cask cleanup
		brew services cleanup
	fi
}

function _update_javascript() {
	if [ -x "$(command -v yarn)" ]; then
		yarn global upgrade
	fi
}

function _update_ruby() {
	if [ -x "$(command -v gem)" ]; then
		gem update
	fi
}

function _update_rust() {
	if [ -x "$(command -v cargo)" ]; then
		cargo install-update -a
	fi
}

function _update_go() {
	if [ -x "$(command -v go)" ]; then
		cat $HOME/go_packages | xargs go get
	fi
}

function _update() {
	_update_homebrew
	_update_ocaml
	_update_javascript
	_update_ruby
	_update_rust
	_update_go
}

# Translate from English to German.
function en2de() {
	deepl translate -s EN -t DE $1
}

# Translate from German to English.
function de2en() {
	deepl translate -s DE -t EN $1
}
