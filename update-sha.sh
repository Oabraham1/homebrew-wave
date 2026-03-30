#!/bin/bash
set -euo pipefail

VERSION="${1:?Usage: ./update-sha.sh v0.1.0}"
BASE_URL="https://github.com/Oabraham1/wave/releases/download/$VERSION"

for platform in macos-arm64 macos-x86_64 linux-x86_64; do
  URL="$BASE_URL/wave-$platform.tar.gz"
  SHA=$(curl -sL "$URL" | shasum -a 256 | cut -d' ' -f1)
  echo "$platform: $SHA"
done

echo ""
echo "Update Formula/wave.rb with these SHA256 values"
echo "Then: git add -A && git commit -m 'wave $VERSION' && git push"
