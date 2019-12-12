############################################################
export HADOOP_HOME=~/work/_app/hadoop-3.2.1
export HADOOP_LOG_DIR=~/work/_logs/hadoop-3.2.1
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
# Zookeeper 3.4.13
export ZOOKEEPER_HOME=~/work/_app/zookeeper-3.4.14
# HBase 1.4.9
export HBASE_HOME=~/work/_app/hbase-1.4.12
# Hive 2.3.4
export HIVE_HOME=~/work/_app/hive-2.3.6
export HIVE_CONF_DIR=$HIVE_HOME/conf
# Scala 2.12.8
export SCALA_HOME=~/work/_app/scala-2.12.8
# Spark 2.4
export SPARK_HOME=~/work/_app/spark-2.4.4-bin-hadoop2.7
# Path
export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$ZOOKEEPER_HOME/bin:$HBASE_HOME/bin:$HIVE_HOME/bin:$SCALA_HOME/bin:$SPARK_HOME/bin:$SPARK_HOME/sbin
