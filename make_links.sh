#! /bin/sh

rm -f ~/.cshrc
ln -s ~/cfg/cshrc ~/.cshrc
rm -rf ~/.vim
ln -s ~/cfg/vim ~/.vim
rm -f ~/.vimrc
ln ~/.vim/vimrc ~/.vimrc
rm -rf ~/.ipython
ln -s ~/cfg/ipython ~/.ipython
rm -rf ~/.config/matplotlib
mkdir -p ~/.config
ln -s ~/cfg/matplotlib ~/.config/matplotlib
