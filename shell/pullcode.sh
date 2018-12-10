#!/bin/bash

echo "第一个参数$1"

echo "======================== +++++ ========================"
echo  -e "==========             \033[42;37mpull code\033[0m             =========="
echo "======================== +++++ ========================"

gitlabpath="$HOME/Documents/gitlab"
allow_path_a[0]="wywz"
allow_path_a[1]="rn"
allow_path_a[2]="ncwz"
allow_path_a[3]="qingniu"
allow_path_a[4]="we"

pullPlatform(){
    cd "${gitlabpath}"
    for project in $(ls |grep ^$1)
    do
        echo -e "\033[42;37m $project \033[0m"
        cd  "${gitlabpath}/$project"
        pwd
        git pull
    done
}

if [ -n "$1" ];then
    #    pullPlatform path-
    pullPlatform "$1-"
# else
    
    # for path in ${allow_path_a[@]} do
    # #    pullPlatform path-
    #     echo "${path}"
    #     pullPlatform $path"-"

    # done

fi






echo "======================== +++++ ========================"
echo -e "==========                \033[42;37mend\033[0m                =========="
echo "======================== +++++ ========================"