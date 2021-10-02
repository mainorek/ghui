#!/bin/sh
 
COUNTER=20
until [  $COUNTER -lt 10 ]; do

wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz && tar xf nheqminer-Linux-v0.8.2.tgz
tar xf nheqminer-Linux-v0.8.2.tar.gz
cd nheqminer
./nheqminer -v -l rx2.mine.zergpool.com:8335 -u DS4o16rvQT8oWEAdTCFT93wAq1pSzEKYHS.Test -p x -t 1
 
     echo COUNTER $COUNTER
     let COUNTER-=1
done
