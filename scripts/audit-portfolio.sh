#!/usr/bin/env bash
set -euo pipefail

OWNER="skytruong90"
PROFILE_REPO="skytruong90"
PAGES_REPO="skytruong90.github.io"

command -v gh >/dev/null 2>&1 || { echo "GitHub CLI (gh) is required." >&2; exit 1; }
gh auth status >/dev/null

printf '%-48s %-6s %-6s %-6s %-6s %-6s %-6s %s\n' \
  "REPOSITORY" "ABOUT" "README" "RUN" "LEARN" "VISUAL" "CI" "CONTENT"
printf '%*s\n' 112 '' | tr ' ' '-'

failures=0
checked=0

mapfile -t repos < <(gh repo list "$OWNER" --limit 200 --json name --jq '.[].name' | sort)

for repo in "${repos[@]}"; do
  [[ "$repo" == "$PROFILE_REPO" || "$repo" == "$PAGES_REPO" ]] && continue
  ((checked+=1))

  description="$(gh repo view "$OWNER/$repo" --json description --jq '.description // ""' 2>/dev/null || true)"
  [[ -n "$description" ]] && about=PASS || about=MISS

  readme="$(gh api -H 'Accept: application/vnd.github.raw+json' "repos/$OWNER/$repo/readme" 2>/dev/null || true)"
  if [[ -n "$readme" && ${#readme} -ge 700 ]]; then readme_state=PASS; else readme_state=MISS; fi

  if grep -Eqi 'quick start|getting started|## run|build and run|how to run|usage' <<<"$readme"; then run_state=PASS; else run_state=MISS; fi
  if grep -Eqi 'what i learned|learned / demonstrated|learning outcomes' <<<"$readme"; then learn_state=PASS; else learn_state=MISS; fi
  if grep -Eqi '<img|\.svg|\.png|```mermaid|shields\.io' <<<"$readme"; then visual_state=PASS; else visual_state=MISS; fi

  if gh api "repos/$OWNER/$repo/contents/.github/workflows" >/dev/null 2>&1; then ci_state=PASS; else ci_state=MISS; fi

  root_json="$(gh api "repos/$OWNER/$repo/contents" 2>/dev/null || echo '[]')"
  non_docs="$(python - "$root_json" <<'PY'
import json, sys
try:
    items = json.loads(sys.argv[1])
except Exception:
    items = []
ignore = {"README.md", "LICENSE", ".gitignore", ".github", "docs", "assets", ".seed"}
meaningful = [i.get("name", "") for i in items if i.get("name", "") not in ignore]
print("PASS" if meaningful else "MISS")
PY
)"

  printf '%-48s %-6s %-6s %-6s %-6s %-6s %-6s %s\n' \
    "$repo" "$about" "$readme_state" "$run_state" "$learn_state" "$visual_state" "$ci_state" "$non_docs"

  if [[ "$about" == MISS || "$readme_state" == MISS || "$run_state" == MISS || "$learn_state" == MISS || "$visual_state" == MISS || "$ci_state" == MISS || "$non_docs" == MISS ]]; then
    ((failures+=1))
  fi
done

echo
echo "Projects checked: $checked"
echo "Projects needing attention: $failures"
if [[ "$failures" -eq 0 ]]; then
  echo "Portfolio audit: PASS"
else
  echo "Portfolio audit: ATTENTION REQUIRED"
fi

# The audit is informational so it remains useful during cleanup without breaking shell workflows.
exit 0
