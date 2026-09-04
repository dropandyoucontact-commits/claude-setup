#!/usr/bin/env bash
# Installe la configuration Claude Code de ce dépôt.
#
#   bash install.sh              installe tout
#   bash install.sh --skills     seulement les skills (pas les plugins)
#   bash install.sh --plugins    seulement les plugins
#   bash install.sh --check      ne rien installer, vérifier ce qui est déjà là
#
# Rien n'est redistribué ici : chaque skill tiers est récupéré à sa source
# d'origine au moment de l'installation. Les licences restent chez leurs auteurs.

set -uo pipefail

SKILLS_DIR="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
SELF="$(cd "$(dirname "$0")" && pwd)"
TMP=""
DO_SKILLS=1; DO_PLUGINS=1; CHECK_ONLY=0

case "${1:-}" in
  --skills)  DO_PLUGINS=0 ;;
  --plugins) DO_SKILLS=0 ;;
  --check)   CHECK_ONLY=1 ;;
  --help|-h) sed -n '2,12p' "$0"; exit 0 ;;
  "") ;;
  *) echo "option inconnue : $1 (voir --help)" >&2; exit 2 ;;
esac

ok()   { printf '  \033[32m✓\033[0m %s\n' "$*"; }
warn() { printf '  \033[33m!\033[0m %s\n' "$*"; }
err()  { printf '  \033[31m✗\033[0m %s\n' "$*"; }
head_() { printf '\n\033[1m%s\033[0m\n' "$*"; }

cleanup() { [ -n "$TMP" ] && rm -rf "$TMP"; }
trap cleanup EXIT

# ── prérequis ────────────────────────────────────────────────────────────────
head_ "Prérequis"
MISSING=0
for c in git python3; do
  command -v "$c" >/dev/null 2>&1 && ok "$c" || { err "$c manquant (obligatoire)"; MISSING=1; }
done
command -v claude >/dev/null 2>&1 && ok "claude" || { warn "claude introuvable — les plugins seront sautés"; DO_PLUGINS=0; }
command -v ffmpeg >/dev/null 2>&1 && ok "ffmpeg" \
  || warn "ffmpeg absent — le skill video-teardown ne pourra pas analyser de vidéo (brew install ffmpeg / apt install ffmpeg)"
command -v node >/dev/null 2>&1 && ok "node" \
  || warn "node absent — le scanner de cro-audit et les scripts de meta-ads-ops ne tourneront pas"
[ "$MISSING" = 1 ] && { err "installe les prérequis obligatoires d'abord"; exit 1; }

if [ "$CHECK_ONLY" = 1 ]; then
  head_ "Skills présents dans $SKILLS_DIR"
  [ -d "$SKILLS_DIR" ] && ls -1 "$SKILLS_DIR" | sed 's/^/  /' || warn "répertoire absent"
  [ "$DO_PLUGINS" = 1 ] && { head_ "Plugins"; claude plugin list 2>/dev/null | grep '❯' | sed 's/^/  /'; }
  exit 0
fi

mkdir -p "$SKILLS_DIR"
TMP="$(mktemp -d)"

# clone_src <nom-court> <url>
clone_src() {
  [ -d "$TMP/$1" ] && return 0
  git clone --depth 1 --quiet "$2" "$TMP/$1" 2>/dev/null && return 0
  err "clone impossible : $2"; return 1
}

