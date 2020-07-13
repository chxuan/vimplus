![vimplus-logo][1]

An automatic configuration program for vim
===============================================

<p align="center">
    <a href="#build" alt="build"><img src="https://img.shields.io/badge/build-passing-brightgreen.svg" /></a>
    <a href="#安装" alt="platform"><img src="https://img.shields.io/badge/platform-MacOSX%20%7C%20Linux%2064bit%20%7C%20Docker%20%7C%20WSL%20%7C%20Android-brightgreen.svg" /></a>
    <a href="https://github.com/chxuan/vimplus/stargazers" alt="stars"><img src="https://img.shields.io/github/stars/chxuan/vimplus.svg?style=popout&label=stars" /></a>
    <a href="https://github.com/chxuan/vimplus/forks" alt="forks"><img src="https://img.shields.io/github/forks/chxuan/vimplus.svg?style=popout&label=forks" /></a>
    <a href="https://github.com/chxuan/vimplus/graphs/contributors" alt="contributors"><img src="https://img.shields.io/github/contributors/chxuan/vimplus" /></a>
    <a href="https://github.com/chxuan/vimplus/blob/master/LICENSE" alt="lincense"><img src="https://img.shields.io/badge/license-MIT-blue.svg" /></a>
</p>

![main][2]

## 安装

### Mac OS X

#### 安装[HomeBrew][3]
 
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#### 安装vimplus

    git clone https://github.com/chxuan/vimplus.git ~/.vimplus
    cd ~/.vimplus
    ./install.sh
    
#### 设置Nerd Font

为防止vimplus显示乱码，需设置mac终端字体为`Droid Sans Mono Nerd Font`。

#### 更新vimplus

紧跟vimplus的步伐，尝鲜新特性

    ./update.sh
    

### Linux 64-bit

#### 支持以下发行版

<table>
<tr>
<td><a href="https://distrowatch.com/table.php?distribution=ubuntu"><img src="https://distrowatch.com/images/yvzhuwbpy/ubuntu.png"/></a><p align="center"></p></td>
<td><a href="https://distrowatch.com/table.php?distribution=ubuntukylin"><img src="https://distrowatch.com/images/yvzhuwbpy/ubuntukylin.png"/></a><p align="center"></p></td>
<td><a href="https://distrowatch.com/table.php?distribution=debian"><img src="https://distrowatch.com/images/yvzhuwbpy/debian.png"/></a><p align="center"></p></td>
<td><a href="https://distrowatch.com/table.php?distribution=kali"><img src="https://distrowatch.com/images/yvzhuwbpy/kali.png"/></a><p align="center"></p></td>
<td><a href="https://distrowatch.com/table.php?distribution=deepin"><img src="https://distrowatch.com/images/yvzhuwbpy/deepin.png"/></a><p align="center"></p></td>
<td><a href="https://distrowatch.com/table.php?distribution=mint"><img src="https://distrowatch.com/images/yvzhuwbpy/mint.png"/></a><p align="center"></p></td>
<td><a href="https://distrowatch.com/table.php?distribution=elementary"><img src="https://distrowatch.com/images/yvzhuwbpy/elementary.png"/></a><p align="center"></p></td>
<td><a href="https://distrowatch.com/table.php?distribution=centos"><img src="https://distrowatch.com/images/yvzhuwbpy/centos.png"/></a><p align="center"></p></td>
<td><a href="https://distrowatch.com/table.php?distribution=fedora"><img src="https://distrowatch.com/images/yvzhuwbpy/fedora.png"/></a><p align="center"></p></td>
<td><a href="https://distrowatch.com/table.php?distribution=arch"><img src="https://distrowatch.com/images/yvzhuwbpy/arch.png"/></a><p align="center"></p></td>
</tr>
<tr>
<td><a href="https://distrowatch.com/table.php?distribution=manjaro"><img src="https://distrowatch.com/images/yvzhuwbpy/manjaro.png"/></a><p align="center"></p></td>
<td><a href="https://distrowatch.com/table.php?distribution=opensuse"><img src="https://distrowatch.com/images/yvzhuwbpy/opensuse.png"/></a><p align="center"></p></td>
<td><a href="https://distrowatch.com/table.php?distribution=gentoo"><img src="https://distrowatch.com/images/yvzhuwbpy/gentoo.png"/></a><p align="center"></p></td>
</tr>
</table>


#### 安装vimplus

    git clone https://github.com/chxuan/vimplus.git ~/.vimplus
    cd ~/.vimplus
    ./install.sh //不加sudo
    
#### 设置Nerd Font

为防止vimplus显示乱码，需设置linux终端字体为`Droid Sans Mono Nerd Font`。

#### 多用户支持

