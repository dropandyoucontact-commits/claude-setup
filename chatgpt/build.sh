#!/usr/bin/env bash
# Régénère les paquets ChatGPT depuis les skills installés dans ~/.claude/skills.
# Utile après une mise à jour : bash chatgpt/build.sh
set -euo pipefail
S="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
OUT="$(cd "$(dirname "$0")" && pwd)"
STAGE=$(mktemp -d); trap 'rm -rf "$STAGE"' EXIT

for s in social-platforms creative-strategy copychief ad-copy cro-audit higgsfield genjutsu media-buying; do
  [ -d "$S/$s" ] || { echo "absent, ignoré : $s"; continue; }
  cp -R "$S/$s" "$STAGE/$s"
done

# media-buying suppose un connecteur Meta Ads que ChatGPT n'a pas.
[ -f "$STAGE/media-buying/SKILL.md" ] && python3 - "$STAGE/media-buying/SKILL.md" <<'PY'
import sys, re
p = sys.argv[1]; s = open(p, encoding='utf-8').read()
s = re.sub(r'301163812507432', '<TON_ID_DE_COMPTE>', s)
if '## Règle numéro un' in s and '## Attribution' in s:
    a, b = s.index('## Règle numéro un'), s.index('## Attribution')
    s = s[:a] + ("## Où tu tournes\n\n"
        "Ce skill a été écrit pour un environnement branché sur l'API Meta Ads. **Ici, tu n'as pas\n"
        "ce connecteur** — la table d'aiguillage vers les outils a donc été retirée.\n\n"
        "Conséquence : **tu ne peux pas diagnostiquer un compte que tu n'as pas lu.** Demande les\n"
        "chiffres avant de répondre — dépense, impressions, CPM, CTR sortant, vues 3 s et 15 s,\n"
        "conversions, fenêtre d'attribution, plage de dates. Sans eux, dis que tu ne listes que des\n"
        "causes possibles. Le reste du skill s'applique intégralement.\n\n") + s[b:]
open(p, 'w').write(s)
PY

# retirer les renvois vers des skills absents de ce paquet
python3 - "$STAGE" <<'PY'
import sys, os, re
st = sys.argv[1]
absent = ['viral-hooks','video-teardown','threejs','cinematic-web','meta-ads-ops','webgpu-threejs-tsl','seo-page']
for d in sorted(os.listdir(st)):
    p = os.path.join(st, d, 'SKILL.md')
    if not os.path.isfile(p): continue
    s = open(p, encoding='utf-8').read(); o = s
    for m in absent:
        s = re.sub(r'\| [^|\n]* \| `' + re.escape(m) + r'` \|\n', '', s)
    if s != o: open(p, 'w').write(s)
PY

rm -f "$OUT"/*.zip
cd "$STAGE"
for d in */; do zip -q -r "$OUT/${d%/}.zip" "${d%/}" -x '*.DS_Store'; done
zip -q -r "$OUT/tous-les-skills.zip" . -x '*.DS_Store'
ls -lh "$OUT"/*.zip | awk '{printf "  %-30s %s\n", $9, $5}'
