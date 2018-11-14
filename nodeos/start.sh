#!/bin/bash

NODEOS_DATA_DIR="/opt/nodeos"
FIRST_MARK_FILE="first.mark"

ulimit -c unlimited
ulimit -n 65535
ulimit -s 64000

mkdir -p $NODEOS_DATA_DIR

FIRST_START_ARGS="--delete-all-blocks --genesis-json "${NODEOS_DATA_DIR}"/genesis.json"

if [ -f $NODEOS_DATA_DIR"/"$FIRST_MARK_FILE ]; then
    # already init
    FIRST_START_ARGS=""
else
    echo "first time start up nodeos"
    touch $NODEOS_DATA_DIR"/"$FIRST_MARK_FILE
fi

nodeos --data-dir $NODEOS_DATA_DIR \
       --config-dir $NODEOS_DATA_DIR \
       "$@" > $NODEOS_DATA_DIR/stdout.log \
       2> $NODEOS_DATA_DIR/stderr.log
