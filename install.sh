#!/bin/bash

dir="$PWD"
new_dir="~"
files=".zshrc .vimrc .tmux.conf"
folders=".vim .zsh .oh-my-zsh .tmux-plugins"


echo "Replacing files into $new_dir"
for file in $files; do
    rm ~/$file > /dev/null
    cp $file ~/$file > /dev/null
done


for file in $folders; do
    rm -rf ~/$file > /dev/null
    cp -r $file ~/$file > /dev/null
done