if [ "$DO_SKILLS" = 1 ]; then

  # ── skills maison (vivent dans ce dépôt) ───────────────────────────────────
  head_ "Skills maison"
  for d in "$SELF"/skills/*/; do
    [ -d "$d" ] || continue
    n="$(basename "$d")"
    rm -rf "${SKILLS_DIR:?}/$n"
    cp -R "$d" "$SKILLS_DIR/$n"
    ok "$n"
  done

  # ── skills tiers, récupérés à la source ────────────────────────────────────
  head_ "Skills tiers (récupérés chez leurs auteurs)"

  # higgsfield — OSideMedia, MIT. Prompts Higgsfield/Seedance/Kling, 33 sous-skills.
  if clone_src hf https://github.com/OSideMedia/higgsfield-ai-prompt-skill.git; then
    rm -rf "$SKILLS_DIR/higgsfield"; mkdir -p "$SKILLS_DIR/higgsfield"
    for f in SKILL.md DISCIPLINE.md INDEX.md README.md CHANGELOG.md LICENSE vocab.md \
             image-models.md model-guide.md photodump-presets.md production-benchmarks.md \
             prompt-examples.md skills specs templates scripts db; do
      [ -e "$TMP/hf/$f" ] && cp -R "$TMP/hf/$f" "$SKILLS_DIR/higgsfield/"
    done
    # scripts/validate.py utilise la syntaxe PEP 604, indisponible avant Python 3.10
    V="$SKILLS_DIR/higgsfield/scripts/validate.py"
    [ -f "$V" ] && ! grep -q 'from __future__ import annotations' "$V" && \
      python3 - "$V" <<'PY'
import sys, re
p = sys.argv[1]; s = open(p).read()
m = re.search(r'^(?:#![^\n]*\n)?(?:\s*#[^\n]*\n|\s*\n)*(?:(?:"""|\'\'\')(?:.|\n)*?(?:"""|\'\'\')\n)?', s)
i = m.end() if m else 0
open(p, 'w').write(s[:i] + 'from __future__ import annotations\n' + s[i:])
PY
    ok "higgsfield (MIT — O-Side Media)"
  fi

  # threejs — claudekit. Le dépôt ne déclare AUCUNE licence : on le récupère chez
  # l'auteur pour l'usage local, on ne le redistribue pas.
  if clone_src ck https://github.com/mrgoonie/claudekit-skills.git; then
    rm -rf "$SKILLS_DIR/threejs"
    cp -R "$TMP/ck/.claude/skills/threejs" "$SKILLS_DIR/threejs"
    # WebGPU/TSL : imports `three/nodes` morts depuis r167 → délégué au plugin dédié
    rm -f "$SKILLS_DIR/threejs/references/13-node-materials.md" \
          "$SKILLS_DIR/threejs/references/16-webgpu.md"
    python3 - "$SKILLS_DIR/threejs/SKILL.md" <<'PY'
import sys
p = sys.argv[1]; s = open(p).read()
s = s.replace("- **Node Materials (TSL)**: `references/13-node-materials.md` - Shader graphs, compute",
              "- **Node Materials (TSL)**: use the `webgpu-threejs-tsl` skill instead — the `three/nodes` import path is dead since r167")
s = s.replace("- **WebGPU**: `references/16-webgpu.md` - Modern backend, compute shaders",
              "- **WebGPU**: use the `webgpu-threejs-tsl` skill instead — current imports are `three/webgpu` and `three/tsl`")
open(p, 'w').write(s)
PY
    ok "threejs (claudekit — usage local, pas de licence au dépôt)"
  fi

  # cro-audit — CreativeDeals. Licence permissive, attribution obligatoire.
  if clone_src cro https://github.com/creativedeals/free-claude-skill-cro-audit.git; then
    rm -rf "$SKILLS_DIR/cro-audit"; mkdir -p "$SKILLS_DIR/cro-audit"
    cp -R "$TMP/cro/SKILL.md" "$TMP/cro/references" "$TMP/cro/scripts" "$TMP/cro/LICENSE.md" "$SKILLS_DIR/cro-audit/"
    ok "cro-audit (CreativeDeals — attribution obligatoire)"
  fi

  # copychief + ad-copy — Rob Palmer, CC BY 4.0.
  # landing-page-copy et direct-response-copy sont volontairement écartés :
  # registre « bridge page santé/compléments », inadapté à une marque.
  if clone_src cw https://github.com/robpalmer99/claude-code-copywriting-skills.git; then
    for s in copychief ad-copy; do
      rm -rf "${SKILLS_DIR:?}/$s"
      cp -R "$TMP/cw/$s" "$SKILLS_DIR/$s"
      cp "$TMP/cw/LICENSE" "$SKILLS_DIR/$s/LICENSE" 2>/dev/null
    done
    ok "copychief + ad-copy (CC BY 4.0 — Rob Palmer)"
  fi

  # meta-ads-ops — boringmarketer, MIT. Le côté opérationnel de Meta Ads.
  if clone_src bm https://github.com/boringmarketer/meta-ads-skill.git; then
    rm -rf "$SKILLS_DIR/meta-ads-ops"; mkdir -p "$SKILLS_DIR/meta-ads-ops"
    cp -R "$TMP/bm/SKILL.md" "$TMP/bm/reference" "$TMP/bm/scripts" "$SKILLS_DIR/meta-ads-ops/"
    cp "$TMP/bm/LICENSE" "$SKILLS_DIR/meta-ads-ops/LICENSE" 2>/dev/null
    python3 - "$SKILLS_DIR/meta-ads-ops/SKILL.md" <<'PY'
import sys
p = sys.argv[1]; s = open(p).read()
s = s.replace('name: meta-ads\n', 'name: meta-ads-ops\n', 1)
s = s.replace('or verifying Meta conversion tracking.',
  'or verifying Meta conversion tracking. This is the OPERATIONAL side (permissions, API calls, '
  'pixel/CAPI wiring, crop specs); for campaign strategy, budgets, scaling, attribution reading '
  'and diagnosis, use the media-buying skill instead.', 1)
open(p, 'w').write(s)
PY
    ok "meta-ads-ops (MIT — boringmarketer)"
  fi

  # creative-strategy — Motion, MIT. Les 4 fichiers deviennent des références
  # sous un routeur unique, pour ne pas charger 8 descriptions en permanence.
  if clone_src mo https://github.com/motion-team/creative-strategy-skills.git; then
    mkdir -p "$SKILLS_DIR/creative-strategy/references"
    for s in creative-strategy-engine creative-mechanics visual-formats review-audit; do
      cp "$TMP/mo/$s/SKILL.md" "$SKILLS_DIR/creative-strategy/references/$s.md" 2>/dev/null
    done
    cp "$TMP/mo/LICENSE" "$SKILLS_DIR/creative-strategy/LICENSE" 2>/dev/null
    ok "creative-strategy : 4 références (MIT — Motion)"
  fi

  # social-platforms — sergebulaev, MIT. Même logique : on prend les fichiers de
  # savoir des 5 dépôts, un seul routeur au lieu de 35 descriptions.
  mkdir -p "$SKILLS_DIR/social-platforms/references"
  SP=0
  for r in tiktok instagram youtube facebook linkedin; do
    if clone_src "sb-$r" "https://github.com/sergebulaev/${r}-skills.git"; then
      cp "$TMP/sb-$r/references/algorithm-heuristics.md" \
         "$SKILLS_DIR/social-platforms/references/${r}-algo.md" 2>/dev/null && SP=$((SP+1))
    fi
  done
  cp "$TMP/sb-instagram/references/hashtag-strategy.md"          "$SKILLS_DIR/social-platforms/references/instagram-hashtags.md" 2>/dev/null
  cp "$TMP/sb-youtube/references/thumbnail-principles.md"        "$SKILLS_DIR/social-platforms/references/youtube-thumbnails.md" 2>/dev/null
  cp "$TMP/sb-linkedin/references/industry-benchmarks.md"        "$SKILLS_DIR/social-platforms/references/linkedin-benchmarks.md" 2>/dev/null
  cp "$TMP/sb-linkedin/references/engagement-metrics-taxonomy.md" "$SKILLS_DIR/social-platforms/references/linkedin-metrics.md" 2>/dev/null
  cp "$TMP/sb-linkedin/LICENSE" "$SKILLS_DIR/social-platforms/LICENSE" 2>/dev/null
  ok "social-platforms : $SP/5 plateformes (MIT — sergebulaev)"

  # python — wshobson/agents, MIT. Trois skills seulement : ceux qui servent
  # aux bots et aux scrapers. Le plugin entier en contient 16, la plupart hors sujet.
  if clone_src wa https://github.com/wshobson/agents.git; then
    for s in python-resilience async-python-patterns python-anti-patterns; do
      SRC="$TMP/wa/plugins/python-development/skills/$s"
      [ -d "$SRC" ] && { rm -rf "${SKILLS_DIR:?}/$s"; cp -R "$SRC" "$SKILLS_DIR/$s"; }
    done
    ok "python-resilience, async-python-patterns, python-anti-patterns (MIT — wshobson)"
  fi
fi

# ── plugins ──────────────────────────────────────────────────────────────────
if [ "$DO_PLUGINS" = 1 ]; then
  head_ "Marketplaces"
  add_mp() { claude plugin marketplace add "$1" >/dev/null 2>&1 && ok "$1" || warn "$1 (déjà présent ou échec)"; }
  add_mp anthropics/claude-plugins-official
  add_mp OthmanAdi/planning-with-files
  add_mp dgreenheck/webgpu-claude-skill
  add_mp AgriciDaniel/claude-seo

  head_ "Plugins"
  inst() { claude plugin install "$1" >/dev/null 2>&1 && ok "$1" || warn "$1 (déjà installé ou échec)"; }
  inst superpowers@claude-plugins-official
  inst frontend-design@claude-plugins-official
  inst planning-with-files@planning-with-files
  inst webgpu-threejs-tsl@webgpu-threejs-tsl
  inst claude-seo@agricidaniel-claude-seo

  # netlify-skills : on installe le plugin pour en extraire 4 skills sur 15,
  # puis on le désinstalle. Les 11 autres (identity, blobs, database, agent-runner…)
  # ne servent pas sur un site statique et coûtent ~2 500 tokens en permanence.
  head_ "Netlify (4 skills sur 15)"
  if claude plugin install netlify-skills@claude-plugins-official >/dev/null 2>&1; then
    NS="$(find "$HOME/.claude/plugins/cache" -type d -path '*netlify-skills*/skills' 2>/dev/null | head -1)"
    if [ -n "$NS" ]; then
      for s in netlify-deploy netlify-forms netlify-config netlify-image-cdn; do
        [ -d "$NS/$s" ] && { rm -rf "${SKILLS_DIR:?}/$s"; cp -R "$NS/$s" "$SKILLS_DIR/$s"; ok "$s"; }
      done
      claude plugin uninstall netlify-skills@claude-plugins-official >/dev/null 2>&1
    else
      warn "cache du plugin netlify introuvable — les 15 skills restent installés"
    fi
  else
    warn "netlify-skills : installation impossible"
  fi

  # superpowers:test-driven-development impose « aucun code de production sans test
  # qui échoue d'abord ». Sur un site HTML/CSS/JS sans runner ni CI, c'est ingérable,
  # et sa description se déclenche sans condition. On le met de côté (réversible).
  TDD="$(find "$HOME/.claude/plugins/cache" -type d -path '*superpowers*/skills/test-driven-development' 2>/dev/null | head -1)"
  if [ -n "$TDD" ] && [ "${KEEP_TDD:-0}" != "1" ]; then
    mkdir -p "$HOME/.claude/backups/superpowers-disabled"
    mv "$TDD" "$HOME/.claude/backups/superpowers-disabled/" 2>/dev/null && \
      ok "test-driven-development mis de côté (KEEP_TDD=1 pour le garder)"
  fi
