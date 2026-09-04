# claude-setup

Une configuration Claude Code curée pour construire et vendre des sites e-commerce statiques :
front et 3D, créa vidéo IA, publicité payante, SEO, réseaux sociaux.

`install.sh` récupère chaque skill tiers **à sa source d'origine**. Rien n'est redistribué ici,
sauf les quatre skills écrits pour ce dépôt.

```bash
git clone https://github.com/<compte>/claude-setup.git
cd claude-setup
bash install.sh
```

`--skills` pour ne poser que les skills, `--plugins` pour ne faire que les plugins,
`--check` pour regarder ce qui est déjà en place sans rien toucher.

---

## Ce que ça installe

### Skills écrits pour ce dépôt

| Skill | À quoi ça sert |
|---|---|
| `video-teardown` | Décortiquer une vidéo plan par plan : frames, texte à l'écran, transcription horodatée, rythme de montage, notation des plans. Deux passes (planche-contact puis frames ciblées) pour ne pas payer 40 images. |
| `media-buying` | Stratégie payante : phase d'apprentissage, attribution 2026, volume créatif sous Andromeda, retargeting, fatigue, saisonnalité, checkout WhatsApp. |
| `social-platforms` | Routeur vers les mécaniques d'algorithme 2026 des cinq réseaux. |
| `creative-strategy` | Routeur vers la bibliothèque de stratégie créative de Motion. |

Les deux routeurs existent pour une raison précise : les sources d'origine feraient 35 et 8 skills,
donc 43 descriptions chargées à chaque session. Regroupés, ils en coûtent 2, et les fichiers de
savoir se chargent à la demande.

### Skills tiers récupérés à la source

| Skill | Source | Licence |
|---|---|---|
| `higgsfield` | [OSideMedia/higgsfield-ai-prompt-skill](https://github.com/OSideMedia/higgsfield-ai-prompt-skill) | MIT |
| `threejs` | [mrgoonie/claudekit-skills](https://github.com/mrgoonie/claudekit-skills) | aucune au dépôt — usage local |
| `cro-audit` | [creativedeals/free-claude-skill-cro-audit](https://github.com/creativedeals/free-claude-skill-cro-audit) | permissive, attribution obligatoire |
| `copychief`, `ad-copy` | [robpalmer99/claude-code-copywriting-skills](https://github.com/robpalmer99/claude-code-copywriting-skills) | CC BY 4.0 |
| `meta-ads-ops` | [boringmarketer/meta-ads-skill](https://github.com/boringmarketer/meta-ads-skill) | MIT |
| `creative-strategy` (références) | [motion-team/creative-strategy-skills](https://github.com/motion-team/creative-strategy-skills) | MIT |
| `social-platforms` (références) | [sergebulaev](https://github.com/sergebulaev) — tiktok / instagram / youtube / facebook / linkedin-skills | MIT |
| `python-resilience`, `async-python-patterns`, `python-anti-patterns` | [wshobson/agents](https://github.com/wshobson/agents) | MIT |
| `netlify-deploy/forms/config/image-cdn` | plugin officiel `netlify-skills` | Netlify |

### Plugins

`superpowers` · `frontend-design` · `planning-with-files` · `webgpu-threejs-tsl` · `claude-seo`

---

## Trois décisions à connaître

**`netlify-skills` est réduit de 15 skills à 4.** Le plugin coûte ~3 150 tokens en permanence pour
quinze skills dont onze — identity, blobs, database, agent-runner, access-control — ne servent
jamais sur un site statique. L'installateur pose le plugin, extrait les quatre utiles, et le retire.

**`superpowers:test-driven-development` est mis de côté.** Sa description se déclenche sans
condition (« Use when implementing any feature or bugfix ») et son contenu suppose npm et Jest.
Sur un site HTML/CSS/JS sans runner ni CI, il fait perdre du temps à fabriquer des tests qui
n'ont nulle part où tourner. Il est déplacé dans `~/.claude/backups/superpowers-disabled/` —
`KEEP_TDD=1 bash install.sh` pour le garder.

**Deux fichiers de `threejs` sont supprimés.** `13-node-materials.md` et `16-webgpu.md` utilisent
`three/nodes` et `three/addons/renderers/webgpu/`, chemins morts depuis r167. Le SKILL.md est
réécrit pour renvoyer vers le plugin `webgpu-threejs-tsl`, qui est à jour. Le reste du skill est
correct : il utilise bien `outputColorSpace` / `SRGBColorSpace` et `detectSupport`.

---

## Coût en contexte

Environ 9 000 tokens chargés en permanence, dont **4 871 pour `claude-seo`** — vingt-cinq skills et
dix-huit agents. Si le SEO n'est pas ton quotidien :

```bash
claude plugin disable claude-seo   # et enable pour le rallumer
```

`claude plugin details <nom>` donne le coût exact d'un plugin, avant ou après installation.

---

## Prérequis

`git` et `python3` sont obligatoires. `claude` est nécessaire pour les plugins.
`ffmpeg` sert à `video-teardown` (`brew install ffmpeg` ou `apt install ffmpeg`) et `node` au
scanner de `cro-audit`. L'installateur signale ce qui manque sans s'arrêter.

## Après l'installation

Copie `CLAUDE.example.md` vers `~/.claude/CLAUDE.md` et adapte-le. Ce fichier porte les règles
d'arbitrage entre skills qui se disputent le même déclencheur — sans lui, `viral-hooks` et
`higgsfield` se battent sur « écris-moi un prompt vidéo IA », et `cro-audit` et `seo-page` sur
« regarde cette page ».

## Pour ChatGPT

Les skills utilisent le format `SKILL.md`, que ChatGPT accepte tel quel.
`chatgpt/` contient les paquets prêts à téléverser et le mode d'emploi.
