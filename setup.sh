#!/usr/bin/env bash

# rename old bashrc file
mv ~/.bashrc ~/.bashrc.old &>/dev/null && echo "Move .bashrc to .bashrc.old"

# create .bashrc symlink
echo "Creating new .bashrc synlink"
ln -s ~/.custom/bashrc ~/.bashrc

# create dotfiles symlinks
for file in ~/.custom/dotfiles/*; do
  if [ -f "$file" ]; then
    filename="$(basename $file)"
    
    echo "create symlink for .$filename"
    mv "$HOME/.$filename" "$HOME/.$filename.old" &>/dev/null && echo ".$filename already exists, renaming it to .$filename.old"
    ln -s $file "$HOME/.$filename"
  fi
done

echo "Done!"
