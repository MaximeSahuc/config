#!/usr/bin/env bash

# rename old bashrc file
mv ~/.bashrc ~/.bashrc.old &>/dev/null && echo "Move .bashrc to .bashrc.old"

# create .bashrc symlink
echo "Creating new .bashrc synlink"
ln -s ~/.custom/bashrc ~/.bashrc

# create dotfiles symlinks
for file in ~/.custom/dotfiles/*; do
  if [ -f "$file" ]; then
    fullsourcepath="$(pwd)/$file"
    filename="$(basename $file)"
    fulldestpath="$HOME/.$filename"

    echo "create symlink for .$filename"
    mv $fulldestpath "$fulldestpath.old" &>/dev/null && echo ".$filename already exists, renaming it to .$filename.old"
    ln -s $fullsourcepath $fulldestpath
  fi
done

echo "Done!"
