---
name: video-teardown
description: "Décortique une vidéo de fond en comble — plan par plan (frames), texte à l'écran, transcription audio horodatée, rythme de montage, structure de rétention, notation des plans. Utilise ffmpeg + la vision native de Claude + l'API de transcription OpenAI. Utilise ce skill dès que l'utilisateur fournit une vidéo (fichier local, lien TikTok / Reels / Shorts / YouTube) et demande de l'analyser, la décortiquer, la comprendre, en extraire le texte, le script, le hook, le montage, de faire un teardown de pub / UGC / créa concurrente, ou de trier ses propres rushes et générations IA."
allowed-tools: "Bash Read Write Glob"
---

# Video Teardown

Lire une vidéo comme un monteur : chaque plan, chaque mot à l'écran, chaque seconde de voix,
puis en tirer une analyse actionnable.

## Prérequis

```bash
command -v ffmpeg ffprobe >/dev/null 2>&1 && echo OK || echo "brew install ffmpeg"
```

`yt-dlp` est présent dans `~/Library/Python/3.9/bin/`. La clé de transcription est dans
`~/.config/openai/key`. Si `ffmpeg` manque, dis-le et donne la commande — n'improvise pas.

## Deux règles qui gouvernent tout

**1. Coût.** Chaque frame lue est une image envoyée au modèle. Ne lis jamais 40 frames une par
une. Le pipeline fait exprès deux passes : une planche-contact unique pour la vue d'ensemble,
puis 3 à 8 frames pleine résolution sur les moments qui comptent. Environ 10× moins cher qu'une
lecture naïve, sans rien perdre.

**2. Preuve.** Tu ne décris que ce que tu as réellement regardé. Pour chaque frame ou plan que
tu commentes, écris une description visuelle **unique** — deux plans ne peuvent pas recevoir la
même phrase. Une description recyclée est le signe que tu as noté sans regarder. Ne note jamais
un plan que tu n'as pas ouvert.

## Pipeline

Travaille dans un dossier jetable, jamais dans le projet : `WORK=$(mktemp -d)`.
Les scripts sont dans `~/.claude/skills/video-teardown/scripts/`.

### 1. Récupérer

Fichier local → tel quel. Lien TikTok / Instagram / YouTube / X :

```bash
export PATH="$HOME/Library/Python/3.9/bin:$PATH"
yt-dlp -f "bv*[height<=1080]+ba/b[height<=1080]" -o "$WORK/src.%(ext)s" "URL"
```

### 2. Sonder

```bash
ffprobe -v error -show_entries format=duration,size:stream=index,codec_type,codec_name,width,height,r_frame_rate,disposition \
  -of default=noprint_wrappers=1 "$WORK/src.mp4"
```

⚠️ **Les MP4 téléchargés depuis TikTok et Instagram embarquent une vignette MJPEG en flux 0.**
Un `ffmpeg -i` naïf extrait alors 25 fois la miniature au lieu de la vidéo. Les scripts fournis
détectent le vrai flux (`disposition.attached_pic != 1`) et passent `-map 0:<index>`.
Si tu écris une commande ffmpeg à la main, fais pareil.

### 3. Détecter les plans

```bash
bash ~/.claude/skills/video-teardown/scripts/cuts.sh "$WORK/src.mp4" 0.30
```

Seuil à adapter au contenu — un mauvais seuil donne un rythme faux :

| Contenu | Seuil |
|---|---|
| Défaut, créa mixte | `0.30` |
| Statique : slides, talking head fixe, screencast | `0.10` |
| Action rapide, caméra qui bouge beaucoup | `0.40` |

Le script sort le **rythme de montage** en coupes/seconde. Reporte-le toujours :
sous 0,3 c'est lent ; au-dessus de 1,0 c'est du montage nerveux type TikTok.

### 4. Planche-contact (passe large — 1 seule image)

```bash
bash ~/.claude/skills/video-teardown/scripts/contact-sheet.sh "$WORK/src.mp4" "$WORK/sheet.jpg"
```

La grille s'adapte au ratio : **3 colonnes en 9:16** (sinon la planche devient un mur illisible),
5 colonnes en horizontal. Puis `Read` sur `sheet.jpg` — tu vois d'un coup la progression, les
textes à l'écran, les changements de décor.

Le script affiche la **règle de lecture** en sortie. Retiens-la : les vignettes sont numérotées
à partir de 0, de gauche à droite puis ligne par ligne, et l'instant de la vignette *k* vaut
`k × pas`, le pas étant donné dans la sortie. Beaucoup de builds ffmpeg (dont celui de Homebrew)
n'ont pas le filtre `drawtext`, donc l'horodatage n'est pas incrusté dans l'image — c'est la
position qui te donne le temps.

