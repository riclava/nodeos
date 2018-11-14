#!/bin/bash

EOS_BASE_DIR="/usr/local/eos"
NODEOS_DATA_DIR="/opt/nodeos"

mkdir -p ${EOS_BASE_DIR}
mkdir -p ${NODEOS_DATA_DIR}

# exec
cd `dirname $0`
cp -rf wallet ${EOS_BASE_DIR}
cp -rf nodeos ${EOS_BASE_DIR}

# configure
cp config.ini genesis.json ${NODEOS_DATA_DIR}

# systemd
cp nodeos-wallet.service /etc/systemd/system/
cp nodeos.service /etc/systemd/system/

# finish
systemctl daemon-reload