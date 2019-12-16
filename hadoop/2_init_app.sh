#!/bin/bash
# author:wuyunan
# url:www.qingteng.info
. ./_head.sh

cd $work_dir/_src
# install hadoop
wget $apache_mirror/hadoop/common/$hadoop/$hadoop.tar.gz
tar -xzvf $hadoop.tar.gz
mv $hadoop $work_dir/_app/

# install zookeeper
wget $apache_mirror/zookeeper/$zookeeper/$zookeeper.tar.gz
tar -xzvf $zookeeper.tar.gz
mv $zookeeper $work_dir/_app/

# install hive
wget $apache_mirror/hive/$hive/apache-$hive-bin.tar.gz
mv apache-$hive-bin.tar.gz $hive.tar.gz
tar -xzvf $hive.tar.gz
mv apache-$hive-bin $work_dir/_app/$hive

# install spark
wget http://mirror.bit.edu.cn/apache/spark/$spark_version/$spark.tgz
tar -xzvf $spark.tgz
mv $spark $work_dir/_app/$spark

#install hbase
wget http://mirror.bit.edu.cn/apache/hbase/$hbase/$hbase-bin.tar.gz
tar -xzvf $hbase-bin.tar.gz
mv $hbase $work_dir/_app/$hbase

# install scala
wget https://downloads.lightbend.com/scala/$scala_version/$scala.tgz
tar -xzvf $scala.tgz
mv $scala $work_dir/_app/$scala

echo "copy hadoop"
for N in $(seq 2 4); do scp -r $work_dir/_app/$hadoop $user@node$N:$work_dir/_app/; done;
