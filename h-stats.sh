#!/usr/bin/env bash
set -e

LOG="/hive/miners/custom/cpuminer-rplant/cpuminer-rplant.log"
DEBUG_LOG="/tmp/hive-stats-debug.log"

echo "=== $(date) ===" >> $DEBUG_LOG

if [ ! -f "$LOG" ]; then
    khs=0
    stats='{"status":"error","hs":[0],"hs_units":"khs","temp":[0],"fan":[0],"ar":[0,0],"uptime":0,"algo":"unknown","ver":"unknown"}'
    echo "ERROR: Log not found" >> $DEBUG_LOG
    exit 0
fi

HS=$(grep -E "CPU #[0-9]+:" "$LOG" | tail -n16 | awk '{print $5}' | grep -E '^[0-9.]+$')

if [ -z "$HS" ]; then
    HS_LIST="0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0"
    TOTAL=0
else
    COUNT=$(echo "$HS" | wc -l)

    HS_LIST=$(echo "$HS" | head -16)

    if [ $COUNT -lt 16 ]; then
        FILL=$((16 - COUNT))
        for i in $(seq 1 $FILL); do
            HS_LIST="$HS_LIST"$'\n'"0"
        done
    fi

    HS_LIST=$(echo "$HS_LIST" | paste -sd, -)

    TOTAL=$(echo "$HS" | awk '{s+=$1} END {printf "%.2f", s/1000}')
fi

TEMP=$(grep -E "CPU temp:" "$LOG" | tail -n1 | grep -oE 'curr [0-9]+' | awk '{print $2}')
[ -z "$TEMP" ] && TEMP=0

ALGO="${CUSTOM_ALGO:-yescryptr32}"
VER="${MINER_VERSION:-5.0.48}"

TEMP_LIST=$(printf "$TEMP,%.0s" {1..16} | sed 's/,$//')

FAN_LIST=$(printf "0,%.0s" {1..16} | sed 's/,$//')

stats=$(cat << EOF
{"status":"running","hs":[$HS_LIST],"hs_units":"khs","temp":[$TEMP_LIST],"fan":[$FAN_LIST],"ar":[0,0],"uptime":0,"algo":"$ALGO","ver":"$VER"}
EOF
)

khs=$TOTAL

echo "khs=$khs" >> $DEBUG_LOG
echo "stats=$stats" >> $DEBUG_LOG
