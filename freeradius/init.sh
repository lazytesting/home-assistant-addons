#!/bin/bash

#### config ####
CONFIG_PATH=/data/options.json

USERNAME=$(jq --raw-output ".username" $CONFIG_PATH)
PASSWORD=$(jq --raw-output ".password" $CONFIG_PATH)
DEVICE_NAME=$(jq --raw-output ".device-name" $CONFIG_PATH)
DEVICE_HOSTNAME=$(jq --raw-output ".device-hostname" $CONFIG_PATH)
DEVICE_SECRET=$(jq --raw-output ".device-secret" $CONFIG_PATH)
################
 
echo "$USERNAME Cleartext-Password := \"$PASSWORD\"" >> /etc/raddb/users
echo -e "client $DEVICE_NAME {\n ipaddr = $DEVICE_HOSTNAME\n secret = $DEVICE_SECRET\n}" >> /etc/raddb/clients.conf
