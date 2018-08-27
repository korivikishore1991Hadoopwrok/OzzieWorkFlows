#!/bin/bash

echo "Starting at: $(date)" > /tmp/output

hadoop_Dir=$1

echo "hadoop directory is: $hadoop_Dir" >> /tmp/output

hadoop fs -ls $hadoop_Dir >> /tmp/output 2>&1

hive_CMD="show databases;"

echo "hive command is: $hive_CMD" >> /tmp/output

hive -e "$hive_CMD" >> /tmp/output 2>&1
