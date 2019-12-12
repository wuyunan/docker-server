#!/bin/bash

. ./_head.sh
#复制
for N in $(seq 1 4); 
do 
scp -r $work_dir/_app/$zookeeper $user@node$N:$work_dir/_app/
done;

#写入id
for N in $(seq 1 4); 
do 
ssh $user@node$N  "echo $N > $work_dir/_data/$zookeeper/myid"
done;

# # node1
# echo 1 > ~/work/_data/zookeeper-3.4.14/myid
# # node2
# echo 2 > ~/work/_data/zookeeper-3.4.14/myid
# # node3
# echo 3 > ~/work/_data/zookeeper-3.4.14/myid
# # node4
# echo 4 > ~/work/_data/zookeeper-3.4.14/myid
# for N in $(seq 1 4);  do ssh node$N source /etc/profile; done;
# for N in $(seq 1 4);  do ssh node$N zkServer.sh start; done;

# for N in $(seq 1 4);  do ssh node$N jps; done;
