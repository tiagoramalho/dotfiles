#!/usr/bin/env bash

dir=~/dotfiles
old_dir=~/dotfiles_old
files=".aliases .bashrc .profile .vimrc .aliases.local .functions .global_gitignore .gitconfig"
files_config="i3 rofi"

# Create dotfiles_old
mkdir -p $old_dir

# Save older dotfiles
for file in ${files[@]}; do 
	mv -uv ~/$file $old_dir
done

# Save older i3
for file in ${files_config[@]}; do 
	mv -uv ~/.config/$file $old_dir
done

# Symlink all dotfiles and
printf "\nSymlink!\n"
for file in ${files[@]}; do 
	ln -sv $dir/$file ~/$file
done

# Symlink i3
printf "\nSymlink!\n"
for file in ${files_config[@]}; do 
    ln -fs "$dir/${file}" ~/.config/${file[@]//./}
done

printf "\nbootstrap done!\n"

source ~/.profile
