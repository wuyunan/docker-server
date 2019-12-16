#!/bin/bash
# author:wuyunan
# url:www.qingteng.info
. ./_head.sh


for N in $(seq 1 4); scp -r  ./hadoop/etc/hadoop $user@node$N:$work_dir/_app/$hadoop/etc/

