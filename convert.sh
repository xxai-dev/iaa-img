#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR
set -ex

find . -name "*.avif" | xargs -I {} sh -c 'convert $1 "${1%.avif}.jpg"' -- {}
find . -name "*.avif" -exec rm {} \;

find . -name "*.webp" | xargs -I {} sh -c 'convert $1 "${1%.webp}.jpg"' -- {}
find . -name "*.webp" -exec rm {} \;
