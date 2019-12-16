#!/bin/bash
# author:wuyunan
# url:www.qingteng.info
. ./_head.sh


for N in $(seq 2 4); do scp -r $work_dir/_app/$hadoop $user@node$N:$work_dir/_app/; done;