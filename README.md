![此处输入图片的描述][1]
An automatic configuration program for vim
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

```bash
git clone https://github.com/chxuan/vimplus.git
cd ./vimplus
sudo ./install.sh
```

Run the `install.sh` script will automatically install and configure vim, installation takes about 40 minutes, mainly download compiler [Valloric/YouCompleteMe][2] time-consuming, please wait until the installation is complete :smile:,**if the installation fails**, please see [Warning](#Warning).

The installation script will automatically install some software below:
 - vim
 - g++ 
 - ctags 
 - cmake
 - python2
 - python3

and some plugins below:

 - [Vundle][3]
 - [YouCompleteMe][4]
 - [NerdTree][5]
 - [nerdcommenter][6]
 - [Airline][7]
 - [auto-pairs][8]
 - [DoxygenToolkit][9]
 - [ctrlp][10]
 - [tagbar][11]
 - [vim-devicons][12]
 - [vim-surround][13]
 - [vim-commentary][14]
 - [vim-repeat][15]
 - [vim-endwise][16]
 - [tabular][17]
 - [vim-dirdiff][18]
 - [vim-coloresque][19]
 - [change-colorscheme][20](I am the author)
 - etc...

### Centos Installation

```bash
git clone https://github.com/chxuan/vimplus.git
cd ./vimplus
sudo ./install.sh
```

Run the `install.sh` script will automatically install and configure vim, installation takes about 40 minutes, mainly download compiler [Valloric/YouCompleteMe][21] time-consuming, please wait until the installation is complete :smile:,**if the installation fails**, please see [Warning](#Warning).

The installation script will automatically install some software below:
 - vim
 - g++ 
 - ctags 
 - cmake
 - python2
 - python3

and some plugins below:

 - [Vundle][22]
 - [YouCompleteMe][23]
 - [NerdTree][24]
 - [nerdcommenter][25]
 - [Airline][26]
 - [auto-pairs][27]
 - [DoxygenToolkit][28]
 - [ctrlp][29]
 - [tagbar][30]
 - [vim-devicons][31]
 - [vim-surround][32]
 - [vim-commentary][33]
 - [vim-repeat][34]
 - [vim-endwise][35]
 - [tabular][36]
 - [vim-dirdiff][37]
 - [vim-coloresque][38]
 - [change-colorscheme][39](I am the author)
 - etc...

Configuration ycm
------------
Run the `install.sh` script after the installation is complete, `HOME` directory will exist [.ycm_extra_conf.py][40] and `.vimrc`, the file is YCM implement C++ and other languages syntax completion function profile, I would put a general in the `HOME` directory, then copy `each project` a [.ycm_extra_conf.py][41],**don't** just copy/paste that file somewhere and expect things to magically work; **your project needs different flags**. Hint: just replace the strings in the `flags` variable with compilation flags necessary for your project. That should be enough for 99% of projects.

Note
------------
 1. In order to use [vim-devicons][42], you have to set font, if you don't have guifont set and are not running gvim you will need to set the terminal font(you have to set this font:`Droid Sans Mono for Powerline Nerd Font Complete`).
 
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
 - DirDiff `:DirDiff <dir1> <dir2>`
 - Repeat `.`
 - Change the colorscheme `<F10/F9>`

Features
------------
### Syntax completion

[YouCompleteMe][43] plugin provides syntax completion function, and YouCompleteMe is a fast, as-you-type, fuzzy-search code completion engine for Vim.
![此处输入图片的描述][44]

### Full path fuzzy file, buffer, mru, tag
[ctrlp][45] plugin provides full path fuzzy file, buffer, mru, tag, ... finder for Vim.
![此处输入图片的描述][46]

### vim-airline
Lean & mean status/tabline for vim that's light as air.
![此处输入图片的描述][47]

### vim-surround
Surround a vim text object with a pair of symmetrical chars. We can also remove or change the ones already there.
![此处输入图片的描述][48]

### vim-commentary
An extremely easy tool to toggle commentary in lines and visual selections. We only need to enter a mapping and a movement to do the action, as simple as that.
![此处输入图片的描述][49]

### auto-pairs
auto-pairs provides smart auto-completion for delimiters like (), {}, [], "", '', ``.
![此处输入图片的描述][50]

### vim-devicons
![此处输入图片的描述][51]
![此处输入图片的描述][52]
![此处输入图片的描述][53]

### vim-coloresque
![此处输入图片的描述][54]

### vim-dirdiff
![此处输入图片的描述][55]

### Change the colorscheme
[change-colorscheme][56] plugin provides quick change theme function.
![此处输入图片的描述][57]

### <span id="Warning">**Warning**</span>
------------
 1. If poor network conditions may fail to install, basically [Valloric/YouCompleteMe][58] installation fails, after a failed installation will need to `rm -rf ~/.vim/bundle/YouCompleteMe`, and then re-execute the `install.sh` can be re-installed, the program will automatically install the plug-in installation fails,**or I have** [YouCompleteMe.tar.gz][59],download it and then `tar -xvf YouCompleteMe.tar.gz -C ~/.vim/bundle/`,then `cd ~/.vim/bundle/YouCompleteMe` and run `python ./install.py --clang-completer`.
 2. In `ubuntu16.04LTS` installation may fail([Valloric/YouCompleteMe][60] installation fails), **because vim default support for plug python3 compiled**, after a failed installation, manually `cd ~/.vim/bundle/YouCompleteMe`, then run `python3 ./install.py --clang-completer`.


  [1]: https://raw.githubusercontent.com/chxuan/vimplus/master/screenshots/vimplus.png
  [2]: https://github.com/Valloric/YouCompleteMe
  [3]: https://github.com/VundleVim/Vundle.vim
  [4]: https://github.com/Valloric/YouCompleteMe
  [5]: https://github.com/scrooloose/nerdtree
  [6]: https://github.com/scrooloose/nerdcommenter
  [7]: https://github.com/vim-airline/vim-airline
  [8]: https://github.com/jiangmiao/auto-pairs
  [9]: https://github.com/vim-scripts/DoxygenToolkit.vim
  [10]: https://github.com/ctrlpvim/ctrlp.vim
  [11]: https://github.com/majutsushi/tagbar
  [12]: https://github.com/ryanoasis/vim-devicons
  [13]: https://github.com/tpope/vim-surround
  [14]: https://github.com/tpope/vim-commentary
  [15]: https://github.com/tpope/vim-repeat
  [16]: https://github.com/tpope/vim-endwise
  [17]: https://github.com/godlygeek/tabular
  [18]: https://github.com/will133/vim-dirdiff
  [19]: https://github.com/gorodinskiy/vim-coloresque
  [20]: https://github.com/chxuan/change-colorscheme
  [21]: https://github.com/Valloric/YouCompleteMe
  [22]: https://github.com/VundleVim/Vundle.vim
  [23]: https://github.com/Valloric/YouCompleteMe
  [24]: https://github.com/scrooloose/nerdtree
  [25]: https://github.com/scrooloose/nerdcommenter
  [26]: https://github.com/vim-airline/vim-airline
  [27]: https://github.com/jiangmiao/auto-pairs
  [28]: https://github.com/vim-scripts/DoxygenToolkit.vim
  [29]: https://github.com/ctrlpvim/ctrlp.vim
  [30]: https://github.com/majutsushi/tagbar
  [31]: https://github.com/ryanoasis/vim-devicons
  [32]: https://github.com/tpope/vim-surround
  [33]: https://github.com/tpope/vim-commentary
  [34]: https://github.com/tpope/vim-repeat
  [35]: https://github.com/tpope/vim-endwise
  [36]: https://github.com/godlygeek/tabular
  [37]: https://github.com/will133/vim-dirdiff
  [38]: https://github.com/gorodinskiy/vim-coloresque
  [39]: https://github.com/chxuan/change-colorscheme
  [40]: https://github.com/chxuan/vimplus/blob/master/.ycm_extra_conf.py
  [41]: https://github.com/chxuan/vimplus/blob/master/.ycm_extra_conf.py
  [42]: https://github.com/ryanoasis/vim-devicons
  [43]: https://github.com/VundleVim/Vundle.vim
  [44]: https://camo.githubusercontent.com/1f3f922431d5363224b20e99467ff28b04e810e2/687474703a2f2f692e696d6775722e636f6d2f304f50346f6f642e676966
  [45]: https://github.com/ctrlpvim/ctrlp.vim
  [46]: https://camo.githubusercontent.com/e15ac916ab9a14dd07135cb2d985cc7333200a38/687474703a2f2f692e696d6775722e636f6d2f614f63774877742e706e67
  [47]: https://camo.githubusercontent.com/ba79534309330accd776a8d2a0712f7c4037d7f9/68747470733a2f2f662e636c6f75642e6769746875622e636f6d2f6173736574732f3330363530322f313037323632332f34346332393261302d313439352d313165332d396365362d6463616461336631633533362e676966
  [48]: https://camo.githubusercontent.com/1f02cead8bdcf894f26b0006c44068a33a7dc8e5/687474703a2f2f6a6f65646963617374726f2e636f6d2f7374617469632f70696374757265732f737572726f756e645f656e2e676966
  [49]: https://camo.githubusercontent.com/2f5cb5bc9a964b0d9e623b5b3aff0314294ac841/687474703a2f2f6a6f65646963617374726f2e636f6d2f7374617469632f70696374757265732f636f6d6d656e746172795f656e2e676966
  [50]: https://camo.githubusercontent.com/372b34413e710cdbc95c5a5c1f901baf9e77791d/687474703a2f2f6a6f65646963617374726f2e636f6d2f7374617469632f70696374757265732f736d617274696e7075745f656e2e676966
  [51]: https://raw.githubusercontent.com/wiki/ryanoasis/vim-devicons/screenshots/v0.8.x/nerdtree-1.png
  [52]: https://raw.githubusercontent.com/wiki/ryanoasis/vim-devicons/screenshots/v0.8.x/nerdtree-2.png
  [53]: https://raw.githubusercontent.com/wiki/ryanoasis/vim-devicons/screenshots/v0.8.x/nerdtree-3.png
  [54]: https://camo.githubusercontent.com/70916a51f45b5729332803c5de303f6f1849fc50/68747470733a2f2f7261772e6769746875622e636f6d2f676f726f64696e736b69792f76696d2d636f6c6f7265737175652f6d61737465722f73637265656e2e706e67
  [55]: https://raw.githubusercontent.com/will133/vim-dirdiff/master/screenshot.png
  [56]: https://github.com/chxuan/change-colorscheme
  [57]: https://raw.githubusercontent.com/chxuan/vimplus/master/screenshots/change-colorscheme.gif
  [58]: https://github.com/Valloric/YouCompleteMe
  [59]: http://pan.baidu.com/s/1kUIa1kN
  [60]: https://github.com/Valloric/YouCompleteMe
