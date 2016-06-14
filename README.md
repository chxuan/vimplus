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
 - [auto-pairs][7]
 - [DoxygenToolkit][8]
 - [ctrlp][9]
 - [tagbar][10]
 - [vim-devicons][11]
 - [vim-surround][12]
 - [vim-commentary][13]
 - [tabular][14]
 - [vim-coloresque][15]
 - [change-colorscheme][16](I am the author)
 - etc...

### Centos Installation

    git clone https://github.com/chxuan/vimplus.git
    cd ./vimplus
    sudo ./install.sh

Run the `install.sh` script will automatically install and configure vim, installation takes about 40 minutes, mainly download compiler [Valloric/YouCompleteMe][17] time-consuming, please wait until the installation is complete ^ _ ^,**if the installation fails**, please see [Warning](#Warning).

The installation script will automatically install some software below:
 - vim
 - g++ 
 - ctags 
 - cmake
 - python2
 - python3

and some plugins below:

 - [Vundle][18]
 - [YouCompleteMe][19]
 - [NerdTree][20]
 - [nerdcommenter][21]
 - [Airline][22]
 - [auto-pairs][23]
 - [DoxygenToolkit][24]
 - [ctrlp][25]
 - [tagbar][26]
 - [vim-devicons][27]
 - [vim-surround][28]
 - [vim-commentary][29]
 - [tabular][30]
 - [vim-coloresque][31]
 - [change-colorscheme][32](I am the author)
 - etc...

Configuration ycm
------------
Run the `install.sh` script after the installation is complete, `HOME` directory will exist [.ycm_extra_conf.py][33] and `.vimrc`, the file is YCM implement C++ and other languages syntax completion function profile, I would put a general in the `HOME` directory, then copy `each project` a [.ycm_extra_conf.py][34],**don't** just copy/paste that file somewhere and expect things to magically work; **your project needs different flags**. Hint: just replace the strings in the `flags` variable with compilation flags necessary for your project. That should be enough for 99% of projects.

Note
------------
 1. In order to use [vim-devicons][35], you have to set font, if you don't have guifont set and are not running gvim you will need to set the terminal font(you have to set this font:`Droid Sans Mono for Powerline Nerd Font Complete`).
 
Shortcuts
------------
 - Directory tree `<F3>`
 - Display functions, global variables, macro definitions `<F4>`
 - Display static code analysis `<F5>`
 - .h .cpp file quickly switch `<F2>`
 - Go to declaration `<, + u>`
 - Go to definition `<, + i>`
 - Open the include file `<, + o>`
 - Buffer switch `<Ctrl + P/Ctrl + N>`
 - Cursor position switch `<Ctrl + O/Ctrl + I>`
 - Fuzzy Find File `<Ctrl + f>`
 - Surround `<ys{motion or text-object}{char}/cs{orig_char}{dest_char}/ds{char}>`
 - Comment code `<gcc/gcap/gc>`
 - Change the colorscheme `<F10/F9>`

Features
------------
### Syntax completion

[YouCompleteMe][36] plugin provides syntax completion function, and YouCompleteMe is a fast, as-you-type, fuzzy-search code completion engine for Vim.
![此处输入图片的描述][37]

### Full path fuzzy file, buffer, mru, tag
[ctrlp][38] plugin provides full path fuzzy file, buffer, mru, tag, ... finder for Vim.
![此处输入图片的描述][39]

### vim-airline
Lean & mean status/tabline for vim that's light as air.
![此处输入图片的描述][40]

### vim-surround
Surround a vim text object with a pair of symmetrical chars. We can also remove or change the ones already there.
![此处输入图片的描述][41]

### vim-commentary
An extremely easy tool to toggle commentary in lines and visual selections. We only need to enter a mapping and a movement to do the action, as simple as that.
![此处输入图片的描述][42]

### auto-pairs
auto-pairs provides smart auto-completion for delimiters like (), {}, [], "", '', ``.
![此处输入图片的描述][43]

### vim-devicons
![此处输入图片的描述][44]
![此处输入图片的描述][45]
![此处输入图片的描述][46]

### vim-coloresque
![此处输入图片的描述][47]

### Change the colorscheme
[change-colorscheme][48] plugin provides quick change theme function.
![此处输入图片的描述][49]

### <span id="Warning">**Warning**</span>
------------
 1. If poor network conditions may fail to install, basically [Valloric/YouCompleteMe][50] installation fails, after a failed installation will need to `rm -rf ~/.vim/bundle/YouCompleteMe`, and then re-execute the `install.sh` can be re-installed, the program will automatically install the plug-in installation fails,**or I have** [YouCompleteMe.tar.gz][51],download it and then `tar -xvf YouCompleteMe.tar.gz -C ~/.vim/bundle/`,then `cd ~/.vim/bundle/YouCompleteMe` and run `python ./install.py --clang-completer`.
 2. In `ubuntu16.04LTS` installation may fail([Valloric/YouCompleteMe][52] installation fails), **because vim default support for plug python3 compiled**, after a failed installation, manually `cd ~/.vim/bundle/YouCompleteMe`, then run `python3 ./install.py --clang-completer`.


  [1]: https://github.com/Valloric/YouCompleteMe
  [2]: https://github.com/VundleVim/Vundle.vim
  [3]: https://github.com/Valloric/YouCompleteMe
  [4]: https://github.com/scrooloose/nerdtree
  [5]: https://github.com/scrooloose/nerdcommenter
  [6]: https://github.com/vim-airline/vim-airline
  [7]: https://github.com/jiangmiao/auto-pairs
  [8]: https://github.com/vim-scripts/DoxygenToolkit.vim
  [9]: https://github.com/ctrlpvim/ctrlp.vim
  [10]: https://github.com/majutsushi/tagbar
  [11]: https://github.com/ryanoasis/vim-devicons
  [12]: https://github.com/tpope/vim-surround
  [13]: https://github.com/tpope/vim-commentary
  [14]: https://github.com/godlygeek/tabular
  [15]: https://github.com/gorodinskiy/vim-coloresque
  [16]: https://github.com/chxuan/change-colorscheme
  [17]: https://github.com/Valloric/YouCompleteMe
  [18]: https://github.com/VundleVim/Vundle.vim
  [19]: https://github.com/Valloric/YouCompleteMe
  [20]: https://github.com/scrooloose/nerdtree
  [21]: https://github.com/scrooloose/nerdcommenter
  [22]: https://github.com/vim-airline/vim-airline
  [23]: https://github.com/jiangmiao/auto-pairs
  [24]: https://github.com/vim-scripts/DoxygenToolkit.vim
  [25]: https://github.com/ctrlpvim/ctrlp.vim
  [26]: https://github.com/majutsushi/tagbar
  [27]: https://github.com/ryanoasis/vim-devicons
  [28]: https://github.com/tpope/vim-surround
  [29]: https://github.com/tpope/vim-commentary
  [30]: https://github.com/godlygeek/tabular
  [31]: https://github.com/gorodinskiy/vim-coloresque
  [32]: https://github.com/chxuan/change-colorscheme
  [33]: https://github.com/chxuan/vimplus/blob/master/.ycm_extra_conf.py
  [34]: https://github.com/chxuan/vimplus/blob/master/.ycm_extra_conf.py
  [35]: https://github.com/ryanoasis/vim-devicons
  [36]: https://github.com/VundleVim/Vundle.vim
  [37]: https://camo.githubusercontent.com/1f3f922431d5363224b20e99467ff28b04e810e2/687474703a2f2f692e696d6775722e636f6d2f304f50346f6f642e676966
  [38]: https://github.com/ctrlpvim/ctrlp.vim
  [39]: https://camo.githubusercontent.com/e15ac916ab9a14dd07135cb2d985cc7333200a38/687474703a2f2f692e696d6775722e636f6d2f614f63774877742e706e67
  [40]: https://camo.githubusercontent.com/ba79534309330accd776a8d2a0712f7c4037d7f9/68747470733a2f2f662e636c6f75642e6769746875622e636f6d2f6173736574732f3330363530322f313037323632332f34346332393261302d313439352d313165332d396365362d6463616461336631633533362e676966
  [41]: https://camo.githubusercontent.com/1f02cead8bdcf894f26b0006c44068a33a7dc8e5/687474703a2f2f6a6f65646963617374726f2e636f6d2f7374617469632f70696374757265732f737572726f756e645f656e2e676966
  [42]: https://camo.githubusercontent.com/2f5cb5bc9a964b0d9e623b5b3aff0314294ac841/687474703a2f2f6a6f65646963617374726f2e636f6d2f7374617469632f70696374757265732f636f6d6d656e746172795f656e2e676966
  [43]: https://camo.githubusercontent.com/372b34413e710cdbc95c5a5c1f901baf9e77791d/687474703a2f2f6a6f65646963617374726f2e636f6d2f7374617469632f70696374757265732f736d617274696e7075745f656e2e676966
  [44]: https://raw.githubusercontent.com/wiki/ryanoasis/vim-devicons/screenshots/v0.8.x/nerdtree-1.png
  [45]: https://raw.githubusercontent.com/wiki/ryanoasis/vim-devicons/screenshots/v0.8.x/nerdtree-2.png
  [46]: https://raw.githubusercontent.com/wiki/ryanoasis/vim-devicons/screenshots/v0.8.x/nerdtree-3.png
  [47]: https://camo.githubusercontent.com/70916a51f45b5729332803c5de303f6f1849fc50/68747470733a2f2f7261772e6769746875622e636f6d2f676f726f64696e736b69792f76696d2d636f6c6f7265737175652f6d61737465722f73637265656e2e706e67
  [48]: https://github.com/chxuan/change-colorscheme
  [49]: https://raw.githubusercontent.com/chxuan/vimplus/master/screenshots/change-colorscheme.gif
  [50]: https://github.com/Valloric/YouCompleteMe
  [51]: http://pan.baidu.com/s/1kUIa1kN
  [52]: https://github.com/Valloric/YouCompleteMe
