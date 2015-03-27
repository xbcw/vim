#!/bin/bash
cp .vimrc $HOME/.vimrc
mkdir $HOME/.vim
cp -r autoload $HOME/.vim
cp -r bundle $HOME/.vim

# Do a full install
if [ "$1" == "--full-install" ] || [ "$1" == "-f" ] ; then 
    # Finish setting up YouCompleteMe
    sudo apt-get install build-essential cmake python-dev;
    bash $HOME/.vim/bundle/YouCompleteMe/install.sh;
fi
