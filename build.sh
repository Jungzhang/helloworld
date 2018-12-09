#!/usr/bin/env bash

app="helloworld"
out="output"

function build() {
    go build -o ${app} main.go
    local ret=$?
    if [ ${ret} -ne 0 ];then
        echo "$app build error"
        exit ${ret}
    else
        echo -n "$app build ok"
    fi
    mkdir -p ${out}
    cp -rf ${app} control.sh ${out}
}

build
