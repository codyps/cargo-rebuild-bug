#! /usr/bin/env bash
set -euf -o pipefail
set -x

D="$(dirname "$0")"

abs_path() {
	case "$1" in
		/*) printf "%s\n" "$1";;
		*) printf "%s\n" "$PWD/$1";;
	esac
}

export CARGO_TARGET_DIR="$(abs_path "$D/target")"
rm -r "$CARGO_TARGET_DIR"

(cd "$D"/a; cargo build)
(cd "$D"/b; cargo build)
