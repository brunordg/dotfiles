#!/bin/bash

#ln -s ~/.dotfiles/.zshrc ~/.zshrc
#ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
#ln -s ~/.dotfiles/.sdkmanrc ~/.sdkmanrc

DIR="$HOME/.zshrc"
if [ ! -L "$DIR" ]; then  
    ln -s ~/.dotfiles/.zshrc ~/.zshrc
    echo "Create simbolic link ${DIR} ..."
else  
    echo "Error: ${DIR} exists"    
fi

DIR="$HOME/.gitconfig"
if [ ! -L "$DIR" ]; then  
    ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
    echo "Create simbolic link ${DIR} ..."
else  
    echo "Error: ${DIR} exists"    
fi

DIR="$HOME/.sdkmanrc"
if [ ! -L "$DIR" ]; then  
    ln -s ~/.dotfiles/.sdkmanrc ~/.sdkmanrc
    echo "Create simbolic link ${DIR} ..."
else  
    echo "Error: ${DIR} exists"    
fi