# Contexte de travail

## Stack réel

Sites e-commerce **statiques** : HTML/CSS/JS vanilla, **sans build, sans bundler, sans framework**.
Panier en `localStorage`, checkout par lien WhatsApp, déploiement Netlify.
Animation : GSAP + ScrollTrigger, Three.js pour la 3D.
Backend/outils : Python sur VPS (bots Telegram, scraping, panneau admin).

## Conséquences directes

**Le TDD ne s'applique pas ici.** Il n'y a ni runner de tests, ni lint, ni CI sur ces projets.
Le skill `superpowers:test-driven-development` posait une règle « aucun code de production sans
test qui échoue d'abord », hors sujet sur du HTML/CSS/GSAP — il a été **retiré du plugin**
(déplacé dans `~/.claude/backups/superpowers-disabled/`, remets-le si un projet avec des tests
arrive). Ne fabrique pas une suite de tests pour satisfaire une procédure.

**En revanche `verification-before-completion` s'applique pleinement.** La « commande qui prouve »
n'est simplement pas `npm test` — c'est :
- ouvrir la page dans le Browser pane et regarder le rendu,
- cliquer le parcours réel (ajout au panier → panier → lien WhatsApp généré, avec les bons articles),
- lire la console navigateur et les requêtes réseau,
- `curl -I` sur l'URL Netlify après déploiement.

Ne jamais annoncer « c'est bon » sans avoir fait une de ces choses **dans le message en cours**.

**Ne propose pas** d'ajouter ESLint, Jest, TypeScript, Vite ou un `package.json` sur ces projets
sans que tu le demandes explicitement. Les skills de langage venus de collections externes
supposent souvent un stack moderne — ignore leurs prérequis d'outillage quand ils ne collent pas.

## Répartition des skills (pour ne pas les confondre)

**Front / 3D**

| Besoin | Skill |
|---|---|
| Direction motion / cinéma d'un site, storyboard, chorégraphie scroll | `cinematic-web` |
| API Three.js WebGL exacte, matériaux PBR, géométrie, perf | `threejs` |
| WebGPU, TSL, node materials, compute shaders | `webgpu-threejs-tsl` |
| Qualité visuelle d'une UI (éviter l'esthétique IA générique) | `frontend-design` |
| Déploiement, Forms, redirects, Image CDN Netlify | `netlify-*` |

**Créa et vidéo**

| Besoin | Skill |
|---|---|
| Stratégie de hook short-form, quelle scène tourner et pourquoi | `viral-hooks` |
| Écrire le prompt exact pour un modèle Higgsfield / Seedance / Kling / Veo | `higgsfield` |
| Décortiquer une vidéo existante, ou noter ses propres rushes | `video-teardown` |
| Algo, formats, specs et calendrier organique par réseau | `social-platforms` |

**Vendre**

| Besoin | Skill |
|---|---|
| Pourquoi une page ne convertit pas, quoi tester | `cro-audit` |
| Écrire une annonce Meta (primary text, titre, script UGC) | `ad-copy` |
| Relire et durcir une copy existante (page, email, VSL) | `copychief` |
| Campagnes payantes : structure, KPI, scaling, attribution, diagnostic | `media-buying` |
| Setup API Meta, permissions, câblage pixel/CAPI, specs de recadrage | `meta-ads-ops` |
| Concevoir un concept de créa : angle → mécanique → format | `creative-strategy` |
| SEO technique, contenu, schema, GEO/AEO, SEO e-commerce | `seo-*` (plugin claude-seo) |

**Méthode**

| Besoin | Skill |
|---|---|
| Cadrage avant de coder, debug méthodique, preuve avant de conclure | `superpowers:*` |
| Session longue qui doit survivre à un `/clear` ou une compaction | `planning-with-files` |
| Retry / async / anti-patterns sur les bots et scrapers Python | `python-resilience`, `async-python-patterns`, `python-anti-patterns` |

Quand deux skills semblent convenir :

- **`viral-hooks` décide quoi filmer, `higgsfield` écrit le prompt** pour le modèle visé.
- **`cinematic-web` décide quoi animer, `threejs` écrit le code** ; `webgpu-threejs-tsl` seulement
  si on est en WebGPU / TSL.
- Sur une créa publicitaire, l'ordre est : **`creative-strategy` fixe l'angle et la mécanique,
  `viral-hooks` écrit le hook, `higgsfield` écrit le prompt du modèle, `ad-copy` écrit le texte
  de l'annonce, `copychief` relit**. `media-buying` décide du budget et lit les résultats,
  `meta-ads-ops` câble la partie technique.
- Sur une URL : **`seo-page` si la question est « est-ce que ça se référence »,
  `cro-audit` si la question est « est-ce que ça vend »**. Si l'intention n'est pas claire,
  demande laquelle des deux plutôt que de lancer les deux.

## Notes d'installation

- `~/.claude/skills/` contient 19 skills ; 5 plugins sont actifs (`claude plugin list`).
  Coût permanent total ~9 000 tokens, dont **4 871 pour `claude-seo` seul** —
  `claude plugin disable claude-seo` si le SEO n'est pas d'actualité, `enable` pour le rallumer.
- `claude plugin details <nom>` donne le coût en tokens d'un plugin avant de l'installer.
- Les skills `video-teardown` et `media-buying` sont écrits sur mesure : GitHub n'a rien de
  sérieux sur ces deux sujets. Si tu les modifies, ils ne seront pas écrasés par une mise à jour.
- `video-teardown` a besoin de `ffmpeg` (`brew install ffmpeg`). Les scripts échouent proprement
  avec le message d'installation tant qu'il manque.

## Écriture

Réponses en français. Pas de jargon anglais quand un mot français existe.
Pas de flatterie, pas de récapitulatif de ce qui vient d'être dit.

## Argent réel

Si un MCP Meta Ads est connecté, il a les **droits d'écriture** sur un vrai compte publicitaire.
Aucune création, modification ou activation de campagne, ad set ou pub sans un « oui » explicite
de ta part dans le message en cours. La lecture et l'analyse sont libres.
