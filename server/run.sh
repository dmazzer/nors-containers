#!/bin/bash
set -em

# repo sync
cd $NORS_PATH
#git pull origin $NORS_BRANCH

export NORS_MONGODB_PORT_27017_TCP_ADDR=mongodb
export NORS_MONGODB_PORT_27017_TCP_PORT=27017

# run nors server
echo "=> Starting NORS server"
nors_cmd="python3 nors_srv.py -c nors.conf"

$nors_cmd &

fg
