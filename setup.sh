#!/usr/bin/env bash

# rename old bashrc file
mv ~/.bashrc ~/.bashrc.old &>/dev/null && echo "Move .bashrc to .bashrc.old"

# create .bashrc symlink
echo "Creating new .bashrc synlink"
ln -s ~/.custom/bashrc ~/.bashrc

echo "Done!"
