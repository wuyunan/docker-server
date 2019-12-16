#!/bin/bash
# author:wuyunan
# url:www.qingteng.info
. ./_head.sh

for N in $(seq 1 4); do ssh $user@node$N hdfs --daemon stop journalnode;jps; done;