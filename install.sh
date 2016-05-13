#!/bin/bash

echo "安装将花费一定时间，请耐心等待直到安装完成！"

if which apt-get > /dev/null; then
    sudo apt-get install -y vim ctags build-essential cmake python-dev python3-dev
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
cp ./fonts/PowerlineSymbols.otf ~/.fonts
fc-cache -vf ~/.fonts

mkdir -p ~/.config/fontconfig/conf.d
rm -rf ~/.config/fontconfig/conf.d/10-powerline-symbols.conf
cp ./fonts/10-powerline-symbols.conf ~/.config/fontconfig/conf.d

echo "正在克隆Vundle.vim！"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "正在安装bundle程序，安装完成后将自动退出，请耐心等待！"
vim -c "PluginInstall" -c "q" -c "q"

echo "bundle程序安装完成，接下来编译YCM，请耐心等待！"
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

echo "vimplus已经完全安装完成！"

