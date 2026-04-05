#!/usr/bin/env bash

set -euo pipefail

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Error: run this script inside a git repository." >&2
  exit 1
fi

branch="$(git rev-parse --abbrev-ref HEAD)"
status="$(git status --short)"
push_changes=true
auto_yes=false
message=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --no-push)
      push_changes=false
      shift
      ;;
    -y|--yes)
      auto_yes=true
      shift
      ;;
    *)
      if [[ -z "${message}" ]]; then
        message="$1"
      else
        message="${message} $1"
      fi
      shift
      ;;
  esac
done

if [[ -z "${status}" ]]; then
  echo "Nothing to commit."
  exit 0
fi

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

if [[ "${auto_yes}" != true ]]; then
  printf "Continue? [y/N] "
  read -r confirm
  if [[ ! "${confirm}" =~ ^[Yy]$ ]]; then
    echo "Aborted."
    exit 1
  fi
fi

git add -A
git commit -m "${message}"
echo

if [[ "${push_changes}" == true ]]; then
  git push -u origin "${branch}"
  echo
  echo "Published to origin/${branch}"
else
  echo "Committed locally on ${branch}"
fi
