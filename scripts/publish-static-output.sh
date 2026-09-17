#!/usr/bin/env bash
set -euo pipefail

# GitHub Pages is presently configured to serve the main branch directly.
# Keep the Hugo source and copy its generated public output to that branch root.
hugo --minify
rsync -a public/ ./
