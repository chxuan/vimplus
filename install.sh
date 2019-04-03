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
    elif which pacman > /dev/null; then
        echo "archlinux" # archlinux系列
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


# 判断是否是Debian版本
function is_debian()
{
    version=$(lsb_release -is)
    if [ "${version}" == "Debian" ]; then
        echo 1
    else
        echo 0
    fi
}

# 在ubuntu上源代码安装vim
function compile_vim_on_ubuntu()
{
    sudo apt-get remove -y vim vim-runtime gvim
    sudo apt-get remove -y vim-tiny vim-common vim-gui-common vim-nox
    sudo rm -rf /usr/bin/vim*
    sudo rm -rf /usr/local/bin/vim*
    sudo rm -rf /usr/share/vim/vim*
    sudo rm -rf /usr/local/share/vim/vim*
    rm -rf ~/vim

    sudo apt-get install -y libncurses5-dev libgnome2-dev libgnomeui-dev \
        libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
        libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev python3-dev ruby-dev lua5.1 lua5.1-dev

    git clone https://github.com/vim/vim.git ~/vim
    cd ~/vim
    ./configure --with-features=huge \
        --enable-multibyte \
        --enable-rubyinterp \
        --enable-pythoninterp \
        --with-python-config-dir=/usr/lib/python2.7/config \
        --enable-perlinterp \
        --enable-luainterp \
        --enable-gui=gtk2 \
        --enable-cscope \
        --prefix=/usr
    make
    sudo make install
    cd -
}

# 在centos上源代码安装vim
function compile_vim_on_centos()
{
    sudo rm -rf /usr/bin/vi
    sudo rm -rf /usr/bin/vim*
    sudo rm -rf /usr/local/bin/vim*
    sudo rm -rf /usr/share/vim/vim*
    sudo rm -rf /usr/local/share/vim/vim*
    rm -rf ~/vim

    sudo yum install -y ruby ruby-devel lua lua-devel luajit \
        luajit-devel ctags git python python-devel \
        python34 python34-devel tcl-devel \
        perl perl-devel perl-ExtUtils-ParseXS \
        perl-ExtUtils-XSpp perl-ExtUtils-CBuilder \
        perl-ExtUtils-Embed libX11-devel ncurses-devel
    
    git clone https://github.com/vim/vim.git ~/vim
    cd ~/vim
    ./configure --with-features=huge \
        --enable-multibyte \
        --with-tlib=tinfo \
        --enable-rubyinterp=yes \
        --enable-pythoninterp=yes \
        --with-python-config-dir=/usr/local/python-2.7.14/lib/python2.7/config \
        --enable-perlinterp=yes \
        --enable-luainterp=yes \
        --enable-gui=gtk2 \
        --enable-cscope \
        --prefix=/usr
    make
    sudo make install
    cd -
}

# 安装mac平台必要软件
function install_prepare_software_on_mac()
{
    brew install vim gcc cmake ctags-exuberant curl ack
}

# 安装centos发行版必要软件
function install_prepare_software_on_centos()
{
    sudo yum install -y ctags automake gcc gcc-c++ kernel-devel cmake python-devel python3-devel curl fontconfig ack
    compile_vim_on_centos
}

# 安装ubuntu发行版必要软件
function install_prepare_software_on_ubuntu()
{
    sudo apt-get update
    sudo apt-get install -y ctags build-essential cmake python python-dev python3-dev fontconfig curl libfile-next-perl ack-grep
    ubuntu_1604=`is_ubuntu1604`
    debian=`is_debian`
    echo ${ubuntu_1604}

    if [ ${ubuntu_1604} == 1 ]; then
        echo "Ubuntu 16.04 LTS"
        compile_vim_on_ubuntu
    elif [ ${debian} == 1 ]; then
        echo "Debian"
        compile_vim_on_ubuntu
    else
        echo "Not ubuntu 16.04 LTS"
        sudo apt-get install -y vim
    fi
}

