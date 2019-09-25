#!/bin/bash

# 获取平台类型，mac还是linux平台
function get_platform_type()
{
    echo $(uname)
}

# 在linux上获取当前用户
function get_current_username_on_linux()
{
    current_path=$PWD
    array=(${current_path//// })

    if [ ${array[0]} == "root" ]; then 
        echo ${array[0]}
    else
        echo ${array[1]}
    fi
}

# 在linux上判断用户是否存在
function is_valid_user_on_linux()
{
    desc_username=$1
    usernames=$(ls /home/)
    array=(${usernames// / })

    is_found=0
    for username in ${array[@]}
    do
        if [ $username == $desc_username ]; then 
            is_found=1
            break
        fi
    done

    if [ $desc_username == "root" ]; then 
        is_found=1
    fi

    echo $is_found
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

# 获得home路径
function get_home_path() 
{
    username=$1
    if [ $username == "root" ]; then
        echo "/root/"
    else
        echo "/home/"$username"/"
    fi
}

# 在linux上将vimplus安装到指定用户
function install_to_user_on_linux()
{
    src_username=`get_current_username_on_linux`
    desc_username=$1

    # 判断是否是有效用户
    is_found=$(is_valid_user_on_linux $desc_username)
    if [ $is_found != 1 ]; then 
        echo "Invalid username "$desc_username
        return
    fi

    # 判断是否是当前用户
    if [ $src_username == $desc_username ]; then
        echo "Can not install vimplus to "$desc_username
        return
    fi

    src_home_path=$(get_home_path $src_username)
    desc_home_path=$(get_home_path $desc_username)

    echo "Current home path:"$src_home_path
    echo "Installing vimplus to "$desc_home_path

    # 拷贝.vim目录
    src_vim_path=$src_home_path".vim/"
    desc_vim_path=$desc_home_path".vim/"

    rm -rf $desc_vim_path
    mkdir $desc_vim_path

    cp -R $src_vim_path"autoload/" $desc_vim_path
    cp -R $src_vim_path"plugged/" $desc_vim_path

    chown -R $desc_username":"$desc_username $desc_vim_path

    # 拷贝.vimplus目录
    src_vimplus_path=$src_home_path".vimplus/"
    desc_vimplus_path=$desc_home_path".vimplus/"

    rm -rf $desc_vimplus_path
    cp -R $src_vimplus_path $desc_home_path
    chown -R $desc_username":"$desc_username $desc_vimplus_path

    rm -rf $desc_home_path".vimrc.local"
    cp $desc_vimplus_path".vimrc.local" $desc_home_path
    chown $desc_username":"$desc_username $desc_home_path".vimrc.local"

    # 创建软链接
    rm -rf $desc_home_path".vimrc"
    ln -s $desc_vimplus_path".vimrc" $desc_home_path
    chown -R $desc_username":"$desc_username $desc_home_path".vimrc"

    rm -rf $desc_home_path".ycm_extra_conf.py"
    ln -s $desc_vimplus_path".ycm_extra_conf.py" $desc_home_path
    chown -R $desc_username":"$desc_username $desc_home_path".ycm_extra_conf.py"

    ln -s $desc_vimplus_path"colors" $desc_vim_path
    chown -R $desc_username":"$desc_username $desc_vim_path"colors"

    ln -s $desc_vimplus_path"ftplugin" $desc_vim_path
    chown -R $desc_username":"$desc_username $desc_vim_path"ftplugin"

    # 安装字体
    mkdir $desc_home_path".fonts/"
    rm -rf $desc_home_path".fonts/Droid Sans Mono Nerd Font Complete.otf"
    cp $desc_vimplus_path"fonts/Droid Sans Mono Nerd Font Complete.otf" $desc_home_path".fonts/"
    chown -R $desc_username":"$desc_username $desc_home_path".fonts/"
    fc-cache -vf $desc_home_path".fonts/"
}

# 脚本启动点
if [ $# -lt 1 ]; then
    echo "Please input username!"
    exit 1
fi

type=`get_platform_type`
echo "Platform type: "${type}

if [ ${type} == "Linux" ]; then
    for username in $@
    do
        install_to_user_on_linux $username
    done

    print_logo
else
    echo "Not support platform type: "${type}
fi

