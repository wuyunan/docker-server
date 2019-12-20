#!/bin/bash
# author:wuyunan
# url:www.qingteng.info
. ./_head.sh
for N in $(seq 1 1); do ssh $user@node$N hdfs --daemon start journalnode; done;

ssh $user@node1 hdfs --daemon start namenode && jps

ssh $user@node2 hdfs namenode -bootstrapStandby

ssh $user@node2 hdfs --daemon start namenode && jps


ssh $user@node1 hdfs haadmin -getAllServiceState
ssh $user@node2 hdfs haadmin -getAllServiceState

ssh $user@node2 start-dfs.sh