将vimplus在某个用户下安装好后，若需要在其他用户也能够使用vimplus，则执行

    sudo ./install_to_user.sh username1 username2 //替换为真实用户名
    
#### 更新vimplus

紧跟vimplus的步伐，尝鲜新特性

    ./update.sh


### Android 64-bit([Termux][87])

#### 安装vimplus

    git clone https://github.com/chxuan/vimplus.git ~/.vimplus
    cd ~/.vimplus
    ./install.sh
    
#### 更新vimplus

紧跟vimplus的步伐，尝鲜新特性

    ./update.sh
    

### Docker

[ubuntu-vimplus][79]是vimplus基于ubuntu18.04的docker镜像，无需安装vimplus，即可快速体验vimplus带来的快乐

    docker run -it chxuan/ubuntu-vimplus
    

## 自定义

> * [~/.vimrc][82]为vimplus的默认配置，一般不做修改
> * [~/.vimrc.custom.plugins][83]为用户自定义插件列表，用户增加、卸载插件请修改该文件
> * [~/.vimrc.custom.config][84]为用户自定义配置文件，一般性配置请放入该文件，可覆盖[~/.vimrc][82]里的配置


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
| [vim-fugitive][36]                  | 集成Git                                                                        |
| [gv][64]                            | 显示git提交记录                                                                |
| [vim-slash][50]                     | 优化搜索，移动光标后清除高亮                                                   |
| [echodoc][57]                       | 补全函数时在命令栏显示函数签名                                                 |
| [vim-smooth-scroll][60]             | 让翻页更顺畅                                                                   |
| [clever-f.vim][68]                  | 强化f和F键                                                                     |


## 快捷键

以下是部分快捷键，可通过vimplus的`,h`命令查看[vimplus帮助文档][59]。

| 快捷键              | 说明                                      |
| -------             | -----                                     |
| `,`                 | Leader Key                                |
| `<leader>n`         | 打开/关闭代码资源管理器                   |
| `<leader>t`         | 打开/关闭函数列表                         |
| `<leader>a`         | .h .cpp 文件切换                          |
| `<leader>u`         | 转到函数声明                              |
| `<leader>U`         | 转到函数实现                              |
| `<leader>u`         | 转到变量声明                              |
| `<leader>o`         | 打开include文件                           |
| `<leader>y`         | 拷贝函数声明                              |
| `<leader>p`         | 生成函数实现                              |
| `<leader>w`         | 单词跳转                                  |
| `<leader>f`         | 搜索~目录下的文件                         |
| `<leader>F`         | 搜索当前目录下的文本                      |
| `<leader>g`         | 显示git仓库提交记录                       |
| `<leader>G`         | 显示当前文件提交记录                      |
| `<leader>gg`        | 显示当前文件在某个commit下的完整内容      |
| `<leader>ff`        | 语法错误自动修复(FixIt)                   |
| `<c-p>`             | 切换到上一个buffer                        |
| `<c-n>`             | 切换到下一个buffer                        |
| `<leader>d`         | 删除当前buffer                            |
| `<leader>D`         | 删除当前buffer外的所有buffer              |
| `vim`               | 运行vim编辑器时,默认启动开始页面          |
| `<F5>`              | 显示语法错误提示窗口                      |
| `<F9>`              | 显示上一主题                              |
| `<F10>`             | 显示下一主题                              |
| `<leader>l`         | 按竖线对齐                                |
| `<leader>=`         | 按等号对齐                                |
| `Ya`                | 复制行文本到字母a                         |
| `Da`                | 剪切行文本到字母a                         |
| `Ca`                | 改写行文本到字母a                         |
| `rr`                | 替换文本                                  |
| `<leader>r`         | 全局替换，目前只支持单个文件              |
| `rev`               | 翻转当前光标下的单词或使用V模式选择的文本 |
| `gcc`               | 注释代码                                  |
| `gcap`              | 注释段落                                  |
| `vif`               | 选中函数内容                              |
| `dif`               | 删除函数内容                              |
| `cif`               | 改写函数内容                              |
| `vaf`               | 选中函数内容（包括函数名 花括号）         |
| `daf`               | 删除函数内容（包括函数名 花括号）         |
| `caf`               | 改写函数内容（包括函数名 花括号）         |
| `fa`                | 查找字母a，然后再按f键查找下一个          |
| `<leader>e`         | 快速编辑~/.vimrc文件                      |
| `<leader>s`         | 重新加载~/.vimrc文件                      |
| `<leader>vp`        | 快速编辑~/.vimrc.custom.plugins文件       |
| `<leader>vc`        | 快速编辑~/.vimrc.custom.config文件        |
| `<leader>h`         | 打开vimplus帮助文档                       |
| `<leader>H`         | 打开当前光标所在单词的vim帮助文档         |
| `<leader><leader>t` | 生成try-catch代码块                       |
| `<leader><leader>y` | 复制当前选中到系统剪切板                  |
| `<leader><leader>i` | 安装插件                                  |
| `<leader><leader>u` | 更新插件                                  |
| `<leader><leader>c` | 删除插件                                  |


