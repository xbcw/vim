#!/bin/bash
cp .vimrc ~/.vimrc
cp -rp autoload $HOME/.vim/
cp -rp bundle $HOME/.vim/
cp -rp after $HOME/.vim/

# Do a full install
if [ "$1" == "--full-install" ] || [ "$1" == "-f" ] ; then 
    # Finish setting up YouCompleteMe
    sudo apt-get install build-essential cmake python-dev;
    bash $HOME/.vim/bundle/YouCompleteMe/install.sh;
    cp .ycm_extra_conf.py $HOME/.vim/;
fi
