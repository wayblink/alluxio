#!/bin/bash

export YARN_CLUSTER_NAME=oryx
export HADOOP_HOME=/opt/tiger/yarn_deploy/hadoop-2.6.0-cdh5.4.4

./alluxio-yarn.sh 75 hdfs://haruna/user/wanganyang/ any alluxio_wanganyang root.oryx_data.smallsql 3
