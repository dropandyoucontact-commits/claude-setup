# Micro-drame vertical (duanju) — épisode, rythme, cliffhanger, antagoniste, saison

Épisode de 60-120 s en 9:16 (majiayu ; 0xsline dit « 1-3 min »), série de 50-100 épisodes (0xsline). Débit de parole 2,5 mots/s en anglais (vargHQ), **4,2 mots/s en français parlé vite** (mesure maison, fiche `methode-video-motion-validee`), sachant qu'environ 25 % du temps d'un épisode est du silence : un épisode de 90 s tient donc ~225 mots en anglais et **~283 en français** (90 × 0,75 × 4,2), pas 378. Plan moyen 1,5-3,5 s en dialogue (majiayu). Tout ce qui suit est transposable à un épisode généré en IA : un lieu principal, images de référence fixes pour les personnages, plans de 4-8 s avec une heure pour chaque réplique (vargHQ / drama.md).

Les huit fichiers de référence de 0xsline/short-drama (MIT, © 2025 0xsline) sont dans le lot téléchargé et sont la source principale de ce fichier : `opening-rules.md`, `hook-design.md`, `paywall-design.md`, `rhythm-curve.md`, `satisfaction-matrix.md`, `villain-design.md`, `genre-guide.md`, `compliance-checklist.md`.

## 1. Chiffres de cadrage

| Grandeur | Valeur | Source |
|---|---|---|
| Durée d'un épisode | 60-120 s (plafond de livraison 3 min) | majiayu ; 0xsline |
| Séquences par épisode | 3 à 5 | 0xsline rhythm-curve |
| Temps (beats de conducteur) pour 60 s | 7 à 12 | vargHQ |
| Mots dits, épisode de 90 s | ~283 en français, ~225 en anglais | dérivé (mesure maison + vargHQ) |
| Plan moyen en dialogue / réaction tenue | 1,5-3,5 s / 1-2 s | majiayu |
| Pause de dialogue | 0,6 s, sauf scène d'émotion où la pause est du jeu | majiayu |
| Épisodes d'une saison | 50-60 (serrée), 60-80 (standard), 80-100 (longue) | 0xsline |
| Épisodes pivots 🔥 / épisodes payants 💰 | 25-35 % / 10-15 % des épisodes | 0xsline |
| Niveau de la musique de tension sous le dialogue | 18-22 LU ; −14 LUFS à la livraison | majiayu |

## 2. Grille d'un épisode, en secondes

| Position | 60 s | 90 s | 120 s | Ce qui se passe | Sources |
|---|---|---|---|---|---|
| 0-3 s | 0-3 | 0-3 | 0-3 | Conflit déjà en cours, lisible muet. Pas de contexte. Sujet gros et centré. 3-5 mots à l'écran disent la même chose que l'image. | majiayu ; Nomi ; vargHQ |
| 0-10 % | 0-6 | 0-9 | 0-12 | Épisode 1 : un des 6 modèles d'ouverture (§5). Épisodes suivants : **5 s maximum** pour répondre au suspense précédent, puis nouvelle tension aussitôt ; carte d'épisode 2,5 s après le rappel. Chaque début s'écrit comme un épisode 1. | 0xsline rhythm-curve ; majiayu (chip 4,0-6,5 s) |
| 10-55 % | 6-33 | 9-50 | 12-66 | Escalade. Séquence 1 : le conflit se déploie (la plus dense en information). Séquence 2 : la pression monte (action du méchant, malentendu, détresse aggravée). Séquence 3 (optionnelle) : information neuve ou bascule. **Aucun plateau**, progression entre séquences, zéro scène d'exposition, chaque transition est MAIS ou DONC. Nouveauté toutes les 2-3 s, pic émotionnel toutes les 20-30 s. | 0xsline rhythm-curve ; majiayu ; vargHQ |
| 55-85 % | 33-51 | 50-77 | 66-102 | Le retournement : révélation, trahison ou décision. Relisible depuis les indices posés avant. **Silence sur la réplique de révélation ; tenir 1-2 s sur la réaction.** | majiayu ; VanGong (idée) |
| 85-100 % | 51-60 | 77-90 | 102-120 | Conséquence immédiate du retournement. Option A (épisode ordinaire) : point de satisfaction 🔥 puis nouvelle question. Option B (épisode payant 💰) : suspense extrême, coupe sèche sans libération. Jamais de récapitulatif, jamais de fondu. | 0xsline rhythm-curve ; vargHQ règle 10 |
| 3-8 dernières s | 52-60 | 82-90 | 112-120 | Cliffhanger : couper sur la question — un regard, une porte, un écran de téléphone — puis smash cut sur la carte « Épisode n+1 → » (1,5 s). Riser avant, boom sur la carte. « Plutôt un point d'interrogation qu'un point final. » | majiayu ; Nomi |

