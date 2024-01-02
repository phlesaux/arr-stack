#!/bin/bash

# Check if TOKEN is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <TOKEN>"
  exit 1
fi

# Generate Private key
VPN_PRIVATE_KEY=$(docker run --rm --cap-add=NET_ADMIN -e TOKEN="$1" ghcr.io/bubuntux/nordvpn:get_private_key | awk -F 'Private Key: ' '/Private Key: /{print $2}')

echo $VPN_PRIVATE_KEY

