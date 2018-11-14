#!/bin/bash

NODEOS_DATA_DIR="/opt/nodeos"

ps aux | grep nodeos | grep ${NODEOS_DATA_DIR} | awk '{print $2}' | xargs kill
