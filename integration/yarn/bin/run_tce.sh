#!/bin/bash

chown -R tiger:tiger /var/log/tiger
chown -R tiger:tiger /opt/log/tiger

export HADOOP_HOME=/opt/tiger/yarn_deploy/hadoop-2.6.0-cdh5.4.4

su tiger -c '/opt/tiger/alluxio_deploy/integration/yarn/bin/alluxio-yarn.sh 1 hdfs://haruna/user/wanganyang/alluxio_tce any'