#!/bin/bash

if which apt-get > /dev/null; then
    sudo apt-get install -y vim ctags build-essential cmake python-dev python3-dev fontconfig
elif which yum > /dev/null; then
    sudo yum install -y vim ctags automake gcc gcc-c++ kernel-devel cmake python-devel python3-devel
fi

rm -rf ~/.vimrc
rm -rf ~/.ycm_extra_conf.py

cp .vimrc ~
cp .ycm_extra_conf.py ~

mkdir ~/.vim
rm -rf ~/.vim/plugin
rm -rf ~/.vim/colors
cp -R ./plugin ~/.vim
cp -R ./colors ~/.vim

mkdir ~/.fonts
rm -rf ~/.fonts/PowerlineSymbols.otf
rm -rf ~/.fonts/Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf
cp ./fonts/PowerlineSymbols.otf ~/.fonts
cp ./fonts/Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf ~/.fonts
fc-cache -vf ~/.fonts

mkdir -p ~/.config/fontconfig/conf.d
rm -rf ~/.config/fontconfig/conf.d/10-powerline-symbols.conf
cp ./fonts/10-powerline-symbols.conf ~/.config/fontconfig/conf.d

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim -c "PluginInstall" -c "q" -c "q"

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

echo "Done!"

