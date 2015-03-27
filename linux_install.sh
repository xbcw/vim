#!/bin/bash
cp .vimrc ~/.vimrc
cp -rp autoload $HOME/.vim/
cp -rp colors $HOME/.vim/
cp -rp bundle $HOME/.vim/

# Finish setting up YouCompleteMe
sudo apt-get install build-essentials cmake python-dev
bash $HOME/.vim/bundle/YouCompleteMe/install.sh
