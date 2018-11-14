#!/bin/bash

WALLET_DATA_DIR="/opt/nodeos/wallet"
PID_FILE="wallet.pid"

if [ -f $WALLET_DATA_DIR"/"$PID_FILE ]; then
    pid=$(cat $WALLET_DATA_DIR"/"$PID_FILE)
    echo "killing wallet of pid "$pid
    kill $pid
    rm -r $WALLET_DATA_DIR"/"$PID_FILE
else
    echo "wallet is not running"
fi