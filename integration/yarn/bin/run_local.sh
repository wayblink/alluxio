#!/bin/bash

HOSTNAME=$(hostname -i 2>&1)
echo $HOSTNAME

#export YARN_HOME=/opt/tiger/yarn_deploy
export HADOOP_HOME=/opt/tiger/yarn_deploy/hadoop-2.6.0-cdh5.4.4

export ALLUXIO_WORKER_MEMORY_SIZE=${ALLUXIO_WORKER_MEMORY_SIZE:-"4096MB"}

./alluxio-yarn.sh 1 hdfs://haruna/user/wanganyang/ $HOSTNAME