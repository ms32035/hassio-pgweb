#!/bin/bash

CONFIG_PATH=/data/options.json

/pgweb \
--host $(jq --raw-output ".host" $CONFIG_PATH) \
--port $(jq --raw-output ".port" $CONFIG_PATH) \
--user $(jq --raw-output ".username" $CONFIG_PATH) \
--pass $(jq --raw-output ".password" $CONFIG_PATH) \
--db $(jq --raw-output ".database" $CONFIG_PATH) \
--ssl $(jq --raw-output ".ssl" $CONFIG_PATH) \
--listen 8099 \
