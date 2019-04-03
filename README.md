![][1]

An automatic configuration program for vim
===============================================

![][2]

## 安装

### Mac OS X

- 安装[HomeBrew][3]
 
    ```bash
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```

- 安装vimplus

    ```bash
    git clone https://github.com/chxuan/vimplus.git ~/.vimplus
    cd ~/.vimplus
    ./install.sh
    ```

### Ubuntu

- 版本要求

    `ubuntu16.04`及其以上系统。

- 安装vimplus(建议在普通用户下安装)

    ```bash
    git clone https://github.com/chxuan/vimplus.git ~/.vimplus
    cd ~/.vimplus
    ./install.sh
    ```

### Centos

- 版本要求

    `centos7`及其以上系统。

- 安装vimplus(建议在普通用户下安装)

    ```bash
    git clone https://github.com/chxuan/vimplus.git ~/.vimplus
    cd ~/.vimplus
    ./install.sh
    ```

### ArchLinux

- 安装vimplus

    ```bash
    git clone https://github.com/chxuan/vimplus.git ~/.vimplus
    cd ~/.vimplus
    ./install.sh
    ```

## 个性化

修改 `~/.vimrc.local` 文件内容，以启用个性化定制，可覆盖 `~/.vimrc` 中的设置。


## 插件列表

