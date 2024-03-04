#!/bin/bash

echo "Init install..."

sudo apt install curl -y
sudo apt install git
sudo apt install zsh
sudo snap install code --classic
sudo snap install intellij-idea-ultimate --classic
sudo snap install datagrip --classic
sudo snap install sublime-text --classic
sudo snap install kubectl --classic
sudo snap install node --classic
sudo snap install httpie
sudo snap install miro
sudo url -s "https://get.sdkman.io" | bash

echo "Finish install 🍺🍻🍺"

