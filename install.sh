# !/bin/sh

## Bash script to install all dependencies #
## nodejs/npm should be installed prior to running this script.

## uncomment line below if elm or elm-css are not yet installed #
# sudo npm install elm -g &&
# sudo npm install -g elm-css &&
# sudo npm install -g elm-live &&
npm install bootstrap &&
npm install express &&
elm package install -y &&
sh elm-build.sh &&
sh elmlive.sh