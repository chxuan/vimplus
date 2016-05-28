vimplus: An automatic configuration program for vim
===============================================


Intro
-----

I usually use vim to write a C++ program, so in order to allow me to write C++ more enjoyable, I made some vim automatically configured, the following I will be a presentation of my vimplus.

Screenshots
------------
This figure is below a real shot after I configured vim.
![enter image description here](https://raw.githubusercontent.com/chxuan/vimplus/master/screenshots/main.png)

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
 - [auto-pairs][8]
 - [DoxygenToolkit][9]
 - [ctrlp][10]
 - [tagbar][11]
 - [vim-devicons][12]
 - [vim-surround][13]
 - [tabular][14]
 - [change-colorscheme][15](I am the author)
 - etc...

### Centos Installation

    git clone https://github.com/chxuan/vimplus.git
    cd ./vimplus
    sudo ./install.sh

Run the `install.sh` script will automatically install and configure vim, installation takes about 40 minutes, mainly download compiler [Valloric/YouCompleteMe][16] time-consuming, please wait until the installation is complete ^ _ ^,**if the installation fails**, please see [Warning](#Warning).

The installation script will automatically install some software below:
 - vim
 - g++ 
 - ctags 
 - cmake
 - python2
 - python3

and some plugins below:

 - [Vundle][17]
 - [YouCompleteMe][18]
 - [NerdTree][19]
 - [nerdcommenter][20]
 - [Airline][21]
 - [auto-pairs][23]
 - [DoxygenToolkit][24]
 - [ctrlp][25]
 - [tagbar][26]
 - [vim-devicons][27]
 - [vim-surround][28]
 - [tabular][29]
 - [change-colorscheme][30](I am the author)
 - etc...

Configuration ycm
------------

Run the `install.sh` script after the installation is complete, `HOME` directory will exist [.ycm_extra_conf.py][31] and `.vimrc`, the file is YCM implement C++ and other languages syntax completion function profile, I would put a general in the `HOME` directory, then copy `each project` a [.ycm_extra_conf.py][32],**don't** just copy/paste that file somewhere and expect things to magically work; **your project needs different flags**. Hint: just replace the strings in the `flags` variable with compilation flags necessary for your project. That should be enough for 99% of projects.

Note
------------

 1. In order to use [vim-devicons][33], you have to set font, if you don't have guifont set and are not running gvim you will need to set the terminal font(you have to set this font:`Droid Sans Mono for Powerline Nerd Font Complete`).

Features
------------

### Syntax completion

[YouCompleteMe][34] plugin provides syntax completion function, and YouCompleteMe is a fast, as-you-type, fuzzy-search code completion engine for Vim.
![此处输入图片的描述][35]

### Change the colorscheme
[change-colorscheme][36] plugin provides quick change theme function.
![此处输入图片的描述][37]

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

 1. If poor network conditions may fail to install, basically [Valloric/YouCompleteMe][38] installation fails, after a failed installation will need to `rm -rf ~/.vim/bundle/YouCompleteMe`, and then re-execute the `install.sh` can be re-installed, the program will automatically install the plug-in installation fails,**or I have** [YouCompleteMe.tar.gz][39],download it and then `tar -xvf YouCompleteMe.tar.gz -C ~/.vim/bundle/`,then `cd ~/.vim/bundle/YouCompleteMe` and run `python ./install.py --clang-completer`.
 2. In `ubuntu16.04LTS` installation may fail([Valloric/YouCompleteMe][40] installation fails), **because vim default support for plug python3 compiled**, after a failed installation, manually `cd ~/.vim/bundle/YouCompleteMe`, then run `python3 ./install.py --clang-completer`.


  [1]: https://github.com/Valloric/YouCompleteMe
  [2]: https://github.com/VundleVim/Vundle.vim
  [3]: https://github.com/Valloric/YouCompleteMe
  [4]: https://github.com/scrooloose/nerdtree
  [5]: https://github.com/scrooloose/nerdcommenter
  [6]: https://github.com/vim-airline/vim-airline
  [8]: https://github.com/jiangmiao/auto-pairs
  [9]: https://github.com/vim-scripts/DoxygenToolkit.vim
  [10]: https://github.com/ctrlpvim/ctrlp.vim
  [11]: https://github.com/majutsushi/tagbar
  [12]: https://github.com/ryanoasis/vim-devicons
  [13]: https://github.com/tpope/vim-surround
  [14]: https://github.com/godlygeek/tabular
  [15]: https://github.com/chxuan/change-colorscheme
  [16]: https://github.com/Valloric/YouCompleteMe
  [17]: https://github.com/VundleVim/Vundle.vim
  [18]: https://github.com/Valloric/YouCompleteMe
  [19]: https://github.com/scrooloose/nerdtree
  [20]: https://github.com/scrooloose/nerdcommenter
  [21]: https://github.com/vim-airline/vim-airline
  [22]: https://github.com/vim-scripts/taglist.vim
  [23]: https://github.com/jiangmiao/auto-pairs
  [24]: https://github.com/vim-scripts/DoxygenToolkit.vim
  [25]: https://github.com/ctrlpvim/ctrlp.vim
  [26]: https://github.com/majutsushi/tagbar
  [27]: https://github.com/ryanoasis/vim-devicons
  [28]: https://github.com/tpope/vim-surround
  [29]: https://github.com/godlygeek/tabular
  [30]: https://github.com/chxuan/change-colorscheme
  [31]: https://github.com/chxuan/vimplus/blob/master/.ycm_extra_conf.py
  [32]: https://github.com/chxuan/vimplus/blob/master/.ycm_extra_conf.py
  [33]: https://github.com/ryanoasis/vim-devicons
  [34]: https://github.com/VundleVim/Vundle.vim
  [35]: https://camo.githubusercontent.com/1f3f922431d5363224b20e99467ff28b04e810e2/687474703a2f2f692e696d6775722e636f6d2f304f50346f6f642e676966
  [36]: https://github.com/chxuan/change-colorscheme
  [37]: https://raw.githubusercontent.com/chxuan/vimplus/master/screenshots/change-colorscheme.gif
  [38]: https://github.com/Valloric/YouCompleteMe
  [39]: http://pan.baidu.com/s/1kUIa1kN
  [40]: https://github.com/Valloric/YouCompleteMe