**L'épisode est lui-même un petit film en trois actes** (0xsline rhythm-curve) : 30 s de crochet, 1 à 1,5 min de montée, 30 s de libération ou de coupe. Dans les 30 s d'ouverture : reprendre le suspense précédent, lancer le conflit de l'épisode, poser son ton. Dans la montée : chaque séquence est en rapport de conséquence avec la précédente, jamais côte à côte, et **aucun « vide d'information »** (une séquence de transition sans information neuve est à couper).

Variante vargHQ (drama.md) pour un 60-90 s : 0:00-0:03 crochet (un visage, une réplique choc ou une révélation ; la première image EST le problème) · 0:03-0:10 orientation (qui veut quoi et ce qui cloche, en 2-3 répliques ; vêtements et accessoires disent le statut) · 0:10-0:45 un seul beat avec un turn net · 0:45-0:55 micro-paiement, la question de la série reste ouverte · 3-8 dernières s : bouton (révélation, renversement, délai ou intrusion). vargHQ précise que les repères entre 0:10 et le bouton sont une interpolation, pas une mesure.

**Montage à écrire dans le script** (majiayu) : J/L cuts 4-12 images sur le dialogue, la réplique en L sur le visage de celui qui écoute dans les confrontations ; pauses serrées à 0,6 s sauf émotion ; sous-titres entre 10 et 85 % de hauteur, jamais sur la bouche.

**Grille créateur de 60 s, pour comparaison** (x3allamerican, format « résultat différé », pas fiction) : mise en place 0-5 s, action 5-30 s, montée 30-45 s, bord du gouffre 45-55 s, coupe 55-60 s — soit 8 / 42 / 25 / 17 / 8 %, cohérent avec la grille majiayu.

## 3. La courbe de rythme

La forme n'est pas « toujours fort » mais **tendu → relâché → plus tendu → relâché → le plus tendu** (0xsline rhythm-curve). L'accélération continue anesthésie ; c'est l'alternance qui tient. Formule de la boucle : **montée sous tension → libération → courte respiration → nouvelle montée.**

Dans un épisode, la respiration est courte : 2,5-4 s de plan presque vide après un choc (règle de parc, voir `mise-en-scene`), pas une séquence. Une respiration qui dure une séquence entière appartient à la saison, pas à l'épisode.

**Outils d'accélération** (0xsline rhythm-curve) :

| Outil | Effet | Où s'en servir |
|---|---|---|
| Séquences courtes en coupe rapide | urgence | poursuite, face-à-face, compte à rebours |
| Récit croisé sur deux lignes | densité d'information | un complot sur le point d'être découvert |
| Dialogue accéléré (répliques plus courtes, moins de pauses) | tension | dispute, révélation, mise en accusation |
| Horloge posée à l'écran | échéance | sauvetage, délai de paiement, train à prendre |
| Retournements enchaînés | casse l'anticipation | zone de climax seulement |

**Outils de décélération** :

| Outil | Effet | Où s'en servir |
|---|---|---|
| Scène à deux, sans tiers | approfondissement | avancée de la ligne sentimentale |
| Solitude ou souvenir | intériorité | juste avant une bascule, ou au point le plus bas |
| Fragment de quotidien | respiration | après un grand point de satisfaction |
| Plan d'ambiance, changement de lumière | transition | passage d'un lieu à l'autre |

**Ratio accélération : décélération par phase de saison** (0xsline) : lancement 6:4 · montée 7:3 · tempête 8:2 · décisive 9:1 d'abord, puis 3:7 pour clore. Le ratio se lit en nombre de séquences, pas en secondes.

## 4. Les 30 premières secondes de l'épisode 1

Règle des 5 secondes d'or (0xsline opening-rules) : **seconde 1** = choc visuel ou suspense lancé ; **seconde 3** = conflit central ou contraste d'identité établi ; **seconde 5** = le spectateur ressent « et ensuite ? ».

