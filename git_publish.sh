#!/usr/bin/env bash

set -euo pipefail

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Error: run this script inside a git repository." >&2
  exit 1
fi

branch="$(git rev-parse --abbrev-ref HEAD)"
status="$(git status --short)"

if [[ -z "${status}" ]]; then
  echo "Nothing to publish."
  exit 0
fi

message="${1:-}"

if [[ -z "${message}" ]]; then
  timestamp="$(date +"%Y-%m-%d %H:%M:%S")"
  message="update: ${timestamp}"
fi

echo "Repository: $(basename "$(git rev-parse --show-toplevel)")"
echo "Branch: ${branch}"
echo "Commit message: ${message}"
echo
git status --short
echo

git add -A
git commit -m "${message}"
git push -u origin "${branch}"

echo
echo "Published to origin/${branch}"
