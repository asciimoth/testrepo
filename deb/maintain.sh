#!/usr/bin/env sh
set -euo pipefail

# Env vars:
# - GPG_KEY - Fingerprint of gpg key for release signing

cd "$(dirname "$(realpath "$0")")"

mkdir -p deb/pool

# (Re)generate packages file
dpkg-scanpackages pool /dev/null > Packages

# (Re)generate release file
apt-ftparchive -c apt-ftparchive.conf release . > Release

# Sign release file
gpg --batch --yes --default-key "$GPG_KEY" --armor --detach-sign -o "Release.gpg" "Release"