## FAQ

- **`vimplus怎么安装新插件？`**

    编辑[~/.vimrc.custom.plugins][83]，添加自定义插件。

- **`vimplus怎么添加自定义配置？`**

    编辑[~/.vimrc.custom.config][84]，添加自定义配置。

- **`vimplus安装脚本会在自己电脑上安装哪些软件？`**

    网络良好情况下，vimplus只需30分钟左右即可将vim cpp环境配置好，vimplus真正的做到了一键配置，不让用户操心。vimplus会安装一些必备软件，比如说python、cmake、gcc、fontconfig等，vimplus也考虑到了有些系统的vim不支持python，它会自动去下载vim源码将python支持编译进去，vimplus也会安装nerd-font不让vim显示出现乱码，最最重要的是vimplus实现了ycm自动编译安装，给折腾了几天ycm都没有安装好的用户带来了新的希望，而且vimplus也支持macos和linux众多发行版，让linux发烧友频繁切换发行版而不用操心vim环境配置。最后说了这么多，不如看[vimplus安装脚本][78]来的直接:smile:。

- **`启动vim报错：RequestsDependencyWarning: Old version of cryptography ([1, 2, 3]) may cause slowdown.`**

    可以尝试将cryptography删掉，具体见[issues #208][81]。

- **`vimplus不支持目前用户正在使用的系统怎么办？`**

    可以给作者提[Issues][39]，或者自己fork vimplus来修改，并提交pr，贡献自己的一份力量。

- **`安装vimplus后Airline等插件有乱码，怎么解决？`**

    linux和mac系统需设置终端字体为`Droid Sans Mono Nerd Font`。

- **`xshell连接远程主机不能使用vim-devicons或乱码。`**

    windows系统安装[Nerd Font][51]字体后并更改xshell字体即可。

- **`ubuntu18.04安装了nerd font但通过终端属性并没有看到该字体。`**

    可以试试dconf-editor软件来设置，可以参考[这里][76]。

- **`使用第三方库时怎么让ycm补全第三方库API？`**

    vimplus安装完毕之后，`~`目录下将会生成两个隐藏文件分别是.vimrc和.ycm_extra_conf.py，其中.vimrc是vim的配置文件，.ycm_extra_conf.py是ycm插件的配置文件，当你需要创建一个project时，需要将.ycm_extra_conf.py拷贝到project的顶层目录，通过修改该配置文件里面的`flags`变量来添加你的第三方库路径。

- **`使用vi命令报错：E492: Not an editor command:`**

    vimplus安装完成后，linux下可能会同时存在vi和vim命令，执行vi时，vi加载~/.vimrc文件可能会报错，但不影响使用，如果要消除错误可以设置软链接`ln -s /usr/bin/vim /usr/bin/vi`

- **`怎么自定义文件头，比如说添加作者、创建时间？`**

    你可以修改[chxuan/prepare-code][67]插件来达到目的，可以参考[这里][77]。

- **`安装vimplus在“[ 95%] Building CXX object ycm/CMakeFiles/ycm_core.dir/ycm_core.cpp.o”等进度时出现编译报错`**

    编译ycm需要消耗较大内存，建议内存大于1G，实在不行也可以开启linux swap分区。

- **`以上没有我遇到的问题怎么办？`**

    您可以通过上网找解决方法，或提[Issues][39]，也可以通过加QQ`787280310`、发邮件方式`787280310@qq.com`一起讨论解决方法。

- **`vimplus用起来真的太棒了，怎么办？`**

    那就麻烦您打赏一颗:star::star:吧，给予我继续维护的动力。


## 贡献者

> 有代码贡献或有好的建议，帮助vimplus发展的小伙伴

<a href="https://github.com/chxuan" target="_blank" title="chxuan">
<img src="https://github.com/chxuan.png?size=64" width="64" height="64" alt="chxuan">
</a>
<a href="https://github.com/dofy" target="_blank" title="dofy">
<img src="https://github.com/dofy.png?size=64" width="64" height="64" alt="dofy">
</a>
<a href="https://github.com/urain39" target="_blank" title="urain39">
<img src="https://github.com/urain39.png?size=64" width="64" height="64" alt="urain39">
</a>
<a href="https://github.com/freedomDR" target="_blank" title="freedomDR">
<img src="https://github.com/freedomDR.png?size=64" width="64" height="64" alt="freedomDR">
</a>
<a href="https://github.com/starifly" target="_blank" title="starifly">
<img src="https://github.com/starifly.png?size=64" width="64" height="64" alt="starifly">
</a>
<a href="https://github.com/Shaloc" target="_blank" title="Shaloc">
<img src="https://github.com/Shaloc.png?size=64" width="64" height="64" alt="Shaloc">
</a>
<a href="https://github.com/jokerkeny" target="_blank" title="jokerkeny">
<img src="https://github.com/jokerkeny.png?size=64" width="64" height="64" alt="jokerkeny">
</a>
<a href="https://github.com/xuthus5" target="_blank" title="xuthus5">
<img src="https://github.com/xuthus5.png?size=64" width="64" height="64" alt="xuthus5">
</a>
<a href="https://github.com/zhoumengkang" target="_blank" title="zhoumengkang">
<img src="https://github.com/zhoumengkang.png?size=64" width="64" height="64" alt="zhoumengkang">
</a>
<a href="https://github.com/tuberry" target="_blank" title="tuberry">
<img src="https://github.com/tuberry.png?size=64" width="64" height="64" alt="tuberry">
</a>
<a href="https://github.com/wyg1997" target="_blank" title="wyg1997">
<img src="https://github.com/wyg1997.png?size=64" width="64" height="64" alt="wyg1997">
</a>
<a href="https://github.com/happinesslijian" target="_blank" title="happinesslijian">
<img src="https://github.com/happinesslijian.png?size=64" width="64" height="64" alt="happinesslijian">
</a>
<a href="https://github.com/wangling12" target="_blank" title="wangling12">
<img src="https://github.com/wangling12.png?size=64" width="64" height="64" alt="wangling12">
</a>
<a href="https://github.com/ardinzh" target="_blank" title="ardinzh">
<img src="https://github.com/ardinzh.png?size=64" width="64" height="64" alt="ardinzh">
</a>


## 支持开源:heart:

> 有意愿献爱心的小伙伴，务必将github账号写入捐款备注哦，谢谢大家

| wechat                                                                                                     | alipay                                                                                                       |
| ---------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------ |
| <a href='#支持开源'><img src="https://github.com/chxuan/vimplus/blob/master/screenshots/wechat.png" height="150" width="150" /></a> | <a href='#支持开源'><img src="https://github.com/chxuan/vimplus/blob/master/screenshots/alipay.png" height="150" width="150" /></a> |

| 序号  | 支持者             | RMB   | 时间       |
| ----- | -------            | ----- | -----      |
| 1     | [zhoumengkang][80] | ¥50   | 2019-09-28 |
| 2     | [zhoumengkang][80] | ¥50   | 2019-09-29 |
| 3     | [zibraque][85]     | ¥50   | 2019-11-25 |
| 4     | [gfreewind][86]    | ¥20   | 2019-12-27 |
| 5     | [wh656325437][88]  | ¥20   | 2020-07-02 |
| 6     | [luguifang][89]    | ¥20   | 2020-07-12 |


## vimplus:star:趋势图

![Stargazers over time](https://starchart.cc/chxuan/vimplus.svg)


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
  [27]: https://github.com/chxuan/change-colorscheme
  [36]: https://github.com/tpope/vim-fugitive
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
  [66]: https://github.com/chxuan/vimplus-startify
  [67]: https://github.com/chxuan/prepare-code
  [68]: https://github.com/rhysd/clever-f.vim
  [70]: https://github.com/chxuan/vim-buffer
  [72]: https://github.com/chxuan/vim-edit
  [74]: https://github.com/chxuan/tagbar
  [75]: https://github.com/chxuan/vimplus/blob/master/LICENSE
  [76]: https://blog.csdn.net/wang73ying/article/details/82491993
  [77]: https://blog.csdn.net/liuyangbo121/article/details/82971736
  [78]: https://github.com/chxuan/vimplus/blob/master/install.sh
  [79]: https://hub.docker.com/r/chxuan/ubuntu-vimplus
  [80]: https://github.com/zhoumengkang
  [81]: https://github.com/chxuan/vimplus/issues/208
  [82]: https://github.com/chxuan/vimplus/blob/master/.vimrc
  [83]: https://github.com/chxuan/vimplus/blob/master/.vimrc.custom.plugins
  [84]: https://github.com/chxuan/vimplus/blob/master/.vimrc.custom.config
  [85]: https://github.com/zibraque
  [86]: https://github.com/gfreewind
  [87]: https://termux.com/
  [88]: https://github.com/wh656325437
  [89]: https://github.com/luguifang

