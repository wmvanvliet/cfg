rm -f ~/.cshrc
ln -s ~/cfg/cshrc ~/.cshrc

rm -f ~/.vim
ln -s ~/cfg/vim ~/.vim

rm -f ~/.vimrc
ln -s ~/cfg/vimrc ~/.vimrc

rm -f ~/.Xresources
ln -s ~/cfg/Xresources ~/.Xresources

rm -f ~/.ssh/config
mkdir -p ~/.ssh
ln -s ~/cfg/ssh/config ~/.ssh/config

rm -f ~/.config
ln -s ~/cfg/config ~/.config

rm -f ~/.compton.conf
ln -s ~/cfg/compton.conf ~/.compton.conf

rm -f ~/.conky.conf
ln -s ~/cfg/conky.conf ~/.conky.conf
