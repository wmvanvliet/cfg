#! /bin/sh

rm -f ~/.cshrc
ln -s ~/cfg/cshrc ~/.cshrc
rm -rf ~/.vim
ln -s ~/cfg/vim ~/.vim
rm -f ~/.vimrc
ln ~/.vim/vimrc ~/.vimrc
mkdir -p ~/.config
