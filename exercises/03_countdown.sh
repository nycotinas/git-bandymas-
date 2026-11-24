#!/usr/bin/env bash
set -euo pipefail

count=${1:-5}

while (( count > 0 )); do
    echo "$count"
    count=$((count - 1))
done

echo "Liftoff!"
