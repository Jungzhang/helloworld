#!/usr/bin/env bash

app="helloworld"
logfile="${app}.log"
deployPath="/home/zhanggen/helloworld"

killall ${app}

nohup ./${app} >> ${logfile} 2>&1 &
