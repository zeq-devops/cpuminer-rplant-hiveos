#!/usr/bin/env bash
. /hive-config/wallet.conf
. h-manifest.conf

unset LD_LIBRARY_PATH
PASS=${CUSTOM_PASS:-x}

LOGDIR=$(dirname "$CUSTOM_LOG_BASENAME")
mkdir -p "$LOGDIR"

CPUINFO=$(grep -m1 "flags" /proc/cpuinfo)

if grep -q "Ryzen" /proc/cpuinfo; then
    BIN="./cpuminer-ryzen"
elif echo "$CPUINFO" | grep -q "avx512"; then
    BIN="./cpuminer-avx512"
elif echo "$CPUINFO" | grep -q "avx2"; then
    BIN="./cpuminer-avx2"
elif echo "$CPUINFO" | grep -q "sse4_2"; then
    BIN="./cpuminer-sse42"
else
    BIN="./cpuminer-sse2"
fi

if [ ! -x "$BIN" ]; then
    echo "Binario $BIN no encontrado, usando fallback cpuminer-sse2"
    BIN="./cpuminer-sse2"
fi

echo "Ejecutando $BIN con algo=$CUSTOM_ALGO pool=$CUSTOM_URL wallet=$CUSTOM_TEMPLATE pass=$PASS"

exec $BIN \
  -a "$CUSTOM_ALGO" \
  -o "stratum+tcp://$CUSTOM_URL" \
  -u "$CUSTOM_TEMPLATE" \
  -p "$PASS" \
  --hash-meter \
  2>&1 | tee "$CUSTOM_LOG_BASENAME.log"
