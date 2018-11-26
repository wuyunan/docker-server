#!/bin/bash

echo $1

echo "======================== +++++ ========================"
echo  -e "==========             \033[42;37mpull code\033[0m             =========="
echo "======================== +++++ ========================"

gitlabpath="$HOME/Documents/gitlab"


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

pullPlatform wywz-
pullPlatform rn-
pullPlatform ncwz-
pullPlatform qingniu-



echo "======================== +++++ ========================"
echo -e "==========                \033[42;37mend\033[0m                =========="
echo "======================== +++++ ========================"