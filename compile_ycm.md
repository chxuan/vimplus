## 安装vimplus(手动编译安装ycm)

### Mac OS X

#### 安装[HomeBrew][3]
 
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#### 克隆vimplus

    git clone https://github.com/chxuan/vimplus.git ~/.vimplus
    
#### 禁用ycm插件

    cd ~/.vimplus
    vim .vimrc
    " Plug 'Valloric/YouCompleteMe' //注释掉ycm插件，不进行自动安装
    
#### 安装vimplus

    ./install.sh

#### 下载ycm

下载[YouCompleteMe.tar.gz][1]并解压到`~/.vim/plugged/`

#### 编译ycm

    cd ~/.vim/plugged/YouCompleteMe
    ./install.py --clang-completer --system-libclang //mac 10.14以前用户执行该命令
    ./install.py --clang-completer                   //mac 10.14及其以后用户执行该命令

#### 启用ycm插件

    Plug 'Valloric/YouCompleteMe' //编辑.vimrc文件，将之前注释打开，启用ycm插件

#### 设置Nerd Font

为防止vimplus显示乱码，需设置mac终端字体为`Droid Sans Mono Nerd Font`。

### Linux 64-bit

#### 支持以下发行版

 - `Ubuntu14.04`及其以上系统
 - `Centos7`及其以上系统
 - Debian
 - Deepin
 - Linux Mint
 - ArchLinux
 - openSUSE

#### 克隆vimplus

    git clone https://github.com/chxuan/vimplus.git ~/.vimplus
    
#### 禁用ycm插件

    cd ~/.vimplus
    vim .vimrc
    " Plug 'Valloric/YouCompleteMe' //注释掉ycm插件，不进行自动安装
    
#### 安装vimplus(请在普通用户下安装)

    ./install.sh //不加sudo

#### 下载ycm

下载[YouCompleteMe_linux_with_clang.tar.gz][2]并解压到`~/.vim/plugged/`

#### 编译ycm

    cd ~/.vim/plugged/YouCompleteMe
    ./install.py --clang-completer

#### 启用ycm插件

    Plug 'Valloric/YouCompleteMe' //编辑.vimrc文件，将之前注释打开，启用ycm插件

#### 设置Nerd Font

为防止vimplus显示乱码，需设置linux终端字体为`Droid Sans Mono Nerd Font`。


  [1]: https://pan.baidu.com/s/1-Z_U-eKbkMQqmI03qTzmFw
  [2]: https://pan.baidu.com/s/1eksvjwORYbZhG3phLNJHEQ
  [3]: https://brew.sh/
