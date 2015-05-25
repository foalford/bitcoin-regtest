#!/bin/bash
set -e

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8842CE5E
echo deb http://ppa.launchpad.net/bitcoin/bitcoin/ubuntu trusty main > /etc/apt/sources.list.d/bitcoin.list
echo deb-src http://ppa.launchpad.net/bitcoin/bitcoin/ubuntu trusty main >> /etc/apt/sources.list.d/bitcoin.list
apt-get -y update
apt-get install -y bitcoind
mkdir ~/.bitcoin
echo "rpcuser=test\nrpcpassword=test\n" > ~/.bitcoin/bitcoin.conf
echo "alias rt='bitcoind -regtest'" >> ~/.bashrc
mkdir /etc/service/bitcoin
cp /build/runit/bitcoin /etc/service/bitcoin/run
touch /etc/service/bitcoin/down