| 插件                                | 说明                                                                           |
| -------                             | -----                                                                          |
| [cpp-mode][58]                      | 提供生成函数实现、函数声明/实现跳转、.h .cpp切换等功能(I'm author:smile:)      |
| [vim-edit][72]                      | 方便的文本编辑插件(I'm author:smile:)                                          |
| [change-colorscheme][27]            | 随心所欲切换主题(I'm author:smile:)                                            |
| [prepare-code][67]                  | 新建文件时，生成预定义代码片段(I'm author:smile:)                              |
| [vim-buffer][70]                    | vim缓存操作(I'm author:smile:)                                                 |
| [vimplus-startify][66]              | vimplus开始页面(修改自[mhinz/vim-startify][25])                                |
| [tagbar][74]                        | 使用[majutsushi/tagbar][13]的v2.3版本，[taglist][14]的替代品，显示类/方法/变量 |
| [vim-plug][4]                       | 比[Vundle][54]下载更快的插件管理软件                                           |
| [YouCompleteMe][5]                  | 史上最强大的基于语义的自动补全插件，支持C/C++、C#、Python、PHP等语言           |
| [NerdTree][6]                       | 代码资源管理器                                                                 |
| [vim-nerdtree-syntax-highlight][52] | NerdTree文件类型高亮                                                           |
| [nerdtree-git-plugin][53]           | NerdTree显示git状态                                                            |
| [vim-devicons][15]                  | 显示文件类型图标                                                               |
| [Airline][8]                        | 可以取代[powerline][9]的状态栏美化插件                                         |
| [auto-pairs][10]                    | 自动补全引号、圆括号、花括号等                                                 |
| [LeaderF][56]                       | 比[ctrlp][12]更强大的文件的模糊搜索工具                                        |
| [ack][62]                           | 强大的文本搜索工具                                                             |
| [vim-surround][16]                  | 自动增加、替换配对符的插件                                                     |
| [vim-commentary][17]                | 快速注释代码插件                                                               |
| [vim-repeat][18]                    | 重复上一次操作                                                                 |
| [vim-endwise][19]                   | if/end/endif/endfunction补全                                                   |
| [tabular][20]                       | 代码、注释、表格对齐                                                           |
| [vim-easymotion][23]                | 强大的光标快速移动工具，强大到颠覆你的插件观                                   |
| [incsearch.vim][24]                 | 模糊字符搜索插件                                                               |
| [markdown-preview][26]              | markdown实时预览                                                               |
| [vim-fugitive][36]                  | 集成Git                                                                        |
| [gv][64]                            | 显示git提交记录                                                                |
| [vim-slash][50]                     | 优化搜索，移动光标后清除高亮                                                   |
| [echodoc][57]                       | 补全函数时在命令栏显示函数签名                                                 |
| [vim-smooth-scroll][60]             | 让翻页更顺畅                                                                   |
| [clever-f.vim][68]                  | 强化f和F键                                                                     |
| [github-complete.vim][69]           | Emoji:dog:补全                                                                 |


## 快捷键

以下是部分快捷键，更详细的快捷键请查阅[vimplus帮助文档][59]。

| 快捷键       | 说明                                 |
| -------      | -----                                |
| `,`          | Leader Key                           |
| `<leader>n`  | 打开/关闭代码资源管理器              |
| `<leader>t`  | 打开/关闭函数列表                    |
| `<leader>a`  | .h .cpp 文件切换                     |
| `<leader>u`  | 转到函数声明                         |
| `<leader>U`  | 转到函数实现                         |
| `<leader>o`  | 打开include文件                      |
| `<leader>y`  | 拷贝函数声明                         |
| `<leader>p`  | 生成函数实现                         |
| `<leader>w`  | 单词跳转                             |
| `<leader>f`  | 搜索~目录下的文件                    |
| `<leader>F`  | 搜索当前目录下的文本                 |
| `<leader>g`  | 显示git仓库提交记录                  |
| `<leader>G`  | 显示当前文件提交记录                 |
| `<leader>gg` | 显示当前文件在某个commit下的完整内容 |
| `<leader>ff` | 语法错误自动修复(FixIt)              |
| `<c-p>`      | 切换到上一个buffer                   |
| `<c-n>`      | 切换到下一个buffer                   |
| `<leader>d`  | 删除当前buffer                       |
| `<leader>D`  | 删除当前buffer外的所有buffer         |
| `vim`        | 运行vim编辑器时,默认启动开始页面     |
| `<F5>`       | 显示语法错误提示窗口                 |
| `<F7>`       | 启用markdown实时预览                 |
| `<F8>`       | 关闭markdown实时预览                 |
| `<F9>`       | 显示上一主题                         |
| `<F10>`      | 显示下一主题                         |
| `<leader>l`  | 按竖线对齐                           |
| `<leader>=`  | 按等号对齐                           |
| `Ya`         | 复制行文本到字母a                    |
| `Da`         | 剪切行文本到字母a                    |
| `Ca`         | 改写行文本到字母a                    |
| `rr`         | 替换文本                             |
| `<leader>r`  | 全局替换，目前只支持单个文件         |
| `gcc`        | 注释代码                             |
| `gcap`       | 注释段落                             |
| `vif`        | 选中函数内容                         |
| `dif`        | 删除函数内容                         |
| `cif`        | 改写函数内容                         |
| `vaf`        | 选中函数内容（包括函数名 花括号）    |
| `daf`        | 删除函数内容（包括函数名 花括号）    |
| `caf`        | 改写函数内容（包括函数名 花括号）    |
| `fa`         | 查找字母a，然后再按f键查找下一个     |
| `<c-x><c-o>` | Emoji:dog:补全                       |


## Q & A

- **`安装vimplus后Airline等插件有乱码，怎么解决？`**

    linux和mac系统需设置终端字体为`Droid Sans Mono Nerd Font`。

- **`xshell连接远程主机不能使用vim-devicons或乱码。`**

    windows系统安装[Nerd Font][51]字体后并更改xshell字体即可。

- **`安装vimplus会经常失败，安装了几次都不成功！！！`**

    vimplus安装时需要访问外国网站，由于网络原因，可能会失败，安装成功也要1个多小时，ycm插件有200M左右，下载比较耗时，这里有下载好的[YouCompleteMe.tar.gz][37]文件，下载后解压到~/.vim/plugged/目录，并进入YouCompleteMe目录，linux用户执行`./install.py --clang-completer`，mac用户执行`./install.py --clang-completer --system-libclang`即可安装。

- **`使用第三方库时怎么让ycm补全第三方库API？`**

    vimplus安装完毕之后，`~`目录下将会生成两个隐藏文件分别是.vimrc和.ycm_extra_conf.py，其中.vimrc是vim的配置文件，.ycm_extra_conf.py是ycm插件的配置文件，当你需要创建一个project时，需要将.ycm_extra_conf.py拷贝到project的顶层目录，通过修改该配置文件里面的`flags`变量来添加你的第三方库路径。

- **`安装vimplus完成后ycm不能够工作！！！`**

    这里的原因可能就有很多了，可能每个人遇到的问题不一样，但`vimplus`尽最大努力不让用户操心，需要注意的是ycm插件只支持`64`位的系统，更多信息请访问[ycm官网][38]。

- **`在aaa用户下安装了vimplus，在bbb用户下不能使用？`**

    目前vimplus是基于用户的，如果你想在其他用户下也能使用vimplus，也需要单独安装。

- **`在Archlinux环境下不能使用ycm怎么办？(缺少libtinfo.so.5)`**

    在Archlinux下可以试着使用pkgfile命令搜索依赖的文件具体在什么包内，目前找到的包含libtinfo.so.5的包是ncurses5-compat-libs(AUR)或者32位的lib32-ncurses5-compat-libs(AUR)，安装后即可正常使用。

- **`以上没有我遇到的问题怎么办？`**

    您可以通过上网找解决方法，或提[Issues][39]，也可以通过发邮件方式`787280310@qq.com`一起讨论解决方法。

- **`vimplus用起来真的太棒了，怎么办？`**

    那就麻烦您打赏一颗:star::star:吧，给予我继续维护的动力。


## 贡献者

<table>
<tr>
<td width="20%"><a href="https://github.com/chxuan"><img src="https://avatars2.githubusercontent.com/u/6542180?s=400&v=4"/></a><p align="center">chxuan</p></td>
<td width="20%"><a href="https://github.com/dofy"><img src="https://avatars1.githubusercontent.com/u/344197?s=400&v=4"/></a><p align="center">dofy</p></td>
<td width="20%"><a href="https://github.com/urain39"><img src="https://avatars2.githubusercontent.com/u/16981964?s=400&v=4"/></a><p align="center">urain39</p></td>
<td width="20%"><a href="https://github.com/freedomDR"><img src="https://avatars3.githubusercontent.com/u/11146756?s=400&v=4"/></a><p align="center">freedomDR</p></td>
<td width="20%"><a href="https://github.com/starifly"><img src="https://avatars2.githubusercontent.com/u/2003879?s=400&v=4"/></a><p align="center">starifly</p></td>
</tr>
<tr>
<td width="20%"><a href="https://github.com/Shaloc"><img src="https://avatars2.githubusercontent.com/u/24523674?s=400&v=4"/></a><p align="center">Shaloc</p></td>
<td width="20%"><a href="https://github.com/jokerkeny"><img src="https://avatars2.githubusercontent.com/u/10593391?s=400&v=4"/></a><p align="center">jokerkeny</p></td>
</tr>
</table>


## vimplus star趋势图

[![Sparkline](https://stars.medv.io/chxuan/vimplus.svg)](https://stars.medv.io/chxuan/vimplus)


## License

This software is licensed under the [MIT license][75]. © 2016 chxuan


  [1]: https://raw.githubusercontent.com/chxuan/vimplus/master/screenshots/vimplus-logo.png
  [2]: https://raw.githubusercontent.com/chxuan/vimplus/master/screenshots/main.png
  [3]: https://brew.sh/
  [4]: https://github.com/junegunn/vim-plug
  [5]: https://github.com/Valloric/YouCompleteMe
  [6]: https://github.com/scrooloose/nerdtree
  [8]: https://github.com/vim-airline/vim-airline
  [9]: https://github.com/powerline/powerline
  [10]: https://github.com/jiangmiao/auto-pairs
  [12]: https://github.com/ctrlpvim/ctrlp.vim
  [13]: https://github.com/majutsushi/tagbar
  [14]: https://github.com/vim-scripts/taglist.vim
  [15]: https://github.com/ryanoasis/vim-devicons
  [16]: https://github.com/tpope/vim-surround
  [17]: https://github.com/tpope/vim-commentary
  [18]: https://github.com/tpope/vim-repeat
  [19]: https://github.com/tpope/vim-endwise
  [20]: https://github.com/godlygeek/tabular
  [23]: https://github.com/easymotion/vim-easymotion
  [24]: https://github.com/haya14busa/incsearch.vim
  [25]: https://github.com/mhinz/vim-startify
  [26]: https://github.com/iamcco/markdown-preview.vim
  [27]: https://github.com/chxuan/change-colorscheme
  [36]: https://github.com/tpope/vim-fugitive
  [37]: https://pan.baidu.com/s/1-Z_U-eKbkMQqmI03qTzmFw
  [38]: https://github.com/Valloric/YouCompleteMe
  [39]: https://github.com/chxuan/vimplus/issues
  [50]: https://github.com/junegunn/vim-slash
  [51]: https://github.com/ryanoasis/nerd-fonts
  [52]: https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
  [53]: https://github.com/Xuyuanp/nerdtree-git-plugin
  [54]: https://github.com/VundleVim/Vundle.vim
  [56]: https://github.com/Yggdroot/LeaderF
  [57]: https://github.com/Shougo/echodoc.vim
  [58]: https://github.com/chxuan/cpp-mode
  [59]: https://github.com/chxuan/vimplus/blob/master/help.md
  [60]: https://github.com/terryma/vim-smooth-scroll
  [62]: https://github.com/mileszs/ack.vim
  [64]: https://github.com/junegunn/gv.vim
  [65]: https://raw.githubusercontent.com/terryma/vim-multiple-cursors/master/assets/example1.gif
  [66]: https://github.com/chxuan/vimplus-startify
  [67]: https://github.com/chxuan/prepare-code
  [68]: https://github.com/rhysd/clever-f.vim
  [69]: https://github.com/rhysd/github-complete.vim
  [70]: https://github.com/chxuan/vim-buffer
  [72]: https://github.com/chxuan/vim-edit
  [74]: https://github.com/chxuan/tagbar
  [75]: https://github.com/chxuan/vimplus/blob/master/LICENSE
