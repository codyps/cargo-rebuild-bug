#! /usr/bin/env bash
set -euf -o pipefail
set -x

D="$(dirname "$0")"

unset CARGO_TARGET_DIR

(cd "$D"/a; cargo clean)
(cd "$D"/b; cargo clean)

(cd "$D"/a; cargo build)
(cd "$D"/b; cargo build)
