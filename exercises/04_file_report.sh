#!/usr/bin/env bash
set -euo pipefail

dir=${1:-.}

if [[ ! -d $dir ]]; then
    echo "Error: folder does not exist: $dir" >&2
    exit 1
fi

files=0
directories=0
shopt -s nullglob

for item in "$dir"/*; do
    if [[ -f $item ]]; then
        files=$((files + 1))
    elif [[ -d $item ]]; then
        directories=$((directories + 1))
    fi
done

echo "Files: $files"
echo "Directories: $directories"
