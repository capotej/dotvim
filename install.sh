#!/bin/sh

export pwd=`pwd`
rm -rf ~/.vim
rm -rf ~/.vimrc
ln -sf $pwd/.vim ~/.vim
ln -sf $pwd/.vimrc ~/.vimrc