# 安装archlinux发行版必要软件
function install_prepare_software_on_archlinux()
{
    sudo pacman -S --noconfirm vim ctags automake gcc cmake python3 python2 curl ack
}

# 拷贝文件
function copy_files()
{
    rm -rf ~/.vimrc
    ln -s ${PWD}/.vimrc ~

    rm -rf ~/.vimrc.local
    cp ${PWD}/.vimrc.local ~

    rm -rf ~/.ycm_extra_conf.py
    ln -s ${PWD}/.ycm_extra_conf.py ~

    mkdir ~/.vim
    rm -rf ~/.vim/colors
    ln -s ${PWD}/colors ~/.vim

    rm -rf ~/.vim/ftplugin
    ln -s ${PWD}/ftplugin ~/.vim
}

# 安装mac平台字体
function install_fonts_on_mac()
{
    rm -rf ~/Library/Fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf
    cp ./fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf ~/Library/Fonts
}

# 安装linux平台字体
function install_fonts_on_linux()
{
    mkdir ~/.fonts
    rm -rf ~/.fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf
    cp ./fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf ~/.fonts

    fc-cache -vf ~/.fonts
}

# 下载插件管理软件vim-plug
function download_vim_plug()
{
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

# 安装vim插件
function install_vim_plugin()
{
    vim -c "PlugInstall" -c "q" -c "q"
}

# linux编译ycm插件
function compile_ycm_on_linux()
{
    cd ~/.vim/plugged/YouCompleteMe
    ./install.py --clang-completer
}

# macos编译ycm, 原始方法
function compile_ycm_on_mac_legacy()
{
    cd ~/.vim/plugged/YouCompleteMe
    ./install.py --clang-completer --system-libclang
}

# macos编译ycm, Mojave上的方法
function compile_ycm_on_mac_mojave()
{
    echo "Installing macOS_10.14 sdk headers..."
    xcode-select --install
    open /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg
    cd ~/.vim/plugged/YouCompleteMe
    ./install.py --clang-completer
}

# 在MacOS上编译ycm
function compile_ycm_on_mac()
{
    mac_version=$(sw_vers | grep ProductVersion | cut -d '.' -f 2 -f 3)
    fix_macos_version_list=(14.1 14.2 14.3 14.4)
    echo "${fix_macos_version_list[@]}" | grep -wq "$mac_version" && \
        compile_ycm_on_mac_mojave || \
        compile_ycm_on_mac_legacy
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

# 在mac平台安装vimplus
function install_vimplus_on_mac()
{
    install_prepare_software_on_mac
    copy_files
    install_fonts_on_mac
    download_vim_plug
    install_vim_plugin
    compile_ycm_on_mac
    print_logo
}

function begin_install_vimplus()
{
    copy_files
    install_fonts_on_linux
    download_vim_plug
    install_vim_plugin
    compile_ycm_on_linux
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

# 在archlinux发行版安装vimplus
function install_vimplus_on_archlinux()
{
    install_prepare_software_on_archlinux
    begin_install_vimplus
}

# 在linux平台安装vimplus
function install_vimplus_on_linux()
{
    type=`get_linux_platform_type`
    echo "Linux platform type: "${type}

    if [ ${type} == "ubuntu" ]; then
        install_vimplus_on_ubuntu
    elif [ ${type} == "centos" ]; then
        install_vimplus_on_centos
    elif [ ${type} == "archlinux" ]; then
        install_vimplus_on_archlinux
    else
        echo "Not support this linux platform type: "${type}
    fi
}

# main函数
function main()
{
    type=`get_platform_type`
    echo "Platform type: "${type}

    if [ ${type} == "Darwin" ]; then 
        install_vimplus_on_mac
    elif [ ${type} == "Linux" ]; then
        install_vimplus_on_linux
    else
        echo "Not support platform type: "${type}
    fi
}

# 调用main函数
main


