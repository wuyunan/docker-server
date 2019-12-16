#!/bin/bash
# author:wuyunan
# url:www.qingteng.info
. ./_head.sh

for N in $(seq 1 2); do ssh $user@node$N hdfs namenode -format; done;