Les 30 premières secondes (≈ 3 paragraphes de script, 0xsline) accomplissent trois choses : établir le conflit central ou le suspense ; montrer la situation du héros (faiblesse, détresse ou contraste) ; lancer le premier crochet. Épisode 1 : dire l'injustice ou le secret tout de suite (vargHQ). Le spectateur peut connaître le secret dès l'épisode 1 (l'héritier caché, la trahison) ; **les autres personnages, non** — la confrontation où le méchant l'apprend appartient au palier payant ou plus tard (vargHQ règle 9).

Grille d'autocontrôle de l'ouverture (0xsline opening-rules, traduite) :

| Contrôle | Standard | Si ça ne passe pas |
|---|---|---|
| Impact dans les 5 premières secondes ? | choc d'image ou suspense posé | réécrire l'ouverture, pas la retoucher |
| Établissement fait en 30 s ? | conflit, identité ou détresse montrés | compresser l'information amont |
| Surcharge d'information ? | **≤ 3 personnages dans la première séquence** | réduire les présents |
| Voix off de contexte ? | aucune, ou quasi | repasser l'information en image |
| Une raison de continuer ? | **≥ 1 question sans réponse** | ajouter un suspense |
| Identification au héros ? | sa situation appelle la pitié ou la curiosité | durcir sa détresse |

Interdits (0xsline, VanGong) : longue voix off de contexte ; plans de paysage vides ; chronique du quotidien ; « il était une fois un homme nommé… » ; trop de personnages d'un coup ; dialogue explicatif à la place d'une collision.

## 5. Les 6 modèles d'ouverture duanju

Convention de comptage dans tout ce skill : un mot = un groupe séparé par une espace ; élision et traits d'union comptent pour un mot. Plafonds : ≤ 6 mots en caméra, ≤ 12 en voix off ou sur un plan d'écoute.

Ces six modèles sont des **enchaînements en trois temps**, plus contraints que les huit façons d'ouvrir du SKILL.md § 4 : là où le SKILL.md donne une porte d'entrée (action en cours, objet incongru, résultat avant la cause…), un modèle duanju impose en plus l'ordre des trois temps, le genre visé et la position du détail qui trahit. La correspondance évite d'écrire deux fois la même ouverture :

| Modèle duanju | Les trois temps, dans l'ordre | Façon du SKILL.md § 4 qu'il contraint | Genres (0xsline genre-guide) |
|---|---|---|---|
| La gifle directe | humiliation publique du héros → l'humiliateur en fait trop → le héros se retient, **un seul détail trahit son rang** | contradiction / contre-pied | revanche, familial, « dieu de la guerre » |
| Le renversement d'identité | A juge B tout bas → l'identité réelle de B surgit **dans les 5 s** → écart cognitif, sur le visage de A | contradiction / contre-pied | PDG, bébé mignon, comédie |
| La détresse extrême | héros au bord de la mort → bascule (renaissance, éveil) → il comprend qu'il a une seconde chance | pris au piège | renaissance, enquête |
| Le suspense en flash-back | scène-résultat à fort impact → carton « il y a N jours » → retour au début | résultat avant la cause | enquête, palais, drame familial |
| Le crochet très sucré | contact physique accidentel → alchimie visible → une réplique basse qui fait chavirer | dialogue en cours | romance, mariage éclair |
| Le départ à la renaissance | commencer **à l'instant** du retour → le héros confirme temps, lieu, identité → il agit dans la même séquence | action en cours | renaissance, apocalypse |

Trois choses que ces modèles ajoutent, et qu'une ouverture générique oublie :

1. **Le détail qui trahit est unique et muet.** Dans « la gifle directe », le héros ne répond pas : un écran de téléphone, un galon sous le col, une montre. Deux détails tuent l'effet, parce que le spectateur croit avoir compris et s'en va.
2. **L'écart cognitif se joue sur le visage de celui qui s'est trompé**, jamais sur celui qui est révélé. L'humiliateur qui blêmit est le plan utile ; le héros impassible est le décor de ce plan.
3. **Plus l'humiliation d'ouverture est dure, plus la libération devra être grande** (0xsline) — et elle est à crédit : si elle n'arrive pas avant le premier palier payant, le spectateur part avec le sentiment d'avoir été grugé.

Point commun : les trois temps tiennent en 10-20 s, le premier plan est déjà la collision, aucun temps n'explique.

## 6. Les 6 types de cliffhanger, un exemple écrit chacun

Trois taxonomies se recoupent (0xsline hook-design, omer-metin patterns, picsart serialization) ; on garde six noms de travail. Chaque exemple ci-dessous est écrit au standard de sortie du skill : répliques en caméra ≤ 6 mots, un locuteur par plan.

**1 — Révélation** (dire la moitié de l'information). Couper pendant que le sens se forme, pas après.
```
0:84-0:87  Elle tourne la dernière page du carnet de son père.
0:87-0:89  GROS PLAN : une seule ligne, « ne fais confiance à personne, surtout pas à »
0:89-0:90  Le bas de la page est arraché. Son pouce s'arrête dessus.
```

**2 — Retournement** (on croit A, la dernière seconde dit B). Exige que le « A » ait été installé pendant tout l'épisode.
```
0:83-0:86  Le marié soulève le voile. Sourire déjà en place.
0:86-0:88  Sa main se fige à dix centimètres du visage.
0:88-0:90  Ce n'est pas elle. L'inconnue, calme : « Bonsoir. »   (1 mot)
```

**3 — Péril** (un danger concret, pas une menace vague). Le danger doit avoir un nom et une horloge.
```
0:82-0:85  Banquet. Elle lit le message : « chambre 312, les photos sont parties. »
0:85-0:88  Il arrive dans son dos, deux coupes à la main.
0:88-0:90  Lui, souriant : « Je bois à toi. »   (4 mots)
```

**4 — Décision** (le spectateur veut savoir ce qu'elle choisit, pas ce qui lui arrive).
```
0:82-0:85  Palier. À gauche la porte ouverte, les clés dessus. À droite l'ascenseur.
0:85-0:88  Elle regarde l'une, puis l'autre. Personne ne parle.
0:88-0:90  Elle pose la main sur— noir.
```

**5 — Arrivée ou départ** (quelqu'un entre, quelqu'un sort, et l'identité ou la raison manque).
```
0:83-0:86  Deux heures du matin. La sonnette.
0:86-0:88  Elle regarde l'écran de l'interphone : le visage est flouté par la pluie.
0:88-0:90  Elle, bas : « T'es pas censé vivre. »   (4 mots)
```

**6 — Émotion coupée** (le pic affectif tranché juste avant la libération ; demande au moins une demi-épisode de préparation).
```
0:82-0:86  Toit. Il prend son visage dans ses mains.
0:86-0:88  Lui : « Depuis le premier jour, je— »   (5 mots)
0:88-0:90  Un cri en bas. Les deux se retournent. Fumée.
```

**Règles de rotation** (sources concordantes) :
- Jamais le même type **trois épisodes de suite** (0xsline). Picsart, plus strict : pas de répétition consécutive, **pas plus de deux fois le même type sur cinq épisodes**, au moins quatre types par saison.
- Le retournement : **5 à 7 fois maximum sur toute la série**, sinon immunité (0xsline).
- Quatre intensités (omer-metin) : douce / moyenne / forte / extrême = finale. Varier ; accepter quelques fins douces ; mériter les grosses. Anti-patron « tension épuisante » = toujours au maximum.
- Cumuls qui marchent : suspense + émotion ; retournement + péril ; information + suspense ; péril + émotion. À éviter : retournement + retournement (dilution), information + information (surcharge), **trois crochets ou plus** (0xsline).
- Couper AVANT la révélation = « que va-t-il se passer ? », tension maximale ; couper APRÈS = « qu'est-ce que ça veut dire ? », nouvelle direction (omer-metin). Un 💰 coupe avant.
- Dernier épisode : **pas de crochet**, il conclut (0xsline, picsart).

**Test « Wait, what? »** (omer-metin) sur la dernière image : « Wait, what? » ou « Non ! la suite ! » = parfait ; « Hmm, intéressant » = bon ; « Ok, je suppose » = faible ; « Enfin, c'est fini » = raté.

**Règle du retour** (0xsline, picsart) : l'épisode suivant doit répondre — pas forcément en entier, mais avec une information nouvelle ; il s'ouvre sur la **conséquence** du cliffhanger, jamais sur sa réponse ni sur un rappel ; la réponse n'arrive pas avant la seconde moitié (picsart).

## 7. Paliers payants — positions chiffrées

Source : 0xsline `paywall-design.md` (MIT), qui chiffre à la fois le rang des épisodes et la densité. Trois principes de placement : **pic d'émotion** (jamais sur un plat), **question en suspens** au moment de la coupe, **coût déjà engagé** (le spectateur a trop investi pour partir).

| Palier | Épisodes | Stratégie | Pourquoi là |
|---|---|---|---|
| Premier | **8-12** | le suspense le plus fort de tout le début | fenêtre de conversion : le gratuit en amont doit avoir accumulé assez de crochets |
| Deuxième | **18-25** | révélation d'identité | climax de milieu, le spectateur est engagé |
| Troisième | **35-45** | climax de la ligne sentimentale | moment où l'affect est au plus haut |
| Ultime | **3-5 avant la fin** | juste avant le duel final | tout l'investissement émotionnel est déjà payé |

| Densité | Nombre de paliers |
|---|---|
| 50-60 épisodes | 5 à 7 |
| 60-80 épisodes | 7 à 10 |
| 80-100 épisodes | 10 à 13 |

Contraintes de répartition (0xsline) : **intervalle minimum 5 épisodes** entre deux paliers ; **2 maximum dans les 10 premiers** ; densité la plus forte au milieu (de 11 % à 70 % des épisodes) ; dans le dernier tiers, **1 à 2 suffisent**, l'habitude de payer est prise.

Les cinq mécaniques de coupe payante (0xsline) : identité sur le point d'être révélée ; vie en jeu ; émotion interrompue ; complot du méchant qui aboutit ; vérité sur le point d'éclater. Un épisode 💰 coupe **une seconde avant** : le galon sous le col, la main tendue, « depuis le début je— », l'enveloppe ouverte.

Interdits (0xsline) : coupe sans suspense ; faux suspense résolu dans les 10 premières secondes de l'épisode suivant ; information clé déjà devinée ; **un même suspense utilisé pour deux paliers de suite** (épisode 10 l'identité, épisode 11 encore l'identité = colère) ; palier posé sur un détail secondaire. Le premier épisode payant honore **immédiatement** le suspense accumulé — et en ouvre un nouveau dans le même épisode.

Articulation gratuit / payant (0xsline) : les épisodes gratuits établissent les personnages et le conflit, accumulent **≥ 3 suspenses ouverts**, font goûter la satisfaction en petit, et le dernier gratuit porte le crochet le plus fort. Côté payant : honorer puis réouvrir, une satisfaction moyenne tous les **5-8 épisodes**, une grande tous les **15-20**, la dernière est la plus forte de la série. vargHQ ajoute que les 10-20 premiers épisodes sont souvent gratuits et que **les épisodes 1-3 vendent la série**.

## 8. Matrice de satisfaction — quel besoin, à quel moment

Essence (0xsline satisfaction-matrix) : **refoulement → libération**. Un plaisir sans refoulement préalable est bon marché. **Au moins 1-2 épisodes de refoulement avant chaque point de satisfaction** ; refoulement lent, libération rapide ; **la réaction des témoins est obligatoire** (c'est l'amplificateur) ; le sort de l'humiliateur se montre.

Lue comme une liste de besoins du spectateur, la matrice dit quoi servir et où le placer dans l'épisode :

| Besoin servi | Type de satisfaction | Formule | Où dans l'épisode | Public visé |
|---|---|---|---|---|
| Être reconnu à sa valeur | Écrasement par l'identité | mépris → accumulation → révélation ritualisée → l'humiliateur s'effondre | au turn (55-85 %), la réaction des témoins dans les 15 % finaux | masculin surtout |
| Que l'injustice soit payée | Gifle-vengeance | brimé → endurance → riposte avec ses propres armes → humiliation publique | au turn, avec la preuve montrée et non dite | tous |
| Croire qu'on peut s'en sortir | Retournement de fortune | chute → désespoir → tournant préfiguré → renversement pas à pas → sommet | étalé : le tournant au point médian, le sommet dans les 15 % finaux | tous |
| Être aimé, consolé | Explosion émotionnelle | malentendu ou refoulement → limite → aveu ou réconciliation → larmes | en fin d'épisode, **après** un épisode de puissance (effet de résonance) | féminin surtout |
| Comprendre | Révélation du mystère | énigme → indices → « à un pas » → vérité plus choquante qu'imaginé → nouvelle énigme | la vérité au turn, la nouvelle énigme dans les 3-8 dernières s | enquête |

Sous-modes à varier pour ne pas répéter la même scène (0xsline) — écrasement par l'identité : par le rang, par un document, **par un seul appel téléphonique**, par la fortune, par la démonstration de compétence, par le respect que montre quelqu'un de plus haut. Gifle-vengeance : ses propres mots retournés, preuve sortie au dernier moment, piège posé d'avance, œil pour œil, jugement par la foule, écrasement par la performance.

Gradation (★★ → ★★★★★) : révélation devant 1-3 personnes → devant un groupe → devant une salle, une entreprise, un réseau entier → la plus grande révélation de la série. Pour l'émotion : regard et rougeur → déclaration et étreinte → aveu et baiser → demande en mariage, sacrifice révélé, retrouvailles.

Règles d'association : jamais deux satisfactions du même type d'affilée ; alterner émotion et puissance ; petite avant grande ; émotion après une grande ; **≥ 3 types différents sur la série** ; **même type trois fois de suite = fatal** ; intensité croissante ; la plus forte dans la dernière phase, jamais avant.

Autocontrôle d'une scène de satisfaction (0xsline, traduit) : y a-t-il eu refoulement (1-2 épisodes) ? la libération est-elle complète ? les témoins réagissent-ils ? le sort de l'humiliateur est-il montré ? y a-t-il un détail inattendu, ou est-ce le poncif nu ? le rythme ralentit-il au refoulement et accélère-t-il à la libération ?

Exemple d'écrasement par l'identité, chiffré (0xsline, réécrit) : hall d'hôtel, le directeur arrête un homme habillé simplement — « Minimum de consommation : cent mille. » L'homme compose un numéro. **Dix secondes plus tard**, l'ascenseur s'ouvre, le propriétaire arrive en courant, courbé à 90° : « C'est votre hôtel. » Gros plan sur le directeur, livide. Les chiffres (100 000, 10 s, 90°) sont ce qui rend le plaisir concret ; un « il appelle quelqu'un d'important » ne se joue pas.

## 9. L'antagoniste — détestable sans être bête

Trois principes (0xsline villain-design) : **détestable** (le spectateur doit ressentir de la colère, du dégoût ou de la peur), **crédible** (un mobile, pas de méchanceté gratuite), **progressif** (chaque palier est plus dur que le précédent). Un héros qui gifle un figurant ne produit rien ; qui gifle un méchant arrogant depuis dix épisodes produit un épisode qui se partage.

### Les quatre paliers

| Palier | Fonction | Quand il paraît | Contraintes chiffrées | Comment il sort |
|---|---|---|---|---|
| Petit | cible d'entraînement, met l'appétit | phase de lancement (0-15 %) | **1-2 maximum** ; aucune capacité de retour ; sort après une seule gifle | il se couche, son protecteur le lâche, ou il se piège lui-même |
| Moyen | vrai obstacle du milieu | phase de montée (15-45 %) | doit **battre le héros au moins une fois** ; vaincu en 2-3 affrontements | battu par la ruse, lâché comme pion, ou exposé par plus fort que lui |
| Grand | adversaire final | se devine à 45 %, se montre en face dans la tempête | entrée ritualisée ; duel final sur **2-3 épisodes, pas 1** | écrasé de front, abandonné de tous, ou jugé |
| Caché | retournement final, **facultatif** | révélé pendant ou après la chute du grand | **≥ 3 indices rétro-vérifiables**, un par phase | affrontement à charge affective, différent du duel contre le grand |

Le schéma de défaite du méchant moyen est en trois temps (0xsline) : premier affrontement, le héros gagne de peu ou fait match nul ; deuxième, le méchant riposte et le héros encaisse (c'est le point bas) ; troisième, le héros renverse par l'intelligence ou la puissance acquise. Chaque palier vaincu doit annoncer le suivant — « tu crois avoir gagné ? » — sinon la série retombe.

### Les six façons de le rendre détestable

| Moyen | Ressort | Exemple |
|---|---|---|
| S'en prendre à un plus faible | réflexe de protection | il humilie un vieux, un enfant, un malade |
| Mordre la main qui l'a aidé | indignation | il est sauvé, puis dénonce son sauveur |
| Humilier en public | le spectateur ressent la gifle | il le fait devant une salle entière |
| Frapper par derrière | mépris | aimable en face, saboteur en coulisse |
| Prendre ce qui compte | empathie | il prend la place, la personne, l'objet de mémoire |
| Se croire intouchable | attente du retour de bâton | « et alors ? c'est moi qui décide » |

### Les trois questions de crédibilité

Un antagoniste qui ne répond pas aux trois est bête, et un méchant bête rend la victoire du héros sans valeur (0xsline) :

1. **Pourquoi fait-il ça ?** Intérêt, jalousie, peur, obsession, ou simplement un camp opposé. Jamais « il est méchant ».
2. **D'où vient son pouvoir ?** Famille, argent, réseau, information, compétence. Sans appui, ses menaces sont du vide.
3. **Pourquoi ne s'en est-il pas débarrassé plus tôt, ou plus directement ?** Il ne l'a pas pris au sérieux, il a une contrainte, ou il attend un meilleur moment. C'est cette réponse qui empêche le scénario d'être idiot — et c'est la plus souvent oubliée.

### Le registre de parole, par palier

Le palier s'entend dans la façon de parler (0xsline), ce qui évite de l'expliquer : le petit est direct et vulgaire (« et toi, tu te crois à ta place ? »), et bégaie ou supplie quand il tombe ; le moyen est allusif et menaçant (« tu crois avoir gagné. C'est mignon. »), et finit par invoquer une puissance au-dessus de lui ; le grand est calme et surplombant (« tu es intéressant. Dommage. »), et révèle encore quelque chose en tombant ; le caché parle comme un allié jusqu'à la révélation, puis change de registre d'un coup — c'est ce changement qui fait l'effet, pas la phrase.

Pour un plan payant : le caché pose ses indices **un par phase** — un détail anodin au lancement (il part précipitamment, « un souci de famille »), un comportement suspect mais justifié à la montée (absent au mauvais moment, « bloqué dans les transports »), un quasi-démasquage détourné à la tempête. Sans ces trois indices, le retournement est perçu comme une tricherie.

Contrôles (0xsline) : mobile tenant en une phrase · **≥ 2 moyens de le rendre détestable** utilisés · puissance cohérente avec son palier · chute montrée en détail · transition vers le palier suivant écrite · indices du caché au nombre de trois au moins.

## 10. Structure d'une saison courte

Modèle en 4 phases sur 60 épisodes (0xsline rhythm-curve) :

| Phase | Épisodes | Intensité des climax | Fréquence des 🔥 | Tâches | Interdits |
|---|---|---|---|---|---|
| Lancement (0-15 %) | 1-9 | ★★ | un petit tous les 2-3 épisodes (6:4) | ≤ 5 personnages principaux ; détresse du héros ; **≥ 3 suspenses ouverts** ; avant-goût de satisfaction ; les 1-2 derniers gratuits portent le crochet le plus fort | révéler le plus grand secret ; **encore en exposition à l'épisode 5 = trop tard** |
| Montée (15-45 %) | 10-27 | ★★★ | un moyen tous les 5-7 épisodes (7:3) | conflit déployé ; ligne sentimentale lancée ; petit méchant vaincu, moyen qui montre les crocs ; « deux pas en avant, un en arrière » ; 1-2 épisodes de répit après chaque climax, **avec information neuve** | climax sentimental et climax d'intrigue au même moment |
| Tempête (45-80 %) | 28-48 | ★★★★ | un grand tous les 3-5 épisodes (8:2) | secret central révélé par étapes ; moyen vaincu, grand en face ; point le plus bas du héros (**≤ 2-3 épisodes**) ; rebond ; révélation d'identité ; dernières préfigurations | creux qui traîne ; retournement non préparé |
| Décisive (80-100 %) | 49-60 | ★★★★★ | presque chaque épisode (9:1 puis 3:7) | duel final sur **2-3 épisodes** ; méchant caché révélé quand on croit « c'est fini » ; tout clos **dans les 2-3 épisodes après le climax** ; dernier épisode = résonance, sans crochet | fin qui traîne au-delà de 3 épisodes |

Marquage du sommaire (0xsline) : 🔥 épisode pivot = 25-35 % des épisodes ; 💰 = 10-15 % ; **les 10 premiers contiennent ≥ 3 🔥 et ≥ 2 💰** ; le plan donne pour chaque épisode « numéro + type de point d'arrêt + suspense ».

Comptabilité des fils (picsart serialization) : **au plus une révélation par épisode** ; le nombre de fils ouverts ne baisse jamais avant le final (fermer un fil = en ouvrir un) ; une rupture dure **au moins trois épisodes** ; la coercition n'efface pas une trahison ; le pardon est un paiement, pas un réflexe ; chaque horloge posée expire ou est battue à l'écran. Chaque épisode prouve un changement d'état : une initiative du héros (une action que personne ne lui a demandée — recevoir une nouvelle ne compte pas), un transfert de connaissance entre niveaux (public / personnage), un changement de pouvoir ou de confiance, et les deux intrigues (externe et secrète) qui avancent.

Autocontrôle tous les 5 épisodes (0xsline) : hauts et bas visibles · ≥ 1 information neuve par épisode · pas de vide d'information sur 2 épisodes · **≤ 5 épisodes entre deux climax** (**> 8 = perte de patience**) · **≥ 3 épisodes sans progression = abandon** · les répits font avancer · sensation d'inachevé si on quitte à n'importe quel épisode.

## 11. Les erreurs qui tuent un épisode

| Erreur | Symptôme à l'écran | Correction |
|---|---|---|
| Ouverture qui réexplique | les 10 premières secondes racontent l'épisode précédent | 5 s maximum, et sur la **conséquence** du cliffhanger |
| Faux suspense | le péril de la fin est levé en 10 s à l'ouverture suivante | la réponse arrive dans la seconde moitié, et coûte quelque chose |
| Vide d'information | une séquence de transition où rien de neuf n'apparaît | la couper, ou y poser l'indice du méchant caché |
| Plateau au milieu | l'escalade change de lieu mais pas d'enjeu | changer enjeu, coût, information, pouvoir ou relation (jimwoocory) |
| Satisfaction sans refoulement | la gifle arrive sans qu'on ait eu envie de la voir | 1-2 épisodes de refoulement avant |
| Satisfaction immédiatement annulée | le héros gagne puis reperd dans le même épisode | garder l'acquis au moins un épisode |
| Trois crochets à la fin | le spectateur ne sait plus ce qu'il attend | un seul, deux au maximum s'ils se cumulent bien |
| Méchant sans mobile | il nuit sans raison énoncée | répondre aux trois questions du § 9 |
| Point bas qui s'étire | le héros subit sur 4 épisodes ou plus | **2-3 épisodes maximum**, puis le rebond |
| Fin en fondu, récapitulatif | l'épisode se dégonfle | coupe sèche, carte d'épisode, rien après |
| Sous-titres sur la bouche | majiayu : erreur de livraison la plus fréquente | entre 10 et 85 % de hauteur |
| Plan large sur un téléphone | personne ne lit l'expression | gros plans, le visage occupe le cadre |

## 12. Moteurs qui vendent et écriture pour l'IA

Tropes validés à l'export (0xsline) : milliardaire, loup-garou/alpha, mariage éclair, bébé secret. Moteurs (vargHQ) : vengeance, identité cachée, sauvetage, fantasme de haute société — un désir, un obstacle neuf par épisode, une horloge, une question ouverte. Écrire les moments de pub d'abord : le titre est la logline ; nommer ~5 scènes qui seront coupées en pubs avant d'écrire ; test « un seul extrait raconte-t-il l'histoire ? ».

Pour la génération (vargHQ drama.md, Nomi) : têtes parlantes, confessionnaux et formats télé-réalité se génèrent bien, bagarres et actions complexes mal ; écrire l'action que le modèle sait rendre ; une réplique qui bascule (chuchoté → crié) se coupe en deux plans ; un locuteur par plan, visage de face ou trois quarts ; pas de nom propre dans la description du mouvement ; pas de « regarde vers / fixe » si on veut un plan de dos. Bible de personnage : traits statiques (visage, coiffure, silhouette, cicatrice) intouchables ; dynamiques (tenue, accessoires) modifiables ; liste explicite des interdits.

Ce que la pyramide de méchants impose à la production : **un marqueur d'identité par palier** qui survit à toutes les générations (le petit a une veste criarde, le grand une seule couleur sobre), et le méchant caché jamais cadré seul avant sa révélation — il est toujours dans le plan d'un autre, ce qui le rend relisible après coup sans l'avoir désigné.

Après diffusion (vargHQ) : lire les commentaires et les points de décrochage ; donner plus de temps d'écran à ce que le public aime ; l'étude des 28 auteurs rapporte +115 % de « j'aime » et +263 % de partages après l'expansion d'un personnage favori.
