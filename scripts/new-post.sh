#!/usr/bin/env bash

set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: scripts/new-post.sh <post-slug>"
  exit 1
fi

slug="$1"
post_dir="content/blog/${slug}"
post_file="${post_dir}/index.md"
assets_dir="${post_dir}/assets"

if [[ -e "$post_dir" ]]; then
  echo "Post directory already exists: ${post_dir}"
  exit 1
fi

hugo new "blog/${slug}/index.md" >/dev/null
mkdir -p "$assets_dir"

cat <<EOF
Created:
  ${post_file}
  ${assets_dir}/

Next:
  1. Edit ${post_file}
  2. Put post images/files into ${assets_dir}/
  3. Preview with: hugo server --config hugo.toml,hugo.dev.toml
EOF
