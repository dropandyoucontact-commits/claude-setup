---
name: social-platforms
description: "Mécaniques d'algorithme et specs techniques à jour (2026) de TikTok, Instagram, YouTube, Facebook et LinkedIn — signaux de classement et leur pondération, suppresseurs de portée, formats et durées, zones de sécurité, limites de caractères, hashtags, miniatures, calendrier éditorial, lecture des métriques. Utilise ce skill dès qu'il est question de publier en organique sur un réseau, de savoir ce que l'algorithme récompense, de choisir un format ou un ratio, de calibrer une légende, de planifier un calendrier de contenu, de recycler un même rush sur plusieurs plateformes, ou de comprendre pourquoi un post ne fait pas de vues."
allowed-tools: "Read Bash Glob WebSearch WebFetch"
---

# Réseaux sociaux — algorithmes et specs

Ce que chaque plateforme récompense réellement, et les contraintes techniques qui vont avec.
Charge uniquement le fichier de la plateforme concernée — ne lis pas les cinq.

| Plateforme | Fichier |
|---|---|
| TikTok | `references/tiktok-algo.md` |
| Instagram (Reels, feed, carrousels) | `references/instagram-algo.md` + `references/instagram-hashtags.md` |
| YouTube (long et Shorts) | `references/youtube-algo.md` + `references/youtube-thumbnails.md` |
| Facebook (Page organique) | `references/facebook-algo.md` |
| LinkedIn | `references/linkedin-algo.md` + `references/linkedin-benchmarks.md` + `references/linkedin-metrics.md` |

## Ce qui bouge et ce qui ne bouge pas

Les **specs techniques** (ratios, durées, limites de caractères) sont stables sur quelques mois.
Les **pondérations d'algorithme** bougent plus vite. Les fichiers portent des chiffres datés 2026
avec leurs sources.

Si la question porte sur un changement récent, ou si un fichier a plus de six mois au moment où
tu le lis, **vérifie par recherche web avant d'affirmer** — et dis à l'utilisateur ce que tu as
vérifié et ce que tu as pris dans le fichier. Ne récite jamais une pondération de mémoire.

## Les quatre erreurs à ne pas commettre

**Confondre les caps API et les caps de l'app.** TikTok accepte 4 000 caractères de légende dans
l'app mais 2 200 par l'API — le bot de publication qui tourne sur le VPS est soumis aux caps API.
Vérifie toujours lequel des deux s'applique avant de donner une limite.

**Traiter les réactions comme de l'engagement.** Sur Facebook comme sur Instagram, ce sont les
partages et les envois en DM qui portent la portée, pas les likes. Sur Instagram 2026, la métrique
que l'algorithme suit le plus est le *sends per reach*. Optimiser pour les likes, c'est optimiser
pour le mauvais signal.

**Empiler les hashtags.** Sur Instagram, 20 à 30 hashtags lisent comme du spam en 2026 — 3 à 5,
calibrés en taille, est la pratique. Sur LinkedIn le ranker travaille en embeddings sémantiques,
donc 0 hashtag fait aussi bien ou mieux que 5.

**Publier le même export partout.** Chaque plateforme recadre différemment et masque une zone
différente sous ses propres surcouches. Vérifie la zone de sécurité de la plateforme visée avant
d'exporter, sinon le texte incrusté passe sous les icônes.

## Quand tu diagnostiques un post qui ne marche pas

Descends dans cet ordre et arrête-toi au premier étage cassé :

1. **Rétention des premières secondes** — un swipe-away rapide est la pénalité la plus lourde
   sur TikTok. Si ça décroche là, rien d'autre ne compte.
2. **Complétion / durée de visionnage** — le format est-il trop long pour ce que le contenu a à dire ?
3. **Signal de partage** — le contenu donne-t-il une raison de l'envoyer à quelqu'un ?
4. **Suppresseurs** — watermark d'une autre app, engagement bait, lien externe en corps de post,
   surcharge de hashtags. Ces pénalités sont mécaniques et indépendantes de la qualité.
5. **Cadence et cohérence du compte** — seulement en dernier.

## Passe la main

| Besoin | Skill |
|---|---|
| Concevoir le hook et la scène | `viral-hooks` |
| Écrire le prompt du modèle vidéo | `higgsfield` |
| Décortiquer une vidéo qui marche | `video-teardown` |
| Écrire une annonce **payante** | `ad-copy` |
| Piloter la campagne payante | `media-buying` |

Ce skill couvre **l'organique**. Dès qu'il y a un budget derrière, c'est `media-buying`.

## Publication

La publication se fait par le bot maison sur le VPS (Chrome connecté en noVNC), pas par une API
tierce. Ne propose pas Publora, WoopSocial ou un autre SaaS de publication : le savoir de ce skill
sert à décider quoi poster et sous quelle forme, pas à poster.

---

Références issues des dépôts `sergebulaev/{tiktok,instagram,youtube,facebook,linkedin}-skills` (MIT).
