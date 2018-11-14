#!/bin/bash

NODEOS_DATA_DIR="/opt/nodeos"
PID_FILE="nodeos.pid"

if [ -f $NODEOS_DATA_DIR"/"$PID_FILE ]; then
    pid=$(cat $NODEOS_DATA_DIR"/"$PID_FILE)
    echo "killing nodeos of pid "$pid
    kill $pid
    rm -r $NODEOS_DATA_DIR"/"$PID_FILE
else
    echo "nodeos is not running"
fi