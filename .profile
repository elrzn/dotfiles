# Go.
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Configure plan9port.
export PLAN9BASE=/usr/local/Cellar/plan9port/
export PLAN9=$PLAN9BASE/$(ls $PLAN9BASE)/libexec
export PATH=$PATH:$PLAN9/bin
export PATH=$PATH:$HOME/bin

# Rust.
export PATH=$PATH:$HOME/.cargo/bin
