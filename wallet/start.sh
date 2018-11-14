#!/bin/bash

WALLET_DATA_DIR="/opt/nodeos/wallet"
PID_FILE="wallet.pid"

WALLET_HOST="127.0.0.1"
WALLET_PORT="3000"

keosd --config-dir $WALLET_DATA_DIR \
      --wallet-dir $WALLET_DATA_DIR \
      --http-server-address $WALLET_HOST:$WALLET_PORT \
      $@ & echo $! > $WALLET_DATA_DIR/$PID_FILE
