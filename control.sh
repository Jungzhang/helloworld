#!/usr/bin/env bash

app="helloworld"
logfile="${app}.log"
deployPath="/home/zhanggen/helloworld"

killall ${app} &&
rsync -av /tmp/output/. /home/zhanggen/helloworld &&
cd /home/zhanggen/helloworld &&
nohup ./${app} >> ${logfile} 2>&1 &