fi

# ── vérification ─────────────────────────────────────────────────────────────
head_ "Vérification"
python3 - "$SKILLS_DIR" <<'PY'
import os, re, sys
d = sys.argv[1]
names = bad = dead = 0
for n in sorted(os.listdir(d)):
    p = os.path.join(d, n, 'SKILL.md')
    if not os.path.isfile(p):
        continue
    names += 1
    s = open(p, encoding='utf-8', errors='ignore').read()
    m = re.search(r'^name:\s*(.+)$', s, re.M)
    if not m or m.group(1).strip().strip('"\'') != n:
        print(f"  \033[31m✗\033[0m {n} : le champ name ne correspond pas au dossier"); bad += 1
    for ref in set(re.findall(r'(?:references?|scripts|specs|templates)/[\w./-]+\.(?:md|sh|mjs|js|py|json|yaml)', s)):
        if not os.path.exists(os.path.join(d, n, ref)):
            print(f"  \033[33m!\033[0m {n} : référence absente → {ref}"); dead += 1
print(f"  \033[32m✓\033[0m {names} skills, {bad} frontmatter incohérent, {dead} référence(s) absente(s)")
PY

head_ "Terminé"
echo "  Skills dans : $SKILLS_DIR"
echo "  Relance Claude Code pour qu'il les charge."
echo "  Copie CLAUDE.example.md vers ~/.claude/CLAUDE.md et adapte-le à ton stack."
