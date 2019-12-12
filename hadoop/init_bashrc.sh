# Hadoop 3.1.2
sudo echo "export HADOOP_HOME=~/work/_app/hadoop-3.2.1" >> /etc/bashrc
sudo echo "export HADOOP_LOG_DIR=~/work/_logs/hadoop-3.2.1" >> /etc/bashrc
sudo echo "export HADOOP_MAPRED_HOME=\$HADOOP_HOME" >> /etc/bashrc
sudo echo "export HADOOP_COMMON_HOME=\$HADOOP_HOME" >> /etc/bashrc
sudo echo "export HADOOP_HDFS_HOME=\$HADOOP_HOME" >> /etc/bashrc
sudo echo "export HADOOP_CONF_DIR=\$HADOOP_HOME/etc/hadoop" >> /etc/bashrc

# Zookeeper 3.4.13
sudo echo "export ZOOKEEPER_HOME=~/work/_app/zookeeper-3.4.14" >> /etc/bashrc

# HBase 1.4.9
sudo echo "export HBASE_HOME=~/work/_app/hbase-1.4.12" >> /etc/bashrc

# Hive 2.3.4
sudo echo "export HIVE_HOME=~/work/_app/hive-2.3.6" >> /etc/bashrc
sudo echo "export HIVE_CONF_DIR=\$HIVE_HOME/conf" >> /etc/bashrc

# Scala 2.12.8
sudo echo "export SCALA_HOME=~/work/_app/scala-2.12.8" >> /etc/bashrc

# Spark 2.4
sudo echo "export SPARK_HOME=~/work/_app/spark-2.4.4-bin-hadoop2.7" >> /etc/bashrc

# Path
sudo echo "export PATH=\$PATH:\$JAVA_HOME/bin:\$JRE_HOME/bin:\$HADOOP_HOME/bin:\$HADOOP_HOME/sbin:\$ZOOKEEPER_HOME/bin:\$HBASE_HOME/bin:\$HIVE_HOME/bin:\$SCALA_HOME/bin:\$SPARK_HOME/bin:\$SPARK_HOME/sbin" >> /etc/bashrc
source /etc/bashrc

