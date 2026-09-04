---
name: genjutsu
description: "Higgsfield Genjutsu — refaire une vidéo existante en changeant ce qu'il y a dedans : remplacer le personnage, la tenue, le décor ou le produit (Object Swap), ou rejouer le mouvement et le cadrage d'une vidéo de référence avec de nouveaux sujets (Motion Transfer). Utilise ce skill dès qu'il est question de décliner un UGC en plusieurs versions, de changer l'acteur ou le mannequin d'une vidéo, de mettre son produit dans une vidéo qui marche déjà, de refaire une créa concurrente avec sa propre marque, de recaster, de changer le décor d'un plan, ou dès que « Genjutsu », « motion transfer » ou « object swap » sont mentionnés."
---

# Genjutsu

Genjutsu prend une vidéo qui existe et en refait une autre en gardant ce qui marche — le
mouvement, le rythme, le cadrage — et en changeant qui ou quoi est dedans.

C'est l'outil qui transforme **une** bonne vidéo en **dix** créas : un même UGC décliné avec dix
visages, ou un même plan produit décliné sur toute une gamme.

## Les deux modes, et comment ne pas se tromper

Les deux prennent une vidéo **et** des images, et ont exactement la même signature technique.
C'est précisément pour ça qu'on choisit le mauvais. La question qui tranche :

> **Est-ce que je garde les pixels de la vidéo d'origine, ou seulement son mouvement ?**

| | **Object Swap** | **Motion Transfer** |
|---|---|---|
| `model_id` | `hf_mult_replace_object` | `hf_mult_motion_control` |
| Ce qui est gardé | Le plan d'origine, presque tout | Le mouvement, les angles, le timing |
| Ce qui est refait | Les éléments désignés | **Toute la scène**, reconstruite |
| Bon pour | Changer le produit tenu, la tenue, un objet, le fond | Recaster entièrement, changer de décor et de personne |
| Mauvais pour | Changer la personne *et* le lieu *et* la tenue d'un coup | Garder un détail précis de l'image d'origine |

**Object Swap** est un remplacement chirurgical : la main, la lumière, le grain, tout le reste
reste identique. C'est le mode pour « la même vidéo mais avec ma montre au poignet ».

**Motion Transfer** ne garde rien de l'image : il rejoue la chorégraphie avec de nouveaux sujets.
C'est le mode pour « la même énergie, le même mouvement de caméra, mais avec une autre personne
dans un autre endroit ».

Quand l'utilisateur dit « change le personnage », **demande laquelle des deux il veut** avant de
lancer : garder le décor et l'action et juste échanger la personne (Object Swap), ou tout refaire
en gardant le mouvement (Motion Transfer). Les deux répondent à la phrase, pas au besoin.

## La surface réelle

Vérifiée par `models_explore` sur le connecteur, le 4 septembre 2026. Les deux modèles
s'appellent « Genjutsu » côté produit ; ce sont deux `model_id` distincts.

| | |
|---|---|
| Point d'entrée | `generate_video` — **jamais** `motion_control` ni l'ad-multiplier, qui sont l'ancienne voie |
| `resolution` | `480p` · `720p` · `1080p` — **défaut 720p**, seul paramètre du modèle |
| `medias` | rôles `video_references` (la vidéo source) et `image_references` (les références) |
| Ratio | **aucun paramètre** — la sortie suit la source |
| Durée | **aucun paramètre** — elle vient de la vidéo source |
| Vidéo source | **3 à 30 secondes** |
| Images de référence | **jusqu'à 40** |

Deux conséquences pratiques que ces absences imposent :

**Le cadrage se décide au tournage, pas au prompt.** Il n'y a pas d'`aspect_ratio` : si la source
est en 16:9, la sortie est en 16:9. Pour du 9:16, la vidéo source doit déjà être en 9:16.

**La durée aussi.** Pas de paramètre : une source de 12 s donne 12 s. Pour un format court, coupe
la source avant de l'envoyer — `ffmpeg -ss <début> -to <fin>` — plutôt que d'espérer un réglage.

Ces valeurs bougent. Avant une session qui compte, revérifie :
`models_explore` avec `action: "get"` et `model_id: "hf_mult_motion_control"`.

## Comment lancer

**1. Espace de travail.** `select_workspace` d'abord. Sans ça les générations échouent en silence.

**2. Envoyer les médias.** Fichier local → `media_upload_widget` (le connecteur ne peut pas lire
une pièce jointe de conversation, c'est le widget qui fait l'envoi). URL web → `media_import_url`,
qui rend un `media_id`.

**3. Générer.** `generate_video` avec le `model_id` du mode choisi, les `medias` avec leurs rôles,
la `resolution`, et le prompt décrivant le changement.

**4. Coût.** Passe `get_cost: true` en préflight quand le modèle le supporte, avant de dépenser.
Sinon vérifie après coup avec `transactions`.

**Si une génération renvoie « Something went wrong » sans autre détail**, ce n'est presque jamais
le prompt : c'est un blocage de palier d'abonnement ou un manque de crédits. Vérifie avec
`show_plans_and_credits` avant de réécrire quoi que ce soit.

