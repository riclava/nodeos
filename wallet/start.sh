#!/bin/bash

WALLET_DATA_DIR="/opt/nodeos/wallet"

WALLET_HOST="127.0.0.1"
WALLET_PORT="3000"

keosd --config-dir $WALLET_DATA_DIR \
      --unix-socket-path $WALLET_DATA_DIR/keosd.sock \
      --wallet-dir $WALLET_DATA_DIR \
      --http-server-address $WALLET_HOST:$WALLET_PORT
