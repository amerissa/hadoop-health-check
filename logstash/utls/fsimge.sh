#!/bin/bash
export JAVA_HOME=/etc/alternatives/java_sdk
/utls/hadoop/bin/hdfs oiv -t /data/temp -delimiter "|" -p Delimited -i /data/fsimage |  sed '1d' | sed  's/\"//g' |sed 's/\s//g'   > /data/fsimage.csv

