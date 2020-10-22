#!/bin/bash

echo "Hello world from test script"

mkdir /syzkaller
mount -t tmpfs -o size=20G none /syzkaller
cd /syzkaller

wget -O go.tar.gz https://golang.org/dl/go1.15.3.linux-amd64.tar.gz

tar xzf go.tar.gz

export PATH=/syzkaller/go/bin:$PATH

git clone https://github.com/google/syzkaller.git
cd syzkaller
make ci

