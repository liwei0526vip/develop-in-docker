#!/bin/bash

wget https://go.dev/dl/go1.21.3.linux-amd64.tar.gz \
  -O /usr/local/src/go1.21.3.linux-amd64.tar.gz

rm -rf /usr/local/go && tar -xzf /usr/local/src/go1.21.3.linux-amd64.tar.gz -C /usr/local/

tee -a $HOME/.bashrc <<'EOF'
# Go envs
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH
export GO111MODULE="on"
export GOPROXY=https://goproxy.cn,direct
export GOPRIVATE=
export GOSUMDB=off
EOF


/bin/rm /usr/local/src/go1.21.3.linux-amd64.tar.gz
/bin/rm -rf /tmp/*.sh
