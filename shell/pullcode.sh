#!/bin/bash

echo $1

echo -e "\033[44;37m ==========         \033[44;37;1mPull Code       \033[0m\033[44;37m========== \033[0m"

gitlabpath="$HOME/Documents/gitlab"


pullPlatform(){
    cd "${gitlabpath}"
    for project in $(ls)
    do
        echo -e "\033[42;37m Project : \033[42;37;1m$project \033[0m"
        if [ ! -d "${gitlabpath}/$project" ]; then
        	echo "${gitlabpath}/$project not a folder"
        else
            cd  "${gitlabpath}/$project"

            if [ ! -d "${gitlabpath}/$project/.git" ]; then
                echo "${gitlabpath}/$project not a git repo"
            else
    	        pwd
                git pull
            fi
        fi
    done
}

pullPlatform 
# pullPlatform rn-
# pullPlatform ncwz-
# pullPlatform qingniu-
# pullPlatform we-
# pullPlatform qingteng-
# pullPlatform crowdsource-


echo -e "\033[44;37m ==========            \033[44;37;1mEnd            \033[0m\033[44;37m========== \033[0m"

echo ""