---
name: creative-strategy
description: "Architecture stratégique d'une créa publicitaire — construire un angle marketing depuis le produit et la conscience du marché, choisir la mécanique cognitive qui fait atterrir le message, choisir le format visuel qui l'exécute, puis auditer une créa contre ces critères. Utilise ce skill quand il faut concevoir des concepts publicitaires, briefer une créa, décider quoi tester ensuite, expliquer pourquoi une pub marche au-delà de son hook, ou produire un lot de créas structurellement différentes plutôt que des variantes du même. Bibliothèque de la Creative Strategy Lead de Motion (outil d'analyse créa des agences paid social)."
allowed-tools: "Read Glob Grep Write WebSearch WebFetch"
---

# Creative Strategy

La couche qui manque entre « il faut tester 3 angles » et « voici un hook ».
Un concept publicitaire se construit en quatre étages, dans cet ordre :

**Angle** (quelle vérité on veut faire admettre)
→ **Mécanique** (comment le spectateur y arrive)
→ **Format** (comment on le produit)
→ **Hook** (la première ligne qui déclenche la mécanique).

Sauter un étage produit des variantes cosmétiques du même signal — exactement ce qu'il ne faut
pas donner à Andromeda, qui a besoin de créas **structurellement** différentes.

## Les fichiers

Charge celui dont tu as besoin, pas les quatre.

| Étape | Fichier |
|---|---|
| Construire l'angle depuis le produit, le public, le stade de conscience | `references/creative-strategy-engine.md` |
| Choisir la mécanique cognitive (comment le message atterrit) | `references/creative-mechanics.md` |
| Choisir le format de production qui l'exécute | `references/visual-formats.md` |
| Auditer une créa existante contre ces critères | `references/review-audit.md` |

Ces fichiers sont écrits pour un contexte d'agence anglophone. Traduis les cadres, ne recopie pas
les exemples : le registre d'une montre de luxe n'est pas celui d'un SaaS américain.

## Comment l'utiliser en pratique

**Pour produire un lot de créas** (le cas courant sous Andromeda) : fixe l'angle, puis fais varier
la **mécanique** et le **format** — pas le hook. Six créas qui utilisent six mécaniques différentes
sur le même angle donnent six signaux distincts. Six hooks différents sur la même mécanique et le
même format n'en donnent qu'un.

**Pour comprendre une pub concurrente** : décortique-la d'abord avec `video-teardown` (ce qui se
passe à l'écran, plan par plan), puis nomme sa mécanique avec `references/creative-mechanics.md`.
La description sans le nom de la mécanique ne se réplique pas.

**Pour décider quoi tester ensuite** : `references/review-audit.md` donne la grille. Le test suivant
doit changer un étage identifié, pas « améliorer » au jugé.

## Passe la main

| Besoin | Skill |
|---|---|
| Écrire le hook et la scène filmée | `viral-hooks` |
| Écrire le texte de l'annonce | `ad-copy` |
| Écrire le prompt du modèle vidéo | `higgsfield` |
| Décortiquer une créa concurrente | `video-teardown` |
| Combien de créas, quel budget, comment lire les résultats | `media-buying` |

Ce skill s'arrête au **concept**. Il n'écrit ni le hook, ni la copy, ni le prompt.

---

Sources : `motion-team/creative-strategy-skills` (MIT), par la Creative Strategy Lead de Motion.
