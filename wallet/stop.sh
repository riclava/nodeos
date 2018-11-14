#!/bin/bash

WALLET_DATA_DIR="/opt/nodeos/wallet"

ps aux | grep keosd | grep ${WALLET_DATA_DIR} | awk '{print $2}' | xargs kill 
