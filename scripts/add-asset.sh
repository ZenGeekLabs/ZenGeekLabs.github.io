#!/usr/bin/env bash

set -euo pipefail

if [[ $# -lt 2 ]]; then
  echo "Usage: scripts/add-asset.sh <post-slug-or-dir> <source-file> [--move]"
  exit 1
fi

post_input="$1"
source_file="$2"
mode="${3:-}"

if [[ -d "$post_input" ]]; then
  post_dir="${post_input%/}"
else
  post_dir="content/blog/${post_input}"
fi

if [[ ! -d "$post_dir" ]]; then
  echo "Post directory not found: ${post_dir}"
  exit 1
fi

if [[ ! -f "$source_file" ]]; then
  echo "Source file not found: ${source_file}"
  exit 1
fi

assets_dir="${post_dir}/assets"
mkdir -p "$assets_dir"

filename="$(basename "$source_file")"
name="${filename%.*}"
ext=""
if [[ "$filename" == *.* ]]; then
  ext=".${filename##*.}"
fi

target="${assets_dir}/${filename}"
counter=1
while [[ -e "$target" ]]; do
  target="${assets_dir}/${name}-${counter}${ext}"
  counter=$((counter + 1))
done

if [[ "$mode" == "--move" ]]; then
  mv "$source_file" "$target"
else
  cp "$source_file" "$target"
fi

relative_path="${target#${post_dir}/}"
lower_ext="$(printf '%s' "$ext" | tr '[:upper:]' '[:lower:]')"

case "$lower_ext" in
  .png|.jpg|.jpeg|.gif|.svg|.webp|.avif)
    snippet="![${name}](${relative_path})"
    ;;
  *)
    snippet="[下载 ${filename}](${relative_path})"
    ;;
esac

cat <<EOF
Stored:
  ${target}

Markdown:
  ${snippet}
EOF
