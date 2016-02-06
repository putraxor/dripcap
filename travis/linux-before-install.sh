rm -rf ~/.nvm
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash
source ~/.nvm/nvm.sh
nvm install $NODE_VERSION
nvm use --delete-prefix $NODE_VERSION

export CXX="g++-4.8"
wget http://www.tcpdump.org/release/libpcap-1.7.4.tar.gz
tar xzf libpcap-1.7.4.tar.gz
(cd libpcap-1.7.4 && ./configure -q --enable-shared=no && make)
export C_INCLUDE_PATH="${PWD}/libpcap-1.7.4"
export LIBRARY_PATH="${PWD}/libpcap-1.7.4"
export DISPLAY=':99.0'

export GOPATH=/home/travis/gopath
export GOBIN=/home/travis/gopath/bin
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin