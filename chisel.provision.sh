#!/bin/bash
cd /vagrant/
yum update
yum install -y vim git tree wget curl

rpm -iUvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum update -y
yum -y install docker-io
service docker start
chkconfig docker on

git clone https://github.com/jpillora/chisel.git
curl https://i.jpillora.com/chisel! | bash
sleep 10
docker run --rm -it jpillora/chisel --help

