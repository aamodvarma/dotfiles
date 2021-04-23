#!/bin/bash

cd $HOME


files='bashrc vimrc xinitrc xprofile Xresource'

if [ -d "$HOME/.dotfiles.bak" ]
then
	echo "Copying backups over"
else
	mkdir $HOME/.dotfiles.bak
	echo "Making backup direcotry \".dotfiles.bak\""
fi

cd ~/dotfiles/
echo "cd into dotfiles"

for file in $files
do
	echo "Making backups of new dot files  into directory .dotfiles.bak"
	cp  ~/dotfiles/$file ~/.dotfiles.bak/$file.new

	echo "Making backups of old dotfiles  into directory .dotfiles.bak"
	cp  ~/.$file ~/.dotfiles.bak/$file.old

	sudo rm -rf ~/.$file

	echo "Creating symlinks to $file in home directory"
	ln -s ~/dotfiles/$file ~/.$file
done
