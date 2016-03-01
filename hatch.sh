#! /bin/sh

cd $NEST/dwm/src/dwm
make clean install

cd $DOM

ln -s $NEST/etc/profile .profile

ln -s $NEST/bash/bashrc .bashrc

ln -s $NEST/bin bin

ln -s $NEST/x/xinitrc .xinitrc

ln -s $NEST/vim/vimrc .vimrc
mkdir -p $DOM/.vim/colors
ln -s $NEST/vim/colors/*.vim $DOM/.vim/colors

## less ?!
lesskey $NEST/etc/lesskey 


# end
