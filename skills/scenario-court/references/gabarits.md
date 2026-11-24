# Gabarits — scène de ménage, sketch à deux, scène d'action, micro-drame épisode 1

Quatre formats, chacun avec : la grille en secondes, les contraintes IA, un exemple travaillé (raisonnement puis script), et ce qui le fait rater. Tous en 9:16, répliques ≤ 6 mots en caméra et ≤ 12 hors champ (plafond de lip-sync, `mise-en-scene/references/couverture-dialogue.md` §4), un locuteur par plan, générations de 4-15 s (viser des blocs de 8-12 s).

Format de script commun (voir le standard de sortie dans SKILL.md) : en-tête de scène · action au présent · répliques numérotées avec durée estimée (mots ÷ débit de leur langue — 4,2 en français, 2,5 en anglais — plus 0,18 s de pause entre phrases) · indication de jeu entre crochets, jamais un adverbe · colonne « public sait / ne sait pas ».

---

## 1. Scène de ménage — 2 personnages, 45-60 s, 3 escalades, chute

### Grille

| Secondes | Beat | Règle |
|---|---|---|
| 0-3 | Entrer tard : la dispute a déjà commencé, sur un **objet déplacé** (vaisselle, thermostat, itinéraire) qui n'est pas le vrai sujet | Déplacement de surface (sethmblack dialogue-subtext) : on se dispute sur la vaisselle pour parler de respect |
| 3-12 | Escalade 1 : première tactique de chacun (reprocher / minimiser) | Chaque réplique change de tactique ; jamais deux fois la même avec d'autres mots |
| 12-25 | Escalade 2 : le vrai sujet affleure **sans être nommé** ; une répétition déformée (« Tu l'as dit. » / « Je l'ai dit. ») | Répétition comme révélation ; un vieux grief remonte d'un coup |
| 25-40 | Escalade 3 : quelqu'un dit une chose qu'on ne peut pas reprendre ; **non-réponse** ; silence 1-2 s | La chose irréversible (jwynia, « things said that can't be unsaid ») ; la réaction compte plus que la réplique |
| 40-48 | Le turn : la valeur bascule (ensemble → séparés, ou l'inverse) par une **action**, pas une phrase | McKee : le turn vient d'une action ou d'une révélation |
| 48-55 | Chute visible + bouton de deux mots | Sortir tôt : avant la réconciliation ou la rupture jouée |

Trois escalades = trois variables différentes qui changent : information (12 s), pouvoir (25 s), relation (40 s). Si les trois escalades ne changent que le volume, la scène est plate.

### Exemple travaillé — « Le thermostat »

**Raisonnement.** Valeur en jeu : la confiance (+ → −). Surface : la température du salon. Sous-texte : il a vu un message sur son téléphone et ne le dit pas. Désir de LUI : qu'elle avoue sans qu'il demande. Désir d'ELLE : qu'il demande, pour pouvoir mentir ou dire la vérité — elle ne sait pas encore. Tactiques : lui = reprocher autre chose ; elle = minimiser, puis attaquer. Le public sait depuis l'image 1 qu'il tient le téléphone d'elle ; elle ne le sait pas → gap. Entrée tardive : il a DÉJÀ baissé le chauffage. Chute visible : il remonte le thermostat et sort — la valeur a basculé par un geste. Bouton : elle, seule, regarde le thermostat : « Dix-neuf. »

**Script.**

```
INT. SALON — SOIR. Thermostat mural, 19 °C affiché. LUI debout devant, le téléphone d'ELLE dans sa main gauche, écran noir. ELLE arrive du couloir, un pull à la main.

#  t        Réplique / action                                   [jeu]                Public sait / ne sait pas
1  0:00-03  ELLE : « T'as encore baissé. »                      [constate, pas énervée] sait : il tient SON téléphone ; elle non
2  0:03-06  LUI : « Il fait chaud. »                            [ne la regarde pas]
3  0:06-10  ELLE enfile le pull.  « Il fait dix-neuf. »         [elle marque un point]  escalade 1 : information
4  0:10-13  LUI : « Tu as froid depuis quand ? »                [la question n'est pas sur le froid]
5  0:13-16  ELLE : « Depuis que tu touches à tout. »            [attaque de côté]
6  0:16-20  LUI pose le téléphone sur la table, écran vers le haut. Il ne dit rien.   escalade 2 : pouvoir — elle voit le téléphone
7  0:20-23  ELLE : « Tu l'as lu. »                              [pas une question]
8  0:23-26  LUI : « Je l'ai vu. »                               [répétition déformée : lu → vu]
9  0:26-29  ELLE : « C'est pas ce que tu crois. »
10 0:29-33  LUI : « Je crois rien. Il fait chaud. »             [retour à l'objet : refus de répondre]  escalade 3 : relation
11 0:33-36  Silence. ELLE regarde le thermostat, pas lui.       [1,5 s tenues]
12 0:36-40  ELLE : « Tu veux savoir ? »                         [elle offre la vérité]
13 0:40-45  LUI remonte le thermostat à 22. Prend sa veste. Sort du cadre.           turn : il refuse de savoir = la confiance est partie
14 0:45-50  ELLE seule. Le thermostat clignote : 22.
            ELLE : « Dix-neuf. »                                [à personne]           bouton : elle rebaisse — ils sont d'accord sur rien, même pas sur ça
```

**Comptes recalculés.** Durées : 3+3+4+3+3+4+3+3+3+4+3+4+5+5 = **50 s**. Répliques : **11** (les lignes 6, 11 et 13 sont des actions), de 3, 3, 3, 5, 6, 3, 3, 6, 6, 3 et 1 mots — soit **42 mots** pour un budget de 157 (50 × 0,75 × 4,2) : la scène est jouée plus que parlée. La plus longue fait 6 mots, pile au plafond de synchro labiale, aucune ne le dépasse. Personne n'a dit « tu me trompes », « je ne te fais plus confiance », « je t'aime ». Le téléphone n'est jamais ouvert : le public n'en saura pas plus qu'eux.

**Pour la génération** : 2 personnages, 1 lieu, **5 générations de 9 à 11 s, chacune calée sur une coupe du script : 0-10, 10-20, 20-29, 29-40, 40-50** (des blocs de 16-17 s dépasseraient la durée maximale d'une génération) ; le téléphone et le thermostat sont des accessoires de référence ; aucun texte lisible à l'écran (le « 19 » et le « 22 » s'ajoutent au montage si le modèle les brouille).

### Ce qui fait rater une scène de ménage
- Le vrai sujet est nommé avant 40 s (« tu m'as trompé ») : plus rien à jouer.
- Les trois escalades sont trois cris de plus en plus forts.
- La chute est une phrase (« c'est fini ») au lieu d'un geste.
- Réconciliation ou rupture jouée jusqu'au bout : sortir avant.
- Un des deux a raison : les deux doivent avoir une tactique défendable.

---

## 2. Sketch à deux — le format « vidéo neige »

### Le modèle

```
A : « J'ai froid. »
B : « Tu mens. On est des influenceuses IA. »
A : « Ouais c'est vrai, je suis une mytho. »
[rire des deux]  →  appel à l'action
```

Quatre répliques, ~12 s, un plan ou deux. Pourquoi il marche :

| Ressort | Ce qui se passe | Mécanique nommée |
|---|---|---|
| L'**aveu** | A ne se défend pas : elle avoue tout de suite, avec un mot de registre bas (« mytho ») | déflation / anticlimax : on attend une justification, on reçoit un aveu minuscule |
| Le **méta** | B nomme ce que le spectateur voit (« on est des IA ») — la seule chose dont on ne parle jamais dans une pub | gap fermé par le personnage lui-même : surprise par franchise, « accrocher une lanterne » sur l'invraisemblable |
| La **complicité** | Le rire partagé après l'aveu : les deux savent, nous savons, personne n'est dupe | la réaction compte plus que la réplique ; c'est le rire qui est le bouton, pas la phrase |
| Le **registre** | « J'ai froid » est la phrase la plus banale possible : prémisse normale (phase 1 de l'escalade) en 2 mots | setup < 15 mots, lecture littérale de la pub « hiver » |

C'est une misdirection en trois temps : normal (j'ai froid) → l'espoir est celui de B (prendre A en faute) → pire pour B, mieux pour nous (A avoue sans combat, B n'a plus rien à gagner). Le CTA arrive **après** le rire, jamais à la place (picsart retention-hooks : l'appel à l'action vient après le paiement).

### Grille du sketch à deux, 12-20 s

| Secondes | Beat |
|---|---|
| 0-2 | Setup par l'image et une réplique banale ≤ 4 mots ; pas de carton titre |
| 2-6 | La réplique qui casse (méta, littéral, ou inappropriée) ≤ 6 mots |
| 6-8 | `[beat]` 0,5-1 s — visage de A, rien ne bouge |
| 8-11 | L'aveu / la chute ≤ 6 mots |
| 11-13 | Réaction partagée (rire, regard, haussement d'épaules) — c'est le vrai bouton |
| 13-20 | Appel à l'action, par la même voix, dans le même ton ; ou un second retournement de 2 mots |

Sketch de 15 s mesuré par vargHQ : 6 plans, 6 répliques, chute de deux mots à 6,8 s, bouton à la fin.

### Trois variantes sur le même squelette

```
A : « Ce manteau a dix ans. »
B : « T'existes depuis mardi. »
A : « Depuis mardi, alors. »           [rire]

A : « Regardez cette neige. »
B : « C'est du rendu. »
A : « Du très beau rendu. »            [rire]

A : « J'ai les mains gelées. »
B : « T'as six doigts. »
A (regarde sa main) : « …Sept. »       [rire]
```

Toutes ces répliques tiennent sous 6 mots : elles sont en caméra, bouche visible. Règle : B ne se moque jamais de A (sinon c'est de la moquerie) ; A n'est jamais humiliée (elle gagne en avouant). Si le CTA est dit par B, il perd : c'est A, celle qui a avoué, qui vend.

### Ce qui fait rater un sketch à deux
- Un troisième personnage qui explique.
- B lève les yeux au ciel ou regarde la caméra à sa réplique.
- A se justifie (« non mais en vrai il fait froid dans le studio ») : la misdirection est morte.
- Le CTA avant le rire, ou dit sur un autre ton.
- Un adjectif « drôle » ou « ironique » dans le prompt : rien à jouer.

---

## 3. Scène d'action de 30 s — objectif, obstacle, retournement, coût

Une scène d'action est une scène : valeur ±, turn, sortie tôt. Ce qui change : les répliques tombent à 0-2, l'information passe par les objets, et la génération IA rend mal les corps qui se touchent (vargHQ : « fights and complex action do not » render well). Écrire l'action que le modèle sait faire : une course, une chute, un objet qui tombe, une porte, un véhicule — pas un corps à corps.

### Grille

| Secondes | Beat | Contenu | Règle IA |
|---|---|---|---|
| 0-3 | Objectif lisible en un plan | On sait ce qu'il veut attraper / atteindre / empêcher ; objet concret, pas « survivre » | Objectif concret, réalisable, urgent (Microck) ; le sujet gros et centré |
| 3-12 | Obstacle | Ce qui l'empêche, montré ; une première tactique qui échoue | Un déplacement du sujet, un de la caméra, jamais deux actions simultanées (*One-Move Rule*, `higgsfield-camera`) |
| 12-20 | Deuxième tactique, plus coûteuse | Il lâche quelque chose pour avancer (objet, position, allié) | Les générations de 5-8 s ; raccord par une image du plan précédent |
| 20-26 | Retournement | L'obstacle n'était pas celui qu'on croyait, ou l'objectif change de sens | Tenu 1-2 s sur le visage, silence |
| 26-30 | Coût | Il a réussi (ou pas) ET il a perdu quelque chose de visible ; image finale = inverse de l'image 1 | Chute visible ; coupe ≤ 1,5 s |

Les quatre issues admises (rondoflow) : oui-mais, non-et, non-mais, oui-et. Un « oui » ou un « non » sec = la scène n'a pas travaillé. En 30 s, viser **oui-mais** (il attrape le sac, mais la photo qu'il contenait est partie au vent) ou **non-et** (il rate le train, et la personne qu'il poursuivait est sur le quai derrière lui).

### Exemple travaillé — « Le sac »

**Raisonnement.** Objectif : récupérer un sac arraché. Obstacle : la foule, puis une grille qui se ferme. Retournement : le voleur n'a pas pris le sac pour l'argent — il laisse tomber le portefeuille et garde une enveloppe. Coût : elle récupère le portefeuille, pas l'enveloppe ; nous ne savons pas ce qu'il y avait dedans (boucle ouverte pour un épisode 2, ou chute sèche pour un court). Valeur : contrôle (+ → −). Dialogue : 1 réplique.

```
EXT. MARCHÉ COUVERT — JOUR. Allée étroite, étals de fruits.

#  t        Action                                                        Public sait / ne sait pas
1  0:00-03  Une main arrache un sac en bandoulière. ELLE (30 ans, veste rouge) se retourne : le sac s'éloigne dans la foule.   objectif : le sac
2  0:03-08  Elle court. Caméra à l'épaule la suit. Un chariot de cagettes coupe l'allée ; elle saute, une cagette tombe.      obstacle 1 : la foule
3  0:08-12  Le VOLEUR (capuche) tourne à droite. Devant lui une grille à demi baissée.                                          espoir : il est coincé
4  0:12-17  Il roule sous la grille. Elle arrive : la grille descend encore. Elle lâche son téléphone pour passer à plat ventre.   coût 1 : le téléphone reste de l'autre côté
5  0:17-20  Parking vide. Le voleur, dos à elle, fouille le sac.
6  0:20-24  Il sort le portefeuille — le jette par terre. Garde une enveloppe. Part.                                            retournement : ce n'est pas l'argent
7  0:24-27  Elle ramasse le portefeuille, le regarde, puis la grille fermée derrière elle.                  [tenue 1,5 s]
8  0:27-30  ELLE : « Il savait. »                                 [2 mots, à personne]   coût 2 : l'enveloppe ; nous ne savons pas ce qu'elle contenait
```

**Comptes recalculés.** Durées : 3+5+4+5+3+4+3+3 = **30 s**. 1 réplique, **2 mots** (« Il savait. ») — sous le plafond de 6. Issue : non-et (elle n'a pas l'enveloppe, et elle a perdu son téléphone et appris que quelqu'un savait).

**Pour la génération** : 5 générations de 4 à 8 s, calées sur les coupes (0-8, 8-12, 12-17, 17-24, 24-30) ; personnage de référence pour elle (veste rouge = marqueur d'identité unique) ; le voleur n'a pas de visage (capuche) — une référence de moins ; la grille et l'enveloppe sont des accessoires de référence ; chaque plan = un mouvement sujet + un mouvement caméra, jamais deux actions superposées.

### Ce qui fait rater une scène d'action
- L'objectif est abstrait (« s'en sortir »).
- Trois obstacles identiques (trois portes).
- Pas de coût : il réussit, point.
- Un corps à corps de 6 s à générer.
- Un dialogue pendant l'effort.

---

## 4. Micro-drame épisode 1 — 60-90 s

Gabarit détaillé et exemple complet de 70 s (« Mauvais numéro ») dans `beat-sheets.md` §6 ; grille d'épisode, modèles d'ouverture, cliffhangers et saison dans `micro-drame.md`. Ici, la liste de contrôle de l'épisode 1 seulement.

| Avant 5 s | Avant 30 s | 10-55 % | 55-85 % | 3-8 dernières s |
|---|---|---|---|---|
| Choc visuel ou suspense à la seconde 1 ; conflit ou contraste d'identité à la seconde 3 ; « et ensuite ? » à la seconde 5 | Conflit central posé ; situation du héros (faiblesse, détresse, contraste) ; premier crochet ; ≤ 3 personnages ; ≥ 1 question ouverte ; l'injustice ou le secret dit tout de suite | Escalade sans plateau ; nouveauté toutes les 2-3 s ; zéro exposition | Le turn ; silence sur la révélation ; 1-2 s sur la réaction | Couper sur la question : regard, porte, écran ; smash cut sur la carte |

Choisir un des 6 modèles d'ouverture selon le genre (micro-drame.md §3). Ne pas dépenser le secret de la série : le public peut le connaître, les personnages non (vargHQ). Nommer avant d'écrire les ~5 scènes de la saison qui seront coupées en pubs.

---

## 5. Choisir le gabarit

| Demande | Gabarit | Durée | Mécanique dominante |
|---|---|---|---|
| « Fais une scène de couple qui s'engueule » | 1 | 45-60 s | déplacement de surface, 3 escalades |
| « Un sketch pour nos influenceuses IA » | 2 | 12-20 s | aveu + méta + complicité |
| « Une poursuite / un braquage / un sauvetage » | 3 | 30 s | objectif concret, coût visible |
| « Épisode 1 d'une mini-série » | 4 + micro-drame.md | 60-90 s | ouverture type + cliffhanger |
| « Un court qui tient 60 s » | beat-sheets.md §4 | 60 s | Save the Cat en secondes |
