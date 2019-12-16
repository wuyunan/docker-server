#!/bin/bash
# author:wuyunan
# url:www.qingteng.info
. ./_head.sh

# for N in $(seq 1 4); do ssh $loingin@node$N echo $work_dir/{_src,_app,_logs,_data} -p; done;
# 创建 Work目录
for N in $(seq 1 4); do ssh $user@node$N mkdir $work_dir/{_src,_app,_logs,_data} -p; done;
# 创建 Hadoop3.1.2 和 Zookeeper3.4.13 需要的目录
for N in $(seq 1 4); do ssh $user@node$N mkdir $work_dir/_data/{$hadoop,$zookeeper} -p; done;
for N in $(seq 1 4); do ssh $user@node$N mkdir $work_dir/_logs/{$hadoop,$zookeeper} -p; done;

## 在 Hadoop3.1.2 的 NameNode 上创建 HA 共享目录
for N in $(seq 1 2); do ssh $user@node$N mkdir $work_dir/_data/$hadoop/{journalnode,ha-name-dir-shared} -p; done;

# 创建 Hbase1.4.9 需要的目录
for N in $(seq 1 4); do ssh $user@node$N mkdir $work_dir/_logs/$hbase -p; done;
for N in $(seq 1 4); do ssh $user@node$N mkdir $work_dir/_data/$hbase -p; done;

# 创建 Hive2.3.4 需要的目录
for N in $(seq 1 4); do ssh $user@node$N mkdir $work_dir/_data/$hive/{scratchdir,tmpdir} -p; done;
for N in $(seq 1 4); do ssh $user@node$N mkdir $work_dir/_logs/$hive -p; done;

# 创建 Spark2.4.0 需要的目录
for N in $(seq 1 4); do ssh $user@node$N mkdir $work_dir/_data/spark-2.4.4-bin-hadoop2.7 -p; done;
for N in $(seq 1 4); do ssh $user@node$N mkdir $work_dir/_logs/$spark -p; done;

