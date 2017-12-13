#!/bin/bash

# 获取平台类型，mac还是linux平台
function get_platform_type()
{
    echo $(uname)
}

# 获取linux平台类型，ubuntu还是centos
function get_linux_platform_type()
{
    if which apt-get > /dev/null ; then
        echo "ubuntu" # debian ubuntu系列
    elif which yum > /dev/null ; then
        echo "centos" # centos redhat系列
    else
        echo "invaild"
    fi
}

# 判断是否是ubuntu16.04LTS版本
function is_ubuntu1604()
{
    version=$(cat /etc/lsb-release | grep "DISTRIB_RELEASE")
    if [ ${version} == "DISTRIB_RELEASE=16.04" ]; then
        echo 1
    else
        echo 0
    fi
}

# 源代码安装vim
function compile_vim()
{
    sudo apt-get install -y libncurses5-dev libgnome2-dev libgnomeui-dev \
        libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
        libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev python3-dev ruby-dev lua5.1 lua5.1-dev
    sudo apt-get remove -y vim vim-runtime gvim
    sudo apt-get remove -y vim-tiny vim-common vim-gui-common vim-nox

    sudo rm -rf ~/vim
    sudo rm -rf /usr/share/vim/vim74
    sudo rm -rf /usr/share/vim/vim80
    git clone https://github.com/vim/vim.git ~/vim
    cd ~/vim
    ./configure --with-features=huge \
        --enable-multibyte \
        --enable-rubyinterp \
        --enable-pythoninterp \
        --with-python-config-dir=/usr/lib/python2.7/config \
        --enable-perlinterp \
        --enable-luainterp \
        --enable-gui=gtk2 --enable-cscope --prefix=/usr
    make VIMRUNTIMEDIR=/usr/share/vim/vim80
    sudo make install
    cd -
}

# 安装mac平台必要软件
function install_prepare_software_on_mac()
{
    brew install vim gcc cmake ctags-exuberant
}

# 安装centos发行版必要软件
function install_prepare_software_on_centos()
{
    sudo yum install -y vim ctags automake gcc gcc-c++ kernel-devel cmake python-devel python3-devel
}

# 安装ubuntu发行版必要软件
function install_prepare_software_on_ubuntu()
{
    sudo apt-get install -y ctags build-essential cmake python-dev python3-dev fontconfig
    ubuntu_1604=`is_ubuntu1604`
    echo ${ubuntu_1604}

    if [ ${ubuntu_1604} == 1 ]; then
        echo "ubuntu 16.04 LTS"
        compile_vim
    else
        echo "not ubuntu 16.04 LTS"
        sudo apt-get install -y vim
    fi
}

# 拷贝文件
function copy_files()
{
    rm -rf ~/.vimrc
    # cp .vimrc ~
    ln -s ${PWD}/.vimrc ~

    rm -rf ~/.vimrc.local
    cp ${PWD}/.vimrc.local ~

    rm -rf ~/.ycm_extra_conf.py
    # cp .ycm_extra_conf.py ~
    ln -s ${PWD}/.ycm_extra_conf.py ~

    mkdir ~/.vim
    rm -rf ~/.vim/plugin
    # cp -R ./plugin ~/.vim
    ln -s ${PWD}/plugin ~/.vim

    rm -rf ~/.vim/colors
    # cp -R ./colors ~/.vim
    ln -s ${PWD}/colors ~/.vim
}

# 安装mac平台字体
function install_fonts_on_mac()
{
    rm -rf ~/Library/Fonts/Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf
    cp ./fonts/Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf ~/Library/Fonts
}

# 安装linux平台字体
function install_fonts_on_linux()
{
    mkdir ~/.fonts

    rm -rf ~/.fonts/PowerlineSymbols.otf
    cp ./fonts/PowerlineSymbols.otf ~/.fonts

    rm -rf ~/.fonts/Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf
    cp ./fonts/Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf ~/.fonts

    fc-cache -vf ~/.fonts

    mkdir -p ~/.config/fontconfig/conf.d

    rm -rf ~/.config/fontconfig/conf.d/10-powerline-symbols.conf
    cp ./fonts/10-powerline-symbols.conf ~/.config/fontconfig/conf.d
}

# 克隆插件管理软件Vundle
function clone_vundle()
{
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
}

# 安装vim插件
function install_vim_plugin()
{
    vim -c "PluginInstall" -c "q" -c "q"
}

# 在mac平台编译ycm插件
function compile_ycm_on_mac()
{
    cd ~/.vim/bundle/YouCompleteMe
    ./install.py --clang-completer
}

# 在linux平台编译ycm插件
function compile_ycm_on_linux()
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

# 改变一些文件、文件夹属组和用户关系
function chown_dir()
{
    who_is=$(who)
    current_user=${who_is%% *}
    sudo chown -R ${current_user}:${current_user} ~/.vim
    sudo chown -R ${current_user}:${current_user} ~/.cache
    # sudo chown ${current_user}:${current_user} ~/.vimrc
    sudo chown ${current_user}:${current_user} ~/.vimrc.local
    sudo chown ${current_user}:${current_user} ~/.viminfo
    # sudo chown ${current_user}:${current_user} ~/.ycm_extra_conf.py
}

# 在mac平台安装vimplus
function install_vimplus_on_mac()
{
    install_prepare_software_on_mac
    copy_files
    install_fonts_on_mac
    clone_vundle
    install_vim_plugin
    compile_ycm_on_mac
    print_logo
}

function begin_install_vimplus()
{
    copy_files
    install_fonts_on_linux
    clone_vundle
    install_vim_plugin
    compile_ycm_on_linux
    chown_dir
    print_logo
}

# 在ubuntu发行版安装vimplus
function install_vimplus_on_ubuntu()
{
    install_prepare_software_on_ubuntu
    begin_install_vimplus
}

# 在centos发行版安装vimplus
function install_vimplus_on_centos()
{
    install_prepare_software_on_centos
    begin_install_vimplus
}

# 在linux平台安装vimplus
function install_vimplus_on_linux()
{
    type=`get_linux_platform_type`
    echo "linux platform type: "${type}

    if [ ${type} == "ubuntu" ]; then
        install_vimplus_on_ubuntu
    elif [ ${type} == "centos" ]; then
        install_vimplus_on_centos
    else
        echo "not support this linux platform type: "${type}
    fi
}

# main函数
function main()
{
    type=`get_platform_type`
    echo "platform type: "${type}

    if [ ${type} == "Darwin" ]; then 
        install_vimplus_on_mac
    elif [ ${type} == "Linux" ]; then
        install_vimplus_on_linux
    else
        echo "not support platform type: "${type}
    fi
}

# 调用main函数
main


