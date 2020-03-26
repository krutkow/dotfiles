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
files="vimrc screenrc gitconfig gitignore_global sqliterc latex2html-init"


##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir

# move any existing dotfiles in ~ to olddir directory, then create symlinks 
for file in $files; do
    echo "------ working on $file ------"
    
    if [ -e ~/$files ] ; then
        echo " ~/$file does not exist"
    else 
        echo "Moving $file from ~ to $olddir"
        mv ~/.$file $olddir/
        echo "Creating symlink to $file in home directory."
        ln -s $dotfilesdir/$file ~/.$file
    fi
    
done

echo "Finished"

# +++ also remember to link the bash_profile file:
# ln -s ~/dotfiles/bash_profile_mac ~/.bash_profile
# ln -s ~/dotfiles/bash_profile_linux ~/.bash_profile
