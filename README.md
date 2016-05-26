vimplus: An automatic configuration program for vim
===============================================


Intro
-----

I usually use vim to write a C++ program, so in order to allow me to write C++ more enjoyable, I made some vim automatically configured, the following I will be a presentation of my vimplus.

Screenshots
------------
This figure is below a real shot after I configured vim.
![enter image description here](https://raw.githubusercontent.com/chxuan/vimplus/master/screenshot/screenshot.png)

Installation
------------

### Ubuntu Installation

    git clone https://github.com/chxuan/vimplus.git
    cd ./vimplus
    sudo ./install.sh

Run the `install.sh` script will automatically install and configure vim, installation takes about 40 minutes, mainly download compiler [Valloric/YouCompleteMe][1] time-consuming, please wait until the installation is complete ^ _ ^,**if the installation fails**, please see [Warning](#Warning).

The installation script will automatically install some software below:
 - vim
 - g++ 
 - ctags 
 - cmake
 - python2
 - python3

and some plugins below:

 - [Vundle][2]
 - [YouCompleteMe][3]
 - [NerdTree][4]
 - [nerdcommenter][5]
 - [Airline][6]
 - [taglist][7]
 - [auto-pairs][8]
 - [DoxygenToolkit][9]
 - [ctrlp][10]
 - [tagbar][11]
 - [change-colorscheme][12](I am the author)
 - etc...

### Centos Installation

    git clone https://github.com/chxuan/vimplus.git
    cd ./vimplus
    sudo ./install.sh

Run the `install.sh` script will automatically install and configure vim, installation takes about 40 minutes, mainly download compiler [Valloric/YouCompleteMe][13] time-consuming, please wait until the installation is complete ^ _ ^,**if the installation fails**, please see [Warning](#Warning).

The installation script will automatically install some software below:
 - vim
 - g++ 
 - ctags 
 - cmake
 - python2
 - python3

and some plugins below:

 - [Vundle][14]
 - [YouCompleteMe][15]
 - [NerdTree][16]
 - [nerdcommenter][17]
 - [Airline][18]
 - [taglist][19]
 - [auto-pairs][20]
 - [DoxygenToolkit][21]
 - [ctrlp][22]
 - [tagbar][23]
 - [change-colorscheme][24](I am the author)
 - etc...

Configuration ycm
------------

Run the `install.sh` script after the installation is complete, `HOME` directory will exist [.ycm_extra_conf.py][25] and `.vimrc`, the file is YCM implement C++ and other languages syntax completion function profile, I would put a general in the `HOME` directory, then copy `each project` a [.ycm_extra_conf.py][26],**don't** just copy/paste that file somewhere and expect things to magically work; **your project needs different flags**. Hint: just replace the strings in the `flags` variable with compilation flags necessary for your project. That should be enough for 99% of projects.

Features
------------

### Syntax completion

[YouCompleteMe][27] plugin provides syntax completion function, and YouCompleteMe is a fast, as-you-type, fuzzy-search code completion engine for Vim.
![此处输入图片的描述][28]

### Change the colorscheme
[change-colorscheme][29] plugin provides quick change theme function.
![此处输入图片的描述][30]

Shortcuts
------------

 - Directory tree `<F3>`
 - Display functions, global variables, macro definitions `<F4>`
 - Display static code analysis `<F5>`
 - .h .cpp file quickly switch `<F2>`
 - Go to declaration `<f + u>`
 - Go to definition `<f + i>`
 - Open the include file `<f + o>`
 - Buffer switch `<Ctrl + P/Ctrl + N>`
 - Cursor position switch `<Ctrl + O/Ctrl + I>`
 - Fuzzy Find File `<Ctrl + f>`
 - Change the colorscheme `<F10/F9>`

### <span id="Warning">**Warning**</span>
------------

 1. If poor network conditions may fail to install, basically [Valloric/YouCompleteMe][31] installation fails, after a failed installation will need to `rm -rf ~/.vim/bundle/YouCompleteMe`, and then re-execute the `install.sh` can be re-installed, the program will automatically install the plug-in installation fails,**or I have** [YouCompleteMe.tar.gz][32],download it and then `tar -xvf YouCompleteMe.tar.gz -C ~/.vim/bundle/`,then `cd ~/.vim/bundle/YouCompleteMe` and run `python ./install.py --clang-completer`.
 2. In `ubuntu16.04LTS` installation may fail([Valloric/YouCompleteMe][33] installation fails), **because vim default support for plug python3 compiled**, after a failed installation, manually `cd ~/.vim/bundle/YouCompleteMe`, then run `python3 ./install.py --clang-completer`.


  [1]: https://github.com/Valloric/YouCompleteMe
  [2]: https://github.com/VundleVim/Vundle.vim
  [3]: https://github.com/Valloric/YouCompleteMe
  [4]: https://github.com/scrooloose/nerdtree
  [5]: https://github.com/scrooloose/nerdcommenter
  [6]: https://github.com/vim-airline/vim-airline
  [7]: https://github.com/vim-scripts/taglist.vim
  [8]: https://github.com/jiangmiao/auto-pairs
  [9]: https://github.com/vim-scripts/DoxygenToolkit.vim
  [10]: https://github.com/ctrlpvim/ctrlp.vim
  [11]: https://github.com/majutsushi/tagbar
  [12]: https://github.com/chxuan/change-colorscheme
  [13]: https://github.com/Valloric/YouCompleteMe
  [14]: https://github.com/VundleVim/Vundle.vim
  [15]: https://github.com/Valloric/YouCompleteMe
  [16]: https://github.com/scrooloose/nerdtree
  [17]: https://github.com/scrooloose/nerdcommenter
  [18]: https://github.com/vim-airline/vim-airline
  [19]: https://github.com/vim-scripts/taglist.vim
  [20]: https://github.com/jiangmiao/auto-pairs
  [21]: https://github.com/vim-scripts/DoxygenToolkit.vim
  [22]: https://github.com/ctrlpvim/ctrlp.vim
  [23]: https://github.com/majutsushi/tagbar
  [24]: https://github.com/chxuan/change-colorscheme
  [25]: https://github.com/chxuan/vimplus/blob/master/.ycm_extra_conf.py
  [26]: https://github.com/chxuan/vimplus/blob/master/.ycm_extra_conf.py
  [27]: https://github.com/VundleVim/Vundle.vim
  [28]: https://camo.githubusercontent.com/1f3f922431d5363224b20e99467ff28b04e810e2/687474703a2f2f692e696d6775722e636f6d2f304f50346f6f642e676966
  [29]: https://github.com/chxuan/change-colorscheme
  [30]: https://raw.githubusercontent.com/chxuan/vimplus/master/screenshot/screenshot2.gif
  [31]: https://github.com/Valloric/YouCompleteMe
  [32]: http://pan.baidu.com/s/1kUIa1kN
  [33]: https://github.com/Valloric/YouCompleteMe
