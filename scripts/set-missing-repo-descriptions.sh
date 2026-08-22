#!/usr/bin/env bash
set -euo pipefail

OWNER="skytruong90"
PROFILE_REPO="skytruong90"
PAGES_REPO="skytruong90.github.io"

command -v gh >/dev/null 2>&1 || {
  echo "GitHub CLI (gh) is required." >&2
  exit 1
}
command -v python >/dev/null 2>&1 || {
  echo "Python is required to extract clean README summaries." >&2
  exit 1
}

gh auth status >/dev/null

extract_description() {
  local repo="$1"
  local fallback="$2"
  local readme

  if ! readme="$(gh api \
      -H "Accept: application/vnd.github.raw+json" \
      "repos/$OWNER/$repo/readme" 2>/dev/null)"; then
    printf '%s' "$fallback"
    return
  fi

  README_TEXT="$readme" FALLBACK_TEXT="$fallback" python - <<'PY'
import os
import re

text = os.environ.get("README_TEXT", "").replace("\r\n", "\n")
fallback = os.environ.get("FALLBACK_TEXT", "")

# Remove fenced code blocks and HTML blocks that tend to contain badges/layout.
text = re.sub(r"```.*?```", "", text, flags=re.S)
text = re.sub(r"<[^>]+>", " ", text)

paragraphs = re.split(r"\n\s*\n", text)
chosen = ""
for paragraph in paragraphs:
    lines = []
    for raw in paragraph.splitlines():
        line = raw.strip()
        if not line:
            continue
        if line.startswith(("#", "![", "[![", ">", "---", "|", "```")):
            continue
        # Skip badge-only / link-only lines.
        if re.fullmatch(r"(?:\[[^\]]+\]\([^\)]+\)\s*)+", line):
            continue
        lines.append(line)
    candidate = " ".join(lines)
    candidate = re.sub(r"\[([^\]]+)\]\([^\)]+\)", r"\1", candidate)
    candidate = re.sub(r"[*_`~]", "", candidate)
    candidate = re.sub(r"\s+", " ", candidate).strip()
    if len(candidate) >= 35:
        chosen = candidate
        break

if not chosen:
    chosen = fallback

# GitHub repository descriptions should stay concise.
if len(chosen) > 155:
    shortened = chosen[:155].rsplit(" ", 1)[0].rstrip(".,;:- ")
    chosen = shortened + "."

print(chosen, end="")
PY
}

updated=0
kept=0
failed=0

mapfile -t repos < <(
  gh repo list "$OWNER" --limit 200 --json name --jq '.[].name' | sort
)

for repo in "${repos[@]}"; do
  if [[ "$repo" == "$PROFILE_REPO" || "$repo" == "$PAGES_REPO" ]]; then
    continue
  fi

  current="$(gh repo view "$OWNER/$repo" --json description --jq '.description // ""' 2>/dev/null || true)"
  if [[ -n "$current" ]]; then
    printf 'KEEP    %-48s %s\n' "$repo" "$current"
    ((kept+=1))
    continue
  fi

  human_name="${repo//-/ }"
  human_name="${human_name//_/ }"
  fallback="$human_name — portfolio-grade synthetic defense/aerospace engineering project with tests, CI, documentation, and reproducible examples."
  description="$(extract_description "$repo" "$fallback")"

  if gh repo edit "$OWNER/$repo" --description "$description"; then
    printf 'UPDATED %-48s %s\n' "$repo" "$description"
    ((updated+=1))
  else
    printf 'FAILED  %s\n' "$repo" >&2
    ((failed+=1))
  fi
done

echo
echo "About-description pass complete."
echo "Updated: $updated"
echo "Kept existing: $kept"
echo "Failed: $failed"

[[ "$failed" -eq 0 ]]
