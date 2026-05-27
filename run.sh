#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

if [[ ! -x bin/spa-dz3 ]]; then
    make
fi

exec ./bin/spa-dz3 "$@"
