# !/bin/sh

## Bash script to install all dependencies #
## nodejs/npm should be installed prior to running this script.

## uncomment line below if elm or elm-css are not yet installed #
# sudo npm install elm -g &&
# sudo npm install -g elm-css &&
npm install bootstrap &&
npm install express &&
elm package install -y &&
./build-elm.sh &&
./run-backend.sh
