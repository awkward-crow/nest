#! /bin/sh

cd $NEST/dwm/src/dwm
make clean install

cd $DOM

ln -s $NEST/etc/profile .profile

ln -s $NEST/bash/bashrc .bashrc

ln -s $NEST/bin bin

ln -s $NEST/x/xinitrc .xinitrc

## less ?!


# end
