#!/usr/bin/env bash
set -euo pipefail

for package_json in extensions/*/package.json; do
  extension_dir="$(dirname "$package_json")"
  echo "::group::$extension_dir"
  pushd "$extension_dir" >/dev/null

  bun run check

  if node -e "process.exit(require('./package.json').scripts?.test ? 0 : 1)"; then
    bun run test
  fi

  popd >/dev/null
  echo "::endgroup::"
done
