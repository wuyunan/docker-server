#!/bin/bash
loingin="parallels"
hadoop="hadoop-3.2.1"
zookeeper="zookeeper-3.4.14"
hbase="hbase-1.4.12"
hive="hive-2.3.6"
spark="spark-2.4.4-bin-hadoop2.7"
spark_version="spark-2.4.4"
work_dir="~/work"
scala="scala-2.12.8"
scala_version="2.12.8"
# 创建 Hadoop3.1.2 和 Zookeeper3.4.13 需要的目录
for N in $(seq 1 4); do ssh node$N mkdir $work_dir/{_src,_app,_logs,_data} -p; done;
for N in $(seq 1 4); do ssh node$N mkdir $work_dir/_data/{$hadoop,$zookeeper} -p; done;
for N in $(seq 1 4); do ssh node$N mkdir $work_dir/_logs/{$hadoop,$zookeeper} -p; done;

## 在 Hadoop3.1.2 的 NameNode 上创建 HA 共享目录
for N in $(seq 0 1); do ssh node$N mkdir $work_dir/_data/$hadoop/{journalnode,ha-name-dir-shared} -p; done;

# 创建 Hbase1.4.9 需要的目录
for N in $(seq 1 4); do ssh node$N mkdir $work_dir/_logs/$hbase -p; done;
for N in $(seq 1 4); do ssh node$N mkdir $work_dir/_data/$hbase -p; done;

# 创建 Hive2.3.4 需要的目录
 for N in $(seq 1 4); do ssh node$N mkdir $work_dir/_data/$hive/{scratchdir,tmpdir} -p; done;
 for N in $(seq 1 4); do ssh node$N mkdir $work_dir/_logs/$hive -p; done;

# 创建 Spark2.4.0 需要的目录
 for N in $(seq 1 4); do ssh node$N mkdir $work_dir/_data/spark-2.4.4-bin-hadoop2.7 -p; done;
 for N in $(seq 1 4); do ssh node$N mkdir $work_dir/_logs/$spark -p; done;

# install hadoop
cd $work_dir/_src
wget http://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/$hadoop/$hadoop.tar.gz

tar -xzvf $hadoop.tar.gz
mv $hadoop $work_dir/_app/

# install zookeeper
wget http://mirror.bit.edu.cn/apache/zookeeper/$zookeeper/$zookeeper.tar.gz
tar -xzvf $zookeeper.tar.gz
mv $zookeeper $work_dir/_app/

# install hive
wget http://mirrors.hust.edu.cn/apache/hive/$hive/apache-$hive-bin.tar.gz
mv apache-$hive-bin.tar.gz $hive.tar.gz
tar -xzvf $hive-bin.tar.gz
mv apache-$hive-bin $work_dir/_app/$hive

# install spark
wget http://mirror.bit.edu.cn/apache/spark/$spark_version/$spark.tgz
tar -xzvf $spark.tgz
mv $spark $work_dir/_app/$spark

# install scala
wget https://downloads.lightbend.com/scala/$scala_version/$scala.tgz
tar -xzvf $scala.tgz
mv $scala $work_dir/_app/$scala

# install hbase
wget http://mirror.bit.edu.cn/apache/hbase/$hbase/$hbase-bin.tar.gz
tar -xzvf $hbase-bin.tar.gz
mv $hbase $work_dir/_app/$hbase