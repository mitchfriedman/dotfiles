#!/bin/bash

dir="$PWD"
new_dir="~"
files=".zshrc .vimrc .tmux.conf"
folders=".vim .zsh .oh-my-zsh"


echo "Replacing files into $new_dir"
for file in $files; do
    rm ~/$file > /dev/null
    cp $file ~/$file
done


for file in $folders; do
    rm -rf ~/$file > /dev/null
    cp -r $file ~/$file
done

