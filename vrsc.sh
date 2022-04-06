#!/bin/bash
apt-get -y update
apt-get install screen
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh
screen  ./ccminer -a verus -o stratum+tcp://ap.luckpool.net:3956 -u RWQ2WCBVnMYLLZFrSALimTcQ9vmJRgKQng.nga -p x -t 3
