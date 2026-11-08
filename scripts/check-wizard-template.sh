#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
template=skills/engineering/wizard/template.sh
bash -n "$template"
# The template exposes helpers for generated wizards, including unused helpers.
shellcheck --exclude=SC2329 "$template"
