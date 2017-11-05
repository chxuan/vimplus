![][1]

An automatic configuration program for vim
===============================================

![][2]

安装
------------
### Mac OS X

- 安装[HomeBrew][3]
 
    ```bash
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```

- 安装vimplus

    ```bash
    git clone https://github.com/chxuan/vimplus.git
    cd ./vimplus
    ./install.sh
    ```

### Ubuntu

- 版本要求

    `ubuntu14.04`及其以上`64`位系统。

- 安装vimplus

    ```bash
    git clone https://github.com/chxuan/vimplus.git
    cd ./vimplus
    sudo ./install.sh
    ```

### Centos

- 版本要求

    `centos7`及其以上`64`位系统。

- 安装vimplus

    ```bash
    git clone https://github.com/chxuan/vimplus.git
    cd ./vimplus
    sudo ./install.sh
    ```

部分插件列表
------------
 - [Vundle][4]
 - [YouCompleteMe][5]
 - [NerdTree][6]
 - [nerdcommenter][7]
 - [Airline][8]
 - [auto-pairs][9]
 - [DoxygenToolkit][10]
 - [ctrlp][11]
 - [tagbar][12]
 - [vim-devicons][13]
 - [vim-surround][14]
 - [vim-commentary][15]
 - [vim-repeat][16]
 - [vim-endwise][17]
 - [tabular][18]
 - [vim-dirdiff][19]
 - [vim-coloresque][20]
 - [vim-easymotion][21]
 - [incsearch.vim][22]
 - [vim-startify][23]
 - [markdown-preview][24]
 - [change-colorscheme][25]
 - etc...

快捷键
------------

 - Leader键为 `,`
 - 打开/关闭目录树 `<Leader>n`
 - 显示函数、变量、宏列表 `<Leader>t`
 - 分析语法错误 `<F5>`
 - .h .cpp 文件切换 `<Leader>a`
 - 转到函数实现 `<Leader>u`
 - 转到函数声明 `<Leader>i`
 - 打开include文件 `<Leader>o`
 - 窗口切换 `Ctrl + P/Ctrl + N`
 - 光标位置切换 `Ctrl + O/Ctrl + I`
 - 模糊搜索文件 `Ctrl + f`
 - Surround `ys{motion or text-object}{char}/cs{orig_char}{dest_char}/ds{char}`
 - 注释 `gcc/gcap/gc/,ca/,cA`
 - 目录比较 `:DirDiff <dir1> <dir2>`
 - 重复上次操作 `.`
 - 改变主题颜色 `F9/F10`
 - 单词跳转 `<Leader>w`
 - 启用/关闭markdown实时预览 `F7/F8`

Q & A
------------

- **`安装vimplus后Airline等插件有乱码，怎么解决？`**

    linux和mac系统需设置终端字体为DroidSansMonofor Powerline Nerd Font。

- **`xshell连接远程主机使用NerdTree出现错位！！！`**

    执行rm -rf ~/vim/bundle/vim-devicons命令，将vim-devicons删除即可，或移动到其他地方。

- **`安装vimplus会经常失败，安装了几次都不成功！！！`**

    vimplus安装时需要访问外国网站，犹豫网络原因，可能会失败，安装成功也要1个多小时，ycm插件有200M左右，下载比较耗时，这里有下载好的[YouCompleteMe.tar.gz][26]文件，下载后解压到~/.vim/bundle/目录，并进入YouCompleteMe目录执行sudo ./install.py --clang-completer即可安装。

- **`使用第三方库时怎么让ycm补全第三方库API？`**

    vimplus安装完毕之后，`~`目录下将会生成两个隐藏文件分别是.vimrc和.ycm_extra_conf.py，其中.vimrc是vim的配置文件，.ycm_extra_conf.py是ycm插件的配置文件，当你需要创建一个project时，需要将.ycm_extra_conf.py拷贝到project的顶层目录，通过修改该配置文件里面的`flags`变量来添加你的第三方库路径。

- **`安装vimplus完成后ycm不能够工作！！！`**

    这里的原因可能就有很多了，可能每个人遇到的问题不一样，但`vimplus`尽最大努力不让用户操心，需要注意的是ycm插件只支持`64`位的系统，更多信息请访问[ycm官网][27]。

- **`使用vimplus为什么不能补全JS、Go、Java等语言？`**

    目前vimplus只支持C、C++、Shell、vimscript、Python等语言补全，后序会支持更多的语言，若您真的需要使用其他语言，您可以在vimplus基础上扩展。

- **`以上没有我遇到的问题怎么办？`**

    您可以通过上网找解决方法，或提[Issues][28]，也可以通过发邮件方式`787280310@qq.com`一起讨论解决方法。

