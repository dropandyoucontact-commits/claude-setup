# Lumière : décider, nommer, tenir d'un plan à l'autre

La lumière est perdue **entre** les plans bien plus souvent qu'à l'intérieur d'un plan. Ce fichier sert à la décider une fois par scène, à l'écrire d'une façon que le modèle dessine, et à la tenir identique sur toute la couverture. Grammaire et ratios : DirectorSKILL `lighting-and-color.md` (MIT). Positions de la source principale : grille classique, reformulée depuis Nomi (idées seulement, AGPL). Passe « réalisme UGC » : reformulée depuis les notes AVB. Noms de sources : smixs/visual-skills (CC BY 4.0).

## 1. Les rôles — et ce qui arrive quand on en oublie un

| Rôle | Ce qu'il fait | Si on ne l'écrit pas |
|---|---|---|
| **Key** (principale) | Direction, ratio, forme du visage ; **la seule lumière qui doit être motivée** par une source du décor | Pas de scène : ambiance seule, le sujet s'aplatit sur le fond |
| **Fill** (débouchage) | Combien de détail survit dans l'ombre = le ratio | Le ratio saute au maximum ; l'ombre passe au noir ; ça lit noir que tu l'aies voulu ou non |
| **Rim / back** (contre) | Sépare le sujet du fond, liseré sur cheveux et épaules | Le sujet fond dans un fond sombre. **Les modèles ne l'ajoutent presque jamais seuls : c'est la cause n° 1 des images IA « boueuses »** — l'écrire dans chaque prompt |
| Kicker | Arête dure sur la mâchoire côté ombre, trois-quarts arrière opposé à la key | Le côté ombre reste mou, le visage perd sa structure |
| Eye light | Petite source près de l'axe, un reflet dans l'œil | Yeux morts — la raison la plus fréquente d'un visage IA sans vie quand tout le reste est juste |
| Fond | Valeur du fond par rapport au sujet | Fond à la même valeur que le visage : image plate, sans profondeur |

