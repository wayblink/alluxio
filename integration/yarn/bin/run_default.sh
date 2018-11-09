#!/bin/bash

export YARN_CLUSTER_NAME=default
export HADOOP_HOME=/opt/tiger/yarn_deploy/hadoop-2.6.0-cdh5.4.4

./alluxio-yarn.sh 10 hdfs://haruna/user/wanganyang/alluxio_test/ any alluxio_wanganyang root.data.etl 3
