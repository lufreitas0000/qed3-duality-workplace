#!/bin/sh
set -e

COMMIT_MSG="$1"
if [ -z "$COMMIT_MSG" ]; then
    echo "Usage: ./infra/git_sync.sh \"<type>(<scope>): <message>\"" >&2
    exit 1
fi

# Clean any stray LaTeX auxiliary files before staging
find src -type f \( -name "*.aux" -o -name "*.log" -o -name "*.out" -o -name "*.toc" -o -name "*.synctex.gz" \) -delete

git add -A

if git diff --cached --quiet; then
    echo "No changes to commit."
    exit 0
fi

git commit -m "$COMMIT_MSG"
CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"

if git remote | grep -q "^origin$"; then
    echo "==> Pushing branch '$CURRENT_BRANCH' to origin..."
    git push -u origin "$CURRENT_BRANCH"
else
    echo "==> Committed locally on branch '$CURRENT_BRANCH' (no 'origin' remote configured yet)."
fi
