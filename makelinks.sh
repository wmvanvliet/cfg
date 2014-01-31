rm -f ~/.cshrc
ln -s ~/cfg/cshrc ~/.cshrc

rm -f ~/.vim
ln -s ~/cfg/vim ~/.vim

rm -f ~/.vimrc
ln -s ~/cfg/vimrc ~/.vimrc

rm -f ~/.Xresources
ln -s ~/cfg/Xresources ~/.Xresources
xrdb ~/.Xresources

rm -f ~/.ssh/config
mkdir -p ~/.ssh
ln -s ~/cfg/ssh/config ~/.ssh/config

rm -rf ~/.config
ln -s ~/cfg/config ~/.config

rm -f ~/.compton.conf
ln -s ~/cfg/compton.conf ~/.compton.conf

rm -f ~/.conkyrc
ln -s ~/cfg/conkyrc ~/.conkyrc
