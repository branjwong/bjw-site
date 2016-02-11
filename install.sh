# Bash script to install all dependencies #
# nodejs/npm should be installed prior to running this script.

sudo npm install elm -g &&
sudo npm install bootstrap &&
sudo npm install express &&
yes | elm package install &&
./build-elm.sh && 
./run-backend.sh &&