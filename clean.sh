#! /bin/sh

cd $DOM

rm .profile

rm .bashrc

rm -rf bin

rm .xinitrc

rm .vimrc

# assume dir. .vim is *not* touched by hatch/clean

rm .Rprofile

rm .tmux.conf


## end