Trois approches, par ordre d'utilité en IA : **source unique motivée** (une direction à tenir sur toute la scène : la continuité n'a qu'un travail) ; lumière disponible (documentaire, la plus dure à tenir car le modèle réinvente l'environnement à chaque clip) ; **trois points** (interview, produit, visage qui doit rester identique sur des dizaines de générations ; légèrement artificiel par construction ; le contre est l'élément le plus souvent oublié — le nommer).

## 2. Neuf positions de la source principale → effet → phrase à écrire

Direction toujours **relative à la caméra** (« camera-left cheek »), jamais anatomique (« his left cheek ») : pour un sujet face caméra, la gauche anatomique est la droite écran et les modèles se partagent — nommer le côté caméra retire un pile ou face qui coûte une génération.

Les noms des schémas classiques (Rembrandt, papillon, split) sont définis dans `higgsfield/vocab.md` § *Lighting*, et le principe « nommer le mécanisme physique plutôt qu'un adjectif » dans son § *Scene-physics lighting* : ne les redéfinis pas. Les colonnes qui t'appartiennent sont *Ce que ça dit* et le choix du schéma pour ce plan. La colonne de droite est une **clause à coller** : elle ne tient que si elle part identique au caractère près dans tous les plans qui partagent ce schéma.

| # | Position | Sur le visage | Ce que ça dit | Clause à coller (anglais, pour le modèle) |
|---|---|---|---|---|
| 1 | Frontale (dans l'axe) | Efface texture, âge, modelé ; ouvert, plat | Rien à cacher — et rien d'intérieur ; le mensonge est indétectable | `flat frontal light from the camera axis, no shadow on the face, open and even` |
| 2 | 45° avant (loop) | Ombre du nez courte vers la commissure, deux yeux éclairés | **Le défaut narratif** : assez d'ombre pour la réserve, assez de lumière pour lire l'intention | `key 45° camera-left, slightly above eye level, short nose shadow on the camera-right side, both eyes lit` |
| 3 | Rembrandt (45° avant, plus haut) | Triangle de lumière sous l'œil du côté ombre | Classique, dramatique, texture | `key high camera-left, a small lit triangle under the camera-right eye, the rest of that cheek in shadow` |
| 4 | Papillon (frontale, haute) | Ombre en papillon sous le nez, pommettes hautes | Glamour, âge d'or hollywoodien, beauté | `key directly in front and above the face, butterfly-shaped shadow under the nose, cheekbones highlighted` |
| 5 | Latérale 90° (split) | Moitié éclairée, moitié noire, un seul œil lu | Divisé ; décision pas encore prise ; une personne qui est deux choses | `hard side light from camera-left at eye level, the camera-right half of the face in full shadow` |
| 6 | Trois-quarts arrière | Visage surtout dans l'ombre, liseré sur la joue lointaine et les cheveux | Retenu : le public sait qu'on lui cache quelque chose | `key behind and to camera-left of her, a thin rim on her camera-right cheek and hair, face mostly in shadow` |
| 7 | Contre-jour pur (silhouette) | Identité retirée, forme gardée | Plus une personne : une arrivée ou une menace | `strong backlight directly behind him, face unlit, full silhouette with a bright edge, background brighter than the figure` |
| 8 | Zénithale | Orbites en trous, pommettes qui accrochent, bouche dans l'ombre | Jugé, institutionnel, aucune intériorité accordée ; interrogatoire | `single hard light straight above, deep shadows in the eye sockets, under the nose and chin` |
| 9 | Par-dessous | Inverse toutes les ombres qu'un visage a jamais eues | Faux au premier regard : monstre, écran de téléphone, tableau de bord. **Une fois par projet** | `light from below the chin, shadows cast upward on the face, eyes lit from underneath` |

Le modèle dessine mieux **l'ombre** que la lumière : pour du dur, décrire l'ombre (« a sharp shadow line across the wall behind him », « hard-edged window frame shadow on the floor ») ; pour du doux, la retirer (« overcast », « north-facing window », « no visible shadow line »). Dur/doux n'est pas un type de projecteur, c'est la taille apparente de la source vue du sujet.

## 3. Les ratios en mots — du plat au dramatique

Ratio = côté éclairé : côté ombre mesuré sur le visage. Le chiffre seul est ambigu (certains comptent key:fill, qui donne un chiffre plus petit pour le même visage) : **toujours l'écrire aussi en mots**.

| Ratio | Diaphs d'écart | Lecture émotionnelle | Genre d'origine | À écrire |
|---|---|---|---|---|
| 1:1 | 0 | Rien de caché, rien d'intérieur ; exposition sans révélation | Comédie, sitcom, info, corporate, horreur clinique | « Even light on both sides of the face, no shadow side » |
| 2:1 | 1 | Ordinaire, chaud, quotidien | Drame de jour, romance, la plupart de la télé | « Shadow side one stop under; the shadow reads as tone, not darkness » |
| 4:1 | 2 | Le personnage a un intérieur qu'on ne nous montre pas tout entier | Drame, thriller, période | « Shadow side clearly darker but still holds detail » |
| 8:1 | 3 | Le personnage retient quelque chose | Noir, horreur, interrogatoire, polar | « Shadow side nearly black, only the edge of the cheek catches light » |
| 16:1 | 4 | À peine présent ; une forme, plus une personne | Expressionnisme, climax d'horreur, mythe | « Only a sliver of the face is lit; everything else falls to black » |

Le ratio est un **curseur continu** et le travail intéressant est de le bouger **dans** la scène : ouvrir à 2:1 et finir à 8:1 quand quelqu'un cesse de dire la vérité. Les générateurs retombent vers 2:1 quand le plan se resserre et que la source sort du cadre : **redire le ratio en mots sur chaque gros plan**.

## 4. Lumière motivée : la source est dans le décor

La key doit venir de quelque chose que le spectateur peut nommer : fenêtre, lampe de bureau, écran, feu, frigo ouvert, néon, réverbère au sodium. Nommer la source, pas l'ambiance : « moody » se résout différemment à chaque génération ; « single green-shaded desk lamp on the far corner of the desk at head height, hard, tungsten warm, shadow side two stops under, room falls to black within a metre » survit à onze prompts de la même scène.

| Fenêtre de temps | Direction | Qualité | Couleur | Contraste | Durée réelle | Piège IA |
|---|---|---|---|---|---|---|
| Aube | Très basse, horizon | Douce avec brume | Or pâle → rose, ombres froides | Moyen | 20–40 min | Dire de quel côté est le soleil : défaut = contre-jour |
| Heure dorée | 0–10° d'élévation | Chaude, ombres longues et dures | Key ambre, fill bleu du ciel | Moyen-haut | 30–60 min en latitude moyenne, ~20 min près de l'équateur | **Le look le plus sur-appris** : contraindre (« low sun, long hard shadows, warm key and cool sky fill, no orange atmospheric haze ») |
| Midi | Haute | Dure | Neutre | Haut | Heures | Orbites en trous : prévoir un fill (sable, neige, mur) |
| Ciel couvert | Partout | Très douce, sans ligne d'ombre | Froide | Bas | Heures | Plat sur un visage sauf si le sol renvoie (neige = fill par-dessous) |
| Nuit pour nuit | Pratiques seules | Flaques de lumière avec du noir entre | Celle de la pratique | Très haut | Toute la nuit | Les modèles la remontent en jour bleu : « no ambient fill; black between the light pools » |

Une heure précise dans le prompt (« 3:40 PM–4:10 PM ») aide à tenir la lumière égale sur plusieurs plans (Rylaispirit, leçon de terrain).

Décroissance : pour une petite source, doubler la distance = un quart de la lumière (deux diaphs) ; une bougie à 0,5 m puis 1 m perd deux diaphs, une fenêtre à 5 m puis 6 m perd un demi-diaph. Conséquence : rapprocher un visage d'une pratique est un **événement** de lumière, pas un détail.

### Sources pratiques nommées — ce que chacune impose

Une pratique visible dans le cadre est la lumière la plus fiable en IA : le modèle a vu des milliers de photos étiquetées de chacune. Nommer la source donne gratuitement sa couleur, sa dureté et sa décroissance.

| Source | Couleur | Qualité | Décroissance | Registre | Phrase |
|---|---|---|---|---|---|
| Frigo ouvert | Bleu-vert froid | Dure, petite | Rapide : un mètre | Nuit, solitude, culpabilité | `cold greenish refrigerator light on his face, the rest of the kitchen dark` |
| Écran de téléphone | Bleu-blanc | Dure, par-dessous | Très rapide : le visage seul | Secret, insomnie, mensonge lu | `phone screen glow lighting her face from below, everything else black` |
| Lampe de bureau abat-jour | Tungstène chaud (vert si abat-jour vert) | Dure, flaque sur la table | Un mètre | Travail tardif, interrogatoire doux | `single desk lamp at head height, warm tungsten pool on the desk, background falling to black` |
| Néon d'enseigne | Magenta, cyan, rouge | Douce, large, colorée | Lente | Nuit urbaine contemporaine | `magenta neon wash through the window from the street sign, cyan from the pavement` |
| Réverbère au sodium | Ambre monochrome | Dure, haute | Flaques avec du noir entre | Rue de nuit, époque | `sodium vapor street light, monochrome amber pools, black gaps between them, no ambient fill` |
| Bougie | Orange profond | Dure mais vacillante, basse | Deux diaphs entre 0,5 et 1 m | Intime, secret partagé | `single candle between them on the table, warm flicker on both faces, overall exposure constant` |
| Fenêtre nord / ciel couvert | Froide, neutre | Très douce, sans ligne d'ombre | Lente | Portrait, confession calme | `north-facing window camera-left, soft wrap, no visible shadow line` |
| Plafonnier LED de cuisine | Blanc verdâtre | Dure, zénithale | Moyenne | Quotidien cru, dispute | `harsh overhead kitchen LED, shadows under the brows and nose` |
| Phares / tableau de bord | Blanc froid / orange | Dure | Rapide | Route de nuit, menace | `dashboard glow from below, passing headlights sweeping across the windshield` |

Sur un produit : une key large et douce camera-left, un rim dur camera-right arrière pour détacher le contour, le fond deux diaphs sous le produit, et **le point verrouillé** ; les reflets spéculaires d'une bouteille ou d'un écran s'écrivent (« one soft vertical highlight along the bottle, no hot spots »).

## 5. Deux visages, une seule direction

Un two-shot est **une** conception lumière, pas deux. La règle qui fait raccorder la couverture : **une direction de key dans la pièce, vraie pour les deux visages ; ce qui diffère par visage, c'est le ratio**. Donner à chaque acteur sa propre key = deux personnes dans deux météos, et aucun contre-champ ne les réconciliera.

| Dispositif | Géométrie | Ratio par visage | Ce que ça dit | Tenue en IA |
|---|---|---|---|---|
| Key partagée au bout de l'axe | Une source au-delà de l'un des deux (fenêtre dans son dos, porte derrière l'épaule de l'autre) | Celui qui fait face à la source ≈ 2:1 ; celui qui lui tourne le dos porte un rim et ≈ 6:1 côté caméra | Statut, et ça ne s'inverse pas au cut : un fait sur eux, pas une couverture | Moyenne : nommer derrière quel corps est la source ; dérive sur les singles serrés |
| Pratique **entre** eux | Bougie, lampe, écran au milieu de la table | Symétrique, 3:1 à 4:1 chacun | Égaux dans le même secret | **Haute** : la source est visible dans le cadre, le modèle la respecte |
| Flaque partagée (split pool) | Un corps dans la flaque, l'autre à sa lisière | 2:1 contre 8:1 | L'un est disponible, l'autre retient ; le cadre a déjà choisi un camp | Moyenne-haute si la frontière est sur une surface visible (bord de lumière sur la table, le sol entre eux) |

Au contre-champ, rien ne change dans la pièce et tout change dans les mots relatifs à la caméra : une key qui lit camera-left sur son single à elle lit camera-right sur le sien à lui, même lampe, moitié opposée du cadre. **Le test à chaque contre-champ** : celui des deux qui était le plus sombre doit le rester ; si l'écart s'inverse, le spectateur lit un changement de scène que personne n'a écrit. Générer le two-shot d'abord, l'approuver, en dériver les deux singles.

## 6. La clause d'invariant — collée, jamais paraphrasée

**Pourquoi cette clause est en anglais.** Ce skill écrit des *clauses à coller*, pas des prompts :
une clause ne tient son effet que si elle part **identique au caractère près** dans tous les plans
d'une même scène. Paraphrasée — traduite, résumée, réordonnée — le modèle la résout autrement à
chaque génération et la lumière saute d'un plan à l'autre. Les autres clauses de la même famille
sont le verrou de vitesse réelle, le verrou de point et la phrase de conséquence par plan. Ce qui
n'est jamais ici : le prompt complet, l'ordre de ses blocs, les paramètres, les optiques — c'est
le métier de `higgsfield-shotlist-director`. Aucune de ces clauses ne provient des notes de la
formation payante.

Une clause par scène, écrite en **espace monde** (la source, où elle est dans la pièce, sa hauteur, dur/doux, sa couleur, son ratio, le niveau du fond). Aucun mot « camera-left/right » dedans : c'est ce qui la rend collable telle quelle dans toutes les positions de caméra. Puis **une phrase par plan**, dérivée, qui dit où la lumière tombe depuis **cette** caméra et une conséquence visible dans le cadre.

```
Lighting: [source] [où elle est dans la pièce] at [hauteur], [hard|soft],
shadow side about [N] stops under, [couleur], background [niveau].
This shot: key [direction relative à cette caméra], [une conséquence visible dans le cadre].
```

Exemple complet (cuisine de la séquence B) :

```
Lighting: single window camera-left of the island, late afternoon, soft and large, shadow side
about two stops under, warm daylight, the far side of the kitchen falls into cool shade, no
overhead light on.
This shot (her single): key from camera-left; the window edge is visible behind her shoulder,
the camera-right side of her face holds detail.
This shot (his single): key from camera-right, behind him; a thin warm rim on his hair, the
camera-left side of his face nearly black.
```

Le seul champ qu'on peut bouger volontairement est l'écart en diaphs, et seulement sur les plans où le changement de ratio **est** le beat ; source, place, hauteur, qualité, couleur restent mot pour mot.

Le resserrement casse la lumière en silence : en large, la source est dans le cadre et le modèle a juste ; en gros plan, elle sort et le modèle revient à son défaut (frontal doux, 2:1, sans rim). Correctif : nommer la source hors champ **plus** une conséquence dans le cadre (« the lamp is out of frame camera-left; the shadow of his nose falls across his camera-right cheek »). La conséquence, le modèle sait la dessiner ; la source seule est un ordre qu'il peut ignorer.

Quand une key est inversée à la génération, dans l'ordre du moins cher : redire la direction par une conséquence et relancer ; miroir de l'image source (vérifier texte, raie des cheveux, cicatrice, montre, alliance, main dominante) ; corriger la lumière dans la keyframe plutôt que dans le prompt de mouvement ; accepter et inverser toute la scène (tôt seulement, en revérifiant la direction d'écran partout). « Flicker / flashing / pulsing » produit un pompage d'exposition de toute l'image : localiser (« the candle flame wavers and the light on the wall behind her moves slightly; overall exposure stays constant »).

## 7. L'étalonnage comme intention

Deux descripteurs maximum par prompt (« crushed blacks, fine grain »). Trois ou plus s'additionnent en brouillard indéfini — tout le lot ressemble à la même soupe beige. Les mots d'étalonnage concurrencent les mots de lumière : si la décision du plan est la direction de la key, retirer l'étalonnage du prompt de plan et le mettre dans la ligne de style de la scène. Jamais « flat log look » dans un rendu final : le modèle livre une image délavée finie.

| Palette nommée | Ce qu'elle dit | À écrire (et ce qu'on bannit) |
|---|---|---|
| Fincher froid | Contrôle, surveillance, vérité désagréable | « cold blue-grey shadows, desaturated skin, black negative space, no warm yellow tones » |
| Deakins | Intérieur refuge / extérieur hostile | « amber tungsten interiors against blue dusk exteriors, clean blacks » |
| Wong Kar-wai | Désir, mémoire, nuit humide | « warm reds and deep greens, hazy practicals, soft halation » |
| Néon Glazer | Noir + une seule teinte | « black frame, one saturated neon hue, no other color » |
| Commercial crémeux | Confiance, douceur, produit | « creams and pastels, soft contrast, no hard blacks » |
| Ambre contre vert profond | Nuit urbaine datée, texture | « sodium amber on foliage and plaster, deep green shadows » |

Le piège teal & orange : complémentaire où le chaud est exactement la peau et le froid exactement tout le reste — applicable à n'importe quelle image sans décision, donc partout ; il tue la couleur comme canal d'information. Alternatives qui gardent chaud/froid mais disent quelque chose : ambre contre vert ; peau neutre-chaude contre bleu-gris **désaturé** (tirer la saturation du froid plutôt que pousser l'orange) ; magenta contre cyan (nuit contemporaine). Stratégie de saturation, une seule et tenue : désaturation globale avec **un** objet saturé par cadre ; saturation qui suit la température émotionnelle scène par scène ; saturation comme marqueur d'époque. Pas de code hexadécimal, pas d'adjectif nu (« warm ») : des noms de **sources** et de **matières** — le modèle a vu des photos étiquetées des deux.

## 8. Faire passer un rush pour une image de téléphone (post-production)

**Champ d'application, à vérifier avant de toucher quoi que ce soit : UGC, faux rush de téléphone, pub sociale décontractée. Jamais un film de marque, un spot cinéma ni un plan produit léché** — sur ces registres, la même passe ne fait que dégrader une image qu'on a payée pour être propre.

Le principe tient en une phrase : un rush généré est trop *propre* pour un téléphone, et c'est la propreté qui le trahit, pas le manque de définition. Un capteur de téléphone en lumière réelle produit des noirs qui ne sont jamais vraiment noirs, des couleurs légèrement en retrait, des hautes lumières qui s'empâtent avant de brûler, et un cadre qui respire parce qu'une main le tient. Un modèle vidéo produit l'inverse : noirs bouchés, couleurs franches, hautes lumières denses, cadre parfaitement immobile. La passe consiste donc à **retirer de la perfection**, et c'est le contraste qui en donne le plus au premier geste — raison pour laquelle on commence par lui et non par la couleur.

Ce qu'on fait, sur un calque d'ajustement, en jugeant chaque geste par comparaison avant/après plutôt qu'à l'œil nu :

- **Ouvrir les noirs** jusqu'à ce que l'image cesse de lire comme un rendu. Le garde-fou est le délavé : dès que l'image perd son assise, le geste a dépassé sa cible.
- **Baisser un peu la saturation**, assez pour retirer l'arête trop nette des couleurs. Repère utile : une peau qui brille comme du vernis demande encore un cran ; une peau grise en demandait un de moins.
- **Baisser la densité des hautes lumières** d'un petit geste, pour que les zones claires s'ouvrent au lieu de peser — sans atteindre le blanc.
- **Ajouter un tremblé sous le seuil de perception.** Les outils de montage proposent cet effet à un niveau très au-dessus de ce qui est crédible : le bon réglage est celui qui place l'instabilité juste sous le seuil de conscience — elle agit sur la lecture du plan sans jamais se désigner comme traitement. Dès qu'un spectateur peut la nommer, le réglage a dépassé sa cible.

Le juge final n'est pas une valeur mais une bascule avant/après : si l'image corrigée pourrait sortir d'un téléphone et l'originale non, la passe a fait son travail.

## Checklist lumière avant de passer au prompteur

- [ ] Une source nommée et motivée par scène ; sa place dans la pièce, sa hauteur, dur/doux, sa couleur, son ratio écrits.
- [ ] Le rim est écrit dans chaque plan à visage sur fond sombre.
- [ ] Le ratio est en mots, redit sur chaque gros plan.
- [ ] Deux visages : une direction, deux ratios ; le plus sombre le reste au contre-champ.
- [ ] Clause d'invariant identique dans tous les prompts de la scène ; les mots camera-left/right ne sont que dans la phrase par plan.
- [ ] Deux descripteurs d'étalonnage au plus ; ce qu'on bannit est écrit et répété à chaque clip.
- [ ] Par-dessous : une fois par projet, sur le beat qui le mérite.
