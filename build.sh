#!/bin/bash

rm -rf ./out
mkdir ./out

cd ./calamares-config-cvm
./cleanup.sh
makepkg -s
mv *.zst ../out
cd ..

cd ./calamares-cvm
./cleanup.sh
makepkg -s
mv *.zst ../out
cd ..
