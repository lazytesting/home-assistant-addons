#!/bin/bash

#### config ##
CONFIG_PATH=/data/options.json
INSTALL_PATH=/bin/hue-mqtt-bridge
################

echo "[Info] copy setting to config file"
cp "$CONFIG_PATH" "$INSTALL_PATH/config.json"

echo "[Info] starting Hue MQTT Bridge"
forever start "$INSTALL_PATH/index.js"