## Écrire le prompt

Le prompt de Genjutsu n'est pas un prompt de génération. Il ne décrit pas une scène — **il décrit
un changement**. Le reste doit rester tel quel, et tout ce que tu décris en trop est une invitation
à modifier ce que tu voulais garder.

Mauvais, parce qu'il redécrit toute la scène :
> Une femme élégante dans un appartement lumineux tient une montre dorée et sourit à la caméra,
> lumière naturelle, ambiance chaleureuse…

Bon, parce qu'il nomme la cible et la remplace :
> Remplace la montre au poignet du sujet par la montre de l'image 1. Garde la position exacte du
> poignet, l'échelle, l'angle et les reflets de la scène d'origine.

La règle : **nomme ce qui change, verrouille ce qui ne change pas.** Les verbes qui verrouillent
sont explicites — *garde*, *préserve*, *conserve exactement*. Sans eux, le modèle dérive.

Si le skill `higgsfield` est disponible, `skills/shared/negative-constraints.md` porte les
formulations de contrainte à reprendre mot pour mot plutôt qu'à paraphraser.

## Décliner un UGC en série

C'est l'usage qui rapporte le plus. La méthode :

**Une vidéo maîtresse.** Filme ou génère **une** vidéo qui marche vraiment — bon hook, bon
rythme, bon cadrage 9:16, entre 8 et 20 secondes. C'est le seul actif dont tout le reste dépend.
Vaut mieux y passer une journée qu'en produire cinq médiocres. Pour juger si elle est bonne, le
skill `video-teardown` sait noter un plan ; `viral-hooks` juge le hook.

**Un jeu de références par personnage.** Pour chaque visage que tu veux décliner, prépare 3 à 6
images de la même personne : un portrait cadré serré, un plan taille, une vue de profil, et la
tenue si elle compte. Ne mélange jamais deux personnes différentes dans le même lot — c'est la
cause n°1 de dérive d'identité.

**Une déclinaison par personnage.** Motion Transfer, la même vidéo maîtresse à chaque fois, le jeu
de références qui change. Le mouvement, le rythme et le cadrage restent identiques d'une version à
l'autre : ce qui varie est exactement ce que tu veux tester.

**Ce que ça donne côté publicité.** Dix versions du même mouvement avec dix visages différents,
ce n'est **pas** dix créas diverses. C'est une créa et dix variantes — l'algorithme n'y voit qu'un
signal. Le skill `media-buying` explique pourquoi la diversité structurelle compte plus que le
nombre : Genjutsu sert à trouver quel visage porte le mieux **un** angle, pas à remplacer le
travail de fabriquer plusieurs angles.

## Ce qui rate, et pourquoi

**L'identité dérive d'un plan à l'autre.** Références mélangées, ou visage trop petit dans les
images fournies. Un portrait serré en premier, jamais deux personnes dans le lot.

**L'objet remplacé ne tient pas dans la main.** Object Swap respecte la géométrie de la scène
d'origine : si le produit de remplacement a une forme très différente de l'original, la prise
devient incohérente. Choisis une vidéo source où l'objet tenu ressemble par la taille et la forme
à celui que tu veux mettre.

**Le résultat est plus mou que l'original.** C'est le signe d'un prompt qui redécrit au lieu de
verrouiller. Raccourcis, nomme uniquement le changement.

**La sortie n'est pas au bon format.** Il n'y a pas de paramètre de ratio : c'est la source qu'il
fallait cadrer.

Après chaque génération, ne te fie pas à un coup d'œil : passe le résultat à `video-teardown`
pour vérifier plan par plan que l'identité tient et que rien n'a bougé de ce qui devait rester.

## Droit à l'image

Genjutsu met le visage et le corps de personnes réelles dans des vidéos qu'elles n'ont pas
tournées. N'utilise comme référence que des personnes dont l'image peut légitimement être
utilisée : soi-même, un créateur payé avec des droits d'usage écrits, ou une personne générée
qui n'existe pas.

Le droit d'usage d'un contenu et le droit à l'image sont deux choses distinctes : payer un post
UGC achète le post, pas le droit de refabriquer le visage du créateur dans d'autres vidéos. Si
l'utilisateur fournit la vidéo ou le visage de quelqu'un d'autre, demande-lui s'il a ce droit
avant de générer — une fois, sans moraliser, puis fais ce qu'il dit.

## Où va Genjutsu, où vont les autres

| Besoin | Skill |
|---|---|
| Décider quoi filmer, quel hook | `viral-hooks` |
| Fixer l'angle et la mécanique de la créa | `creative-strategy` |
| Générer une vidéo **à partir de rien** (texte, image de départ) | `higgsfield` |
| Vérifier le résultat plan par plan | `video-teardown` |
| Combien de variantes, quel budget derrière | `media-buying` |

Genjutsu **transforme une vidéo qui existe**. Pour créer une vidéo de zéro, c'est `higgsfield`.

---

Surface d'API vérifiée le 4 septembre 2026 via `models_explore` sur le connecteur Higgsfield.
Contraintes produit (3–30 s, 40 images) tirées de higgsfield.ai/genjutsu.
