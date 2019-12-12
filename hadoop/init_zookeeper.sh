#!/bin/bash
for N in $(seq 1 4); do scp -r ~/work/_app/zookeeper-3.4.14 node$N:~/work/_app/; done;
for N in $(seq 1 4); do  ssh node$N && echo $N > ~/work/_data/zookeeper-3.4.14/myid;done;

# node1
echo 1 > ~/work/_data/zookeeper-3.4.14/myid
# node2
echo 2 > ~/work/_data/zookeeper-3.4.14/myid
# node3
echo 3 > ~/work/_data/zookeeper-3.4.14/myid
# node4
echo 4 > ~/work/_data/zookeeper-3.4.14/myid
for N in $(seq 1 4);  do ssh node$N source /etc/profile; done;
for N in $(seq 1 4);  do ssh node$N zkServer.sh start; done;

for N in $(seq 1 4);  do ssh node$N jps; done;
