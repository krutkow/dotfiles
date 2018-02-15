#!/bin/bash
############################
# This script creates symlinks from the home directory to any
# desired dotfiles in a different dotfiles dir
#
# adapted from 
# http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
############################

########## Variables

# dotfiles directory
dotfilesdir=~/dotfiles 

# where the 'old' dotfiles, from home dir, will be copied to                   
olddir=~/dotfiles_old

# list of files/folders to symlink in homedir
files="bashrc vimrc gitconfig gitignore"

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir

# move any existing dotfiles in ~ to olddir directory, then create symlinks 
for file in $files; do
    echo "------ working on $file ------"
    echo "Moving $file from ~ to $olddir"
    mv ~/.$file $olddir/
    echo "Creating symlink to $file in home directory."
    ln -s $dotfilesdir/$file ~/.$file
done

echo "Finished"