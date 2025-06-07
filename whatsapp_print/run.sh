#!/bin/bash

ALLOWED_NUMBERS=$(jq -r '.allowed_numbers[]' /data/options.json)
ALLOWED_EXTENSIONS=$(jq -r '.allowed_extensions[]' /data/options.json)
PRINTER_NAME=$(jq -r '.printer_name' /data/options.json)

export WHATSAPP_ALLOWED_NUMBERS="$ALLOWED_NUMBERS"
export WHATSAPP_ALLOWED_EXTENSIONS="$ALLOWED_EXTENSIONS"
export WHATSAPP_PRINTER_NAME="$PRINTER_NAME"

service cups start

npm start
