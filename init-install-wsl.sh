#!/bin/bash

echo "Init install wsl..."

sudo apt install curl -y
sudo apt install git
sudo apt install zip
sudo apt install zsh
sudo snap install kubectl --classic
sudo snap install node --classic
sudo snap install httpie
sudo url -s "https://get.sdkman.io" | bash

echo "Finish install 🍺🍻🍺"
