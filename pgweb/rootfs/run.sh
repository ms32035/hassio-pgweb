#!/bin/bash

CONFIG_PATH=/data/options.json

pgweb \
--host $(jq --raw-output ".host" $CONFIG_PATH) \
--port $(jq --raw-output ".port" $CONFIG_PATH) \
--username $(jq --raw-output ".username" $CONFIG_PATH) \
--password $(jq --raw-output ".password" $CONFIG_PATH) \
--database $(jq --raw-output ".database" $CONFIG_PATH) \
--listen 8099