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

rm -f ~/.xbindkeysrc
ln -s ~/cfg/xbindkeysrc ~/.xbindkeysrc

mkdir -p ~/bin
cp ~/cfg/bin/* ~/bin

sudo cp ~/cfg/etc/hosts /etc/hosts
sudo cp ~/cfg/etc/make.conf /etc/make.conf
sudo cp ~/cfg/etc/rc.conf /etc/rc.conf