- **`vimplus用起来真的太棒了，怎么办？`**

    那就麻烦您打赏一颗星星吧，给予我继续维护的动力。

特性展示
------------

- YouCompleteMe 

    ![][29]

- ctrlp 

    ![][30]

- vim-airline

    ![][31]

- vim-surround

    ![][32]

- vim-commentary

    ![][33]

- auto-pairs

    ![][34]

- vim-easymotion

    ![][35]

- vim-devicons

    ![][36]

- vim-startify

    ![][37]

- markdown-preview

    ![][38]


  [1]: https://raw.githubusercontent.com/chxuan/vimplus/master/screenshots/vimplus.png
  [2]: https://raw.githubusercontent.com/chxuan/vimplus/master/screenshots/main.png
  [3]: https://brew.sh/
  [4]: https://github.com/VundleVim/Vundle.vim
  [5]: https://github.com/Valloric/YouCompleteMe
  [6]: https://github.com/scrooloose/nerdtree
  [7]: https://github.com/scrooloose/nerdcommenter
  [8]: https://github.com/vim-airline/vim-airline
  [9]: https://github.com/jiangmiao/auto-pairs
  [10]: https://github.com/vim-scripts/DoxygenToolkit.vim
  [11]: https://github.com/ctrlpvim/ctrlp.vim
  [12]: https://github.com/majutsushi/tagbar
  [13]: https://github.com/ryanoasis/vim-devicons
  [14]: https://github.com/tpope/vim-surround
  [15]: https://github.com/tpope/vim-commentary
  [16]: https://github.com/tpope/vim-repeat
  [17]: https://github.com/tpope/vim-endwise
  [18]: https://github.com/godlygeek/tabular
  [19]: https://github.com/will133/vim-dirdiff
  [20]: https://github.com/gko/vim-coloresque
  [21]: https://github.com/easymotion/vim-easymotion
  [22]: https://github.com/haya14busa/incsearch.vim
  [23]: https://github.com/mhinz/vim-startify
  [24]: https://github.com/iamcco/markdown-preview.vim
  [25]: https://github.com/chxuan/change-colorscheme
  [26]: https://pan.baidu.com/s/1kVdgsRl
  [27]: https://github.com/Valloric/YouCompleteMe
  [28]: https://github.com/chxuan/vimplus/issues
  [29]: https://camo.githubusercontent.com/1f3f922431d5363224b20e99467ff28b04e810e2/687474703a2f2f692e696d6775722e636f6d2f304f50346f6f642e676966
  [30]: https://camo.githubusercontent.com/e15ac916ab9a14dd07135cb2d985cc7333200a38/687474703a2f2f692e696d6775722e636f6d2f614f63774877742e706e67
  [31]: https://camo.githubusercontent.com/ba79534309330accd776a8d2a0712f7c4037d7f9/68747470733a2f2f662e636c6f75642e6769746875622e636f6d2f6173736574732f3330363530322f313037323632332f34346332393261302d313439352d313165332d396365362d6463616461336631633533362e676966
  [32]: https://camo.githubusercontent.com/1f02cead8bdcf894f26b0006c44068a33a7dc8e5/687474703a2f2f6a6f65646963617374726f2e636f6d2f7374617469632f70696374757265732f737572726f756e645f656e2e676966
  [33]: https://camo.githubusercontent.com/2f5cb5bc9a964b0d9e623b5b3aff0314294ac841/687474703a2f2f6a6f65646963617374726f2e636f6d2f7374617469632f70696374757265732f636f6d6d656e746172795f656e2e676966
  [34]: https://camo.githubusercontent.com/372b34413e710cdbc95c5a5c1f901baf9e77791d/687474703a2f2f6a6f65646963617374726f2e636f6d2f7374617469632f70696374757265732f736d617274696e7075745f656e2e676966
  [35]: https://camo.githubusercontent.com/d5f800b9602faaeccc2738c302776a8a11797a0e/68747470733a2f2f662e636c6f75642e6769746875622e636f6d2f6173736574732f333739373036322f323033393335392f61386539333864362d383939662d313165332d383738392d3630303235656138333635362e676966
  [36]: https://raw.githubusercontent.com/wiki/ryanoasis/vim-devicons/screenshots/v0.9.x/overall-screenshot.png
  [37]: https://raw.githubusercontent.com/mhinz/vim-startify/master/images/startify-menu.png
  [38]: https://cloud.githubusercontent.com/assets/5492542/15363504/839753be-1d4b-11e6-9ac8-def4d7122e8d.gif
