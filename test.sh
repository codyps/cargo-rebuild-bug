#! /usr/bin/env bash
set -euf -o pipefail
set -x

abs_path() {
	case "$1" in
		/*) printf "%s\n" "$1";;
		*) printf "%s\n" "$PWD/$1";;
	esac
}

export CARGO_TARGET_DIR="$(abs_path "$(dirname $0)/target")"

(cd a; cargo build)
(cd b; cargo build)

