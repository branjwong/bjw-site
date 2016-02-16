# !/bin/sh

## Bash script to install all dependencies #
## nodejs/npm should be installed prior to running this script.

## uncomment line below if elm is not yet installed #
# sudo npm install elm -g &&
npm install bootstrap &&
npm install express &&
yes | elm package install &&
./build-elm.sh && 
./run-backend.sh
