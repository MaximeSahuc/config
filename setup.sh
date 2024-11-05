#!/usr/bin/env bash

# rename old bashrc file
mv ~/.bashrc ~/.bashrc.old &>/dev/null

# create .bashrc symlink
ln -s ~/.custom/bashrc ~/.bashrc
