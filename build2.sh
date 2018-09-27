#!/bin/bash

set -e

set -x

rm -rf output

#rm -rf ~/.m2/settings.xml

# http proxy
#export http_proxy="http://10.4.16.31:3128"
#export https_proxy="http://10.4.16.31:3128"

# golang

#wget https://dl.google.com/go/go1.10.1.linux-amd64.tar.gz

#tar -C $HOME -xzf go1.10.1.linux-amd64.tar.gz

#export PATH=$PATH:$HOME/go/bin

#export GOROOT=$HOME/go

#mkdir $HOME/GO_PROJECTS

#export GOPATH=$HOME/GO_PROJECTS

dev/scripts/generate-tarballs release -debug=true -hadoop-distributions=hadoop-2.6

mkdir output

tar -zxf alluxio-*-hadoop-2.6.tar.gz

cp -a -R alluxio-*-hadoop-2.6/* output
