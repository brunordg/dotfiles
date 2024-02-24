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

DIR="$HOME/.vimrc"
if [ ! -L "$DIR" ]; then  
    ln -s ~/.dotfiles/.vimrc ~/.vimrc
    echo "Create simbolic link ${DIR} ..."
else  
    echo "Error: ${DIR} exists"    
fi

DIR="$HOME/.zshenv"
if [ ! -L "$DIR" ]; then  
    ln -s ~/.dotfiles/.zshenv ~/.zshenv
    echo "Create simbolic link ${DIR} ..."
else  
    echo "Error: ${DIR} exists"    
fi


DIR="~/.zsh/functions.zsh"
if [ ! -L "$DIR" ]; then  
    ln -s ~/.dotfiles/.zsh/functions.zsh ~/.zsh/functions.zsh
    echo "Create simbolic link ${DIR} ..."
else  
    echo "Error: ${DIR} exists"    
fi

DIR="~/.zsh/aliases.zsh"
if [ ! -L "$DIR" ]; then  
    ln -s ~/.dotfiles/.zsh/aliases.zsh ~/.zsh/aliases.zsh
    echo "Create simbolic link ${DIR} ..."
else  
    echo "Error: ${DIR} exists"    
fi

DIR="~/.zsh/nvm.zsh"
if [ ! -L "$DIR" ]; then  
    ln -s ~/.dotfiles/.zsh/nvm.zsh ~/.zsh/nvm.zsh
    echo "Create simbolic link ${DIR} ..."
else  
    echo "Error: ${DIR} exists"    
fi

