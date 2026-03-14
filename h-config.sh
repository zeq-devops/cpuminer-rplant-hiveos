#!/usr/bin/env bash
. /hive-config/wallet.conf
. h-manifest.conf

cat > $CUSTOM_CONFIG_FILENAME <<EOF
{
  "algo": "$CUSTOM_ALGO",
  "pool": "$CUSTOM_URL",
  "wallet": "$CUSTOM_TEMPLATE",
  "pass": "$CUSTOM_PASS"
}
EOF
