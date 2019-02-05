#!/usr/bin/env bash

dir=~/dotfiles
old_dir=~/dotfiles_old
files=".aliases .bashrc .profile .vimrc .aliases.local .functions .global_gitignore .gitconfig"

# Create dotfiles_old
mkdir -p $old_dir

# Symlink all dotfiles and save the olders
for file in ${files[@]}; do 
	mv -uv ~/$file $old_dir
done

printf "\nSymlink!\n"
for file in ${files[@]}; do 
	ln -sv $dir/$file ~/$file
done

printf "bootstrap done!\n"

source ~/.profile
