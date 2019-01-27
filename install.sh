#!/bin/sh

cp .vimrc ~/.vimrc

# copy .zshrc to home directory
echo "# Path to your oh-my-zsh installation.\nexport ZSH=$HOME/.oh-my-zsh\n" > zsh-temp
cat zsh-temp .zshrc > ~/.zshrc
rm zsh-temp
