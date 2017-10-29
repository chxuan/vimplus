#!/bin/bash

# 获取操作系统类型
function get_os_type()
{
    echo $(uname)
}

# 安装mac平台必要软件
function install_software_for_mac()
{
    brew install vim gcc cmake ctags-exuberant
}

# 拷贝文件
function copy_files()
{
    rm -rf ~/.vimrc
    cp .vimrc ~

    rm -rf ~/.ycm_extra_conf.py
    cp .ycm_extra_conf.py ~

    mkdir ~/.vim
    rm -rf ~/.vim/plugin
    cp -R ./plugin ~/.vim

    rm -rf ~/.vim/colors
    cp -R ./colors ~/.vim
}

# 安装mac平台字体
function install_fonts_for_mac()
{
    rm -rf ~/Library/Fonts/Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf
    cp ./fonts/Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf ~/Library/Fonts
}

# 克隆插件管理软件Vundle
function clone_vundle()
{
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
}

# 安装vim插件
function install_plugin()
{
    vim -c "PluginInstall" -c "q" -c "q"
}

# 编译ycm插件
function compile_ycm_for_mac()
{
    cd ~/.vim/bundle/YouCompleteMe
    ./install.py --clang-completer
}

# 编译ycm插件
function compile_ycm_for_linux()
{
    cd ~/.vim/bundle/YouCompleteMe
    sudo ./install.py --clang-completer
}

# 打印logo
function print_logo()
{
    color="$(tput setaf 6)"
    normal="$(tput sgr0)"
    printf "${color}"
    echo '        __                __           '
    echo '__   __/_/___ ___  ____  / /_  _______ '
    echo '\ \ / / / __ `__ \/ __ \/ / / / / ___/ '
    echo ' \ V / / / / / / / /_/ / / /_/ (__  )  '
    echo '  \_/_/_/ /_/ /_/ ,___/_/\____/____/   '
    echo '               /_/                     ...is now installed!'
    echo ''
    echo ''
    echo 'Just enjoy it!'
    echo 'p.s. Follow me at https://github.com/chxuan.'
    echo ''
    printf "${normal}"
}

# main函数
function main()
{
    os_type=`get_os_type`
    if [ ${os_type} == "Darwin" ]; then
        echo "os_type: "${os_type}
        install_software_for_mac
        copy_files
        install_fonts_for_mac
        clone_vundle
        install_plugin
        compile_ycm_for_mac
        print_logo
    elif [ ${os_type} == "Linux" ]; then
        echo "os_type: "${os_type}
    else
        echo "not support os type: "${os_type}
    fi
}

# 调用main函数
main


