#! /bin/sh

cd $NEST/dwm/src/dwm
make clean install

cd $DOM

ln -s $NEST/etc/profile .profile

ln -s $NEST/bash/bashrc .bashrc

ln -s $NEST/bin bin

ln -s $NEST/x/xinitrc .xinitrc

ln -s $NEST/vim/vimrc .vimrc

# assume dir. .vim exists
echo "suggestion: ln -s $NEST/vim/colors/*.vim $DOM/.vim/colors"

## less ?!
lesskey $NEST/etc/lesskey 

ln -s $NEST/R/Rprofile .Rprofile

ln -s $NEST/tmux/tmux.conf .tmux.conf

# end
