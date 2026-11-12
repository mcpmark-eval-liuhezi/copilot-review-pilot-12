#!/usr/bin/env bash
# pilot-example.sh — Small demo script for the Copilot code review pilot
# Purpose: print environment info and a friendly greeting for the team meeting demo.

set -euo pipefail

echo "=== Copilot Review Pilot ==="
echo "Repository: copilot-review-pilot-12"
echo "Branch: pilot-change"
echo "Default branch: main"

NAME="${1:-HeziLiu}"
echo "Hello, ${NAME}! This script is part of the GitHub Copilot code review pilot."

# Simple sanity check: confirm we are on the expected branch
CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"
echo "Current branch: ${CURRENT_BRANCH}"

if [[ "${CURRENT_BRANCH}" != "pilot-change" ]]; then
  echo "Warning: expected branch 'pilot-change' but found '${CURRENT_BRANCH}'"
  exit 1
fi

echo "Demo script completed successfully."