Pour une vidéo de plus de 3 minutes, fais plusieurs planches par tranches plutôt qu'une planche
à 60 vignettes illisible.

### 5. Frames détaillées (passe fine)

D'après la planche, choisis les instants qui méritent la pleine résolution.
**Toujours inclure 0 à 1 seconde** — le hook s'y joue.

```bash
bash ~/.claude/skills/video-teardown/scripts/frames-at.sh "$WORK/src.mp4" "$WORK/f" 0.3 1.0 2.5 7.0
```

`Read` chacune. C'est là que tu lis le texte à l'écran mot pour mot, les sous-titres, les prix,
les logos. Si tu traites beaucoup de frames, va par lots de 5 à 10, jamais une par une.

### 6. Transcription horodatée

```bash
bash ~/.claude/skills/video-teardown/scripts/transcribe.sh "$WORK/src.mp4" > "$WORK/transcript.json"
```

Audio extrait en mono 16 kHz puis envoyé à l'API OpenAI, segments horodatés en retour.
S'il n'y a pas de piste audio, ou seulement de la musique, dis-le — ne fabrique pas une voix off.

### Plan B : vidéo longue

Au-delà de ~10 minutes (VSL, long ad, webinaire), l'approche par frames coûte trop cher.
Bascule sur : transcription complète d'abord, repérage des moments clés dans le texte,
puis frames ciblées uniquement sur ces moments. Ne fais pas de planche-contact exhaustive.

## Analyser

Rends toujours ces sections, dans cet ordre.

**Fiche technique** — durée, ratio, nombre de plans, coupes/s, VO / musique / sous-titres.

**Timeline** — un tableau plan par plan :

| t | visuel (description unique) | texte à l'écran | audio |
|---|---|---|---|

**Le hook (0–3 s)** — décris image par image ce qui se passe sur les 3 premières secondes et
nomme le levier d'attention. Le skill `viral-hooks` porte la grille des leviers ; appuie-toi
dessus. C'est la partie la plus importante de l'analyse.

**Structure de rétention** — boucles ouvertes, relances, changements de plan qui remettent
l'attention à zéro, et les moments précis où un spectateur décrocherait.

**Texte à l'écran** — police, position, timing, rapport au discours : le texte double-t-il la
voix ou ajoute-t-il autre chose ?

**Son** — voix off / dialogue / musique / sfx, et comment le son porte le rythme.

**Offre et CTA** — quel produit, quel angle, quelle promesse, quel appel à l'action, à quel moment.

**Verdict** — pourquoi ça marche ou pas, argumenté sur ce que tu as vu, pas sur des généralités.

**Comment le refaire** — une recommandation concrète, applicable au projet en cours.

## Notation des plans (tri de rushes et de générations IA)

Quand l'utilisateur veut **trier ses propres plans** — rushes, sorties Higgsfield/Seedance —
plutôt qu'analyser une créa, note chaque plan sur 5 dimensions, de 1 à 10 :

| Dimension | Ce qu'on juge |
|---|---|
| Esthétique | composition, lumière, étalonnage |
| Crédibilité | artefacts IA, mains, physique, cohérence du sujet |
| Impact | saillance visuelle, ce que l'œil attrape en 0,5 s |
| Mémorabilité | ce qui sort du lot (effet Von Restorff) |
| Intérêt | envie d'en parler, de partager |

Pondère selon le rôle du plan : un plan de **hook** se juge d'abord sur l'impact, un plan
**esthétique** sur la beauté, un plan **commercial** sur la crédibilité, un plan **narratif**
sur la lisibilité de l'action.

Tri : **≥ 8,5 à garder** · **7,0 à 8,5 utilisable** · **< 7,0 à jeter**.

Ordre de priorité quand deux critères s'opposent, dans l'esprit de Walter Murch :
émotion > histoire > rythme > trajet du regard > respect de l'axe.
Un plan techniquement parfait mais sans émotion perd contre un plan imparfait qui en a.

## À ne jamais faire

- Inventer un dialogue ou un texte à l'écran que tu n'as pas lu sur une frame ou dans la transcription.
- Analyser sur la seule base du titre, de la description ou du nom de fichier.
- Noter un plan sans l'avoir ouvert, ou réutiliser la même description sur deux plans.
- Oublier `-map 0:<index>` sur une vidéo issue d'un réseau social.
- Laisser des fichiers temporaires dans le dossier du projet — `rm -rf "$WORK"` à la fin.
