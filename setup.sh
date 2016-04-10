#!/bin/bash

echo "安装将花费一定时间，请耐心等待直到安装完成！"
cd ~

rm -rf .vimrc .ycm_extra_conf.py
wget https://raw.github.com/chxuan/vimplus/master/.vimrc https://raw.github.com/chxuan/vimplus/master/.ycm_extra_conf.py

echo "正在克隆Vundle.vim！"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "正在安装bundle程序，安装完成后将自动退出，请耐心等待！"
vim -c "PluginInstall" -c "q" -c "q"

echo "bundle程序安装完成，接下来编译YCM，请耐心等待！"
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

cd ~
echo "vimplus已经完全安装完成！"

