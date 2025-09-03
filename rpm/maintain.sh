#!/usr/bin/env sh
set -euo pipefail

# Env vars:
# - GPG_KEY - Fingerprint of gpg key for release signing

cd "$(dirname "$(realpath "$0")")"

mkdir -p rpm/packages

createrepo_c .

gpg --batch --yes --default-key "$GPG_KEY" --armor --detach-sign -o "repodata/repomd.xml.asc" "repodata/repomd.xml"

