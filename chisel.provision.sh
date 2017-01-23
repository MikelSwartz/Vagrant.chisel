#!/bin/bash
cd /vagrant/
yum update
yum install -y vim git tree wget curl

git clone https://github.com/jpillora/chisel.git

docker run --rm -it jpillora/chisel --help
go get -v github.com/jpillora/chisel

