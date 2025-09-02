#!/usr/bin/env sh
set -euo pipefail

# Usage: $0 <file1.deb|file2.rpm> [more files...]
# Env vars:
# - GPG_KEY - Fingerprint of gpg key for rpm package signing

cd "$(dirname "$(realpath "$0")")"

function adddeb() {
  echo "Adding deb package: $1"
  mkdir -p deb/pool
  filename="$(basename "$src")"
  cp "$src" "./deb/pool/$filename"
}

function addrpm() {
  echo "Adding rpm package: $1"
  mkdir -p rpm/packages
  filename="$(basename "$src")"
  cp "$src" "./rpm/packages/$filename"
  rpm --define "_gpg_name $GPG_KEY" --addsign "./rpm/packages/$filename"
}

for src in "$@"; do
  if [ ! -f "$src" ]; then
    echo "File not found: $src" >&2
    continue
  fi
  filename="$(basename "$src")"
  case "$filename" in
    *.deb)
      adddeb "$src"
      ;;
    *.rpm)
      addrpm "$src"
      ;;
    *)
      echo "Unknown extension for file: $filename. Only .deb and .rpm are supported." >&2
      ;;
  esac
done




