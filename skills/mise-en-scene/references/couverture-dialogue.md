# Couvrir un dialogue à deux et à trois

À lire dès que deux personnes parlent dans la même scène. La géométrie vient de DirectorSKILL (`cinematic-language.md`, `blocking-and-staging.md`, `sound-and-dialogue.md`, MIT) ; les syntaxes multi-plans de smixs/visual-skills (CC BY 4.0, Serge Shima) ; la chaîne de réaction de liyue-aigc (MIT).

## 1. Le dialogue à deux : géométrie en six setups

```
   A (*)= = = = = = = = AXE = = = = = = = = (*) B
          A regarde camera-right          B regarde camera-left

  [1]                  [2]                  [3]        [4]
  OTS sur B            two-shot             OTS sur A  single propre de A
  (épaule de A         (face à l'axe)       (épaule de B
   bas-gauche)                               bas-droite)
                 + [5] insert mains / objet  + [6] large d'établissement
```

| Setup | Taille | Caméra | Sert à | Durée à générer |
|---|---|---|---|---|
| Large (master) | WS | Face à l'axe ou 25–35° de côté, hauteur des yeux | Géographie, axe, distance entre les corps ; ouvre et ferme la scène | 2–4 s au montage ; générer 5–8 s |
| Two-shot | MS | Face à l'axe, caméra à ~1,8 m (distance personnelle) ou à ~3 m (sociale) | Les deux dans une vérité ; le gap entre eux est le sujet | 3–5 s |
| OTS sur B | MCU | Derrière l'épaule de A, 20–35° hors de l'eyeline | B parle ou encaisse ; A présent par son épaule | 3–4 s (parole), max du modèle (écoute) |
| OTS sur A | MCU | Miroir exact du précédent | Idem | Idem |
| Singles propres | MCU/CU | Au-delà du partenaire, qui sort du cadre | Le turn, la pensée privée | 3–5 s |
| Inserts ×2 | ECU | Mains, objet entre eux, la carafe au premier plan | Respiration, sous-texte, rattrapage de montage | 1–2 s, 3–5 inserts générés |

**Six setups, quatre au montage** : règle de couverture IA de DirectorSKILL. Six setups ne veut pas dire six plans dans la vidéo finale. Le **two-shot est généré en premier et approuvé** ; les singles et OTS en sont dérivés (même monde, mêmes vêtements, même lumière, image extraite et recadrée), jamais réécrits de zéro — sinon l'épaule change de taille et la pièce bascule.

### Les règles de la paire OTS

- Même focale, même distance au sujet, même marge au-dessus de la tête des deux côtés, sauf déséquilibre voulu.
- Épaule de A **bas-gauche** dans tous les plans de B ; épaule de B **bas-droite** dans tous les plans de A. Si l'épaule saute de coin, l'axe est franchi.
- Épaule floue sur 20–30 % du cadre ; 35–40 % = OTS d'interrogatoire, l'épaule écrase (proportions reprises de Nomi, non mesurées). Au-delà, l'épaule bouche le jeu.
- Hauteur de caméra = yeux du personnage **hors champ**. Un assis et un debout : on filme l'assis depuis 1,6 m en plongée douce, le debout depuis 1,2 m en contre-plongée douce. Noter l'angle : « 14 cm d'écart à 0,7 m = ~11° » (exemple de calcul de DirectorSKILL).
- Le **point** est sur celui qui parle ; l'épaule de l'autre est floue. Passer le point à l'auditeur **sur la réplique qui le touche** = un rack focus écrit comme événement daté (« focus starts on her hands, at 1.8 s shifts to his face »), jamais comme propriété d'objectif.

### Le point de vue (table d'opposition, le plus fiable en IA)

Deux corps assis de part et d'autre d'une table : zéro translation, deux positions fixes, une distance sanctionnée par le meuble — personne ne peut envahir. Caméra sur l'épaule proche, 25–35° hors de l'axe de la table, hauteur d'yeux assis (~1,2 m). Se mettre à 90° de l'axe aplatit la scène en audience entre égaux. C'est la géométrie de dialogue la plus fiable disponible : animer le souffle, une main sur la table, une rotation de tête de 30°.

## 2. Quand on passe au gros plan : le « turn »

Le gros plan n'est pas une taille, c'est un **moment** : celui où le personnage décide, comprend ou cède. Avant : l'escalier. Après : la réouverture.

| Moment dans la scène | Taille | Pourquoi |
|---|---|---|
| Ouverture | WS ou two-shot | Le spectateur place les corps et l'axe en 1 s |
| Échange ordinaire | MCU en OTS | Les deux présents ; le contexte tient |
| La réplique qui change tout est **entendue** | CU sur celui qui l'entend, pas sur celui qui la dit | Réaction > parole : le beat décisif est la réaction après la ligne |
| La décision | CU ou MCU propre, partenaire hors cadre | Pensée privée ; rien ne distrait |
| Après-coup | MS ou WS, souvent le setup d'ouverture | La distance revenue dit ce qui a changé ; un retour au cadre de départ avec un corps en moins est une fin |

Règle de ratio pour la paire : **l'écart de taille entre les deux singles est un énoncé de pouvoir**. Même taille = égaux. A en CU et B en MS = A est lu, B lit. Décaler les tailles au moment où le pouvoir bascule, jamais avant.

Piège IA n° 1 : couper au gros plan **avant** que le personnage ait quelque chose à penser → visage vide. Le CU vient après le stimulus. Chaîne de réaction (liyue-aigc) : stimulus → pause de compréhension → première réponse involontaire → réponse choisie → émotion résiduelle. 1 à 3 indices visibles par beat (déplacement du regard, souffle coupé, geste inachevé, poigne qui change, réplique avalée, réponse retardée). Pas de liste séquentielle sourcils-paupières-narines : jeu mécanique. Les larmes s'accumulent avant de couler : souffle, yeux qui brillent, clignement qui change, puis une seule larme au beat tardif nommé.

## 3. Rythme des coupes dans un dialogue

| Registre | Moyenne par plan | Maintien le plus long | Note |
|---|---|---|---|
| Dialogue dramatique conventionnel | 5–12 s | 20 s | Un single peut tenir toute une réplique longue hors champ |
| Comédie de dialogue | 2–5 s | 8 s + le maintien sur la réaction | La blague vit dans le **maintien** sur la réaction, pas dans la chute : 3,0 / 2,5 / 1,2 s puis cut dur sur 2,0–2,5 s de réaction sans musique |
| Montée de tension | 3–6 s | 14 s | Le maintien est le dispositif |

Source : DirectorSKILL `editing-and-assembly.md`. Deux lois de montage : **la réaction vaut plus que la parole** (filmer celui qui entend « je pars », pas celui qui le dit) ; **la pause avant la chute**, pas après (smixs) — un silence d'une seconde sur deux visages avant le retournement.

Coupe sur la réplique : par défaut, l'image coupe **sur la fin du mot**, pas avant ; pour un échange vif, le son de B démarre 0,3–1,0 s avant l'image de B (pré-lap, 0,5 s sûr). Ce chevauchement se fabrique **au montage**, jamais dans la génération.

## 4. Parole et lip-sync : les plafonds qui cassent vraiment

Convention de comptage dans tout ce skill : un mot = un groupe séparé par une espace. Une élision (« l'heure ») et un mot à traits d'union (« Rends-la-moi », « quatre-vingt-dix-sept ») comptent pour **un** mot. C'est la convention des plafonds ≤ 6 / ≤ 12 ci-dessous.

**Règle unique, valable pour tous les skills de la maison** (`mise-en-scene`, `scenario-court`, `anatomie-pub`, `jt-satirique`) : **≤ 6 mots quand la bouche est visible et synchrone** — c'est le plafond de lip-sync, pas un goût d'écriture — et **≤ 12 mots en voix off ou sur un plan d'écoute**, où il n'y a aucune synchro à tenir. Source : DirectorSKILL F15. Les trois autres skills ne redéfinissent pas ce plafond : ils renvoient ici.

| Situation | Plafond | Pourquoi |
|---|---|---|
| Réplique en caméra, bouche visible et synchrone | **≤ 6 mots**, MCU ou plus serré, clip ≈ 4 s | Plafond de fiabilité du lip-sync (DirectorSKILL F15) ; au-delà, la bouche décroche |
| Réplique hors champ sur un plan d'écoute, voix off | ≤ 12 mots, une phrase par clip | Pas de synchro à tenir |
| Débit de planification | **2,5 mots/s en anglais** (varg, DirectorSKILL — à garder pour prompter un modèle anglophone) ; **4,2 mots/s en français parlé vite**, dont ~25 % de silence (mesure maison, fourchette 3,8–4,4, fiche `methode-video-motion-validee`) | Longueur du clip = 0,6 s d'avance + mots/débit + 0,8 s de maintien après le dernier mot |
| Parleurs par clip | **Un seul** | Deux visages = mauvaise bouche qui bouge, pas de point de coupe, double dérive |

Les quatre assets d'un two-hander (DirectorSKILL) : **A parle, A écoute, B parle, B écoute**, même taille, même optique, même lumière, eyeline tenue. Les écoutes se génèrent à la **durée maximale** du modèle : c'est le matériau souple, trimmé à la longueur des répliques, sans risque de lip-sync. Une fois les quatre assets là, un échange de six répliques ne coûte aucune génération supplémentaire.

Répliques qui lip-syncent bien : mots pleins, consonnes visibles (p, b, m, f), fin de phrase nette. Répliques qui cassent : celles dont le sens tient à une monosyllabe atone (« je peux » / « je peux pas »), les listes, les chiffres.

Convertir une réplique trop longue : la couper en deux plans (fin sur un mot plein) ou la faire passer **hors champ** sur l'écoute de l'autre — c'est le retrait du plus gros mode de panne du pipeline.

## 5. Syntaxes multi-plans (Kling 3 / Seedance 2.5) — forme, pas paramètres

La syntaxe multi-plans d'un modèle — ordre des blocs, horodatage, balises de ton, limites et paramètres — est tenue à jour par `higgsfield-shotlist-director` : tu lui passes le nombre de plans, leurs bornes en secondes, le parleur de chacun et son état final, il écrit la chaîne. Ce fichier ne porte pas de gabarit de prompt complet.

Ce que tu dois avoir tranché avant de la lui passer, et qu'il ne peut pas deviner (smixs, varg) :

| Décision | Ce que tu lui donnes | Ce qui arrive si tu te tais |
|---|---|---|
| Nombre de plans et durée totale | « 4 plans à coupe dure, 11 s en tout » | Le découpage se résout en un seul plan mou |
| Bornes de chaque plan | 0-3, 3-6, 6-9, 9-11 s, continus et sans chevauchement, somme exacte | Le modèle décale et le dernier plan est tronqué |
| Parleur de chaque plan | un seul nom par plan, les autres explicitement muets | Deux bouches bougent, aucun point de coupe |
| Geste porteur de la réplique | « il sort un billet plié de sa poche et lit » — la parole est accrochée à une action, jamais flottante | Le personnage récite, bras ballants |
| Ton de la réplique | décrit en clair (grave et éraillé, pressé, à peine audible), pas un adverbe de jeu | Lecture neutre, sans intention |
| État final de chaque plan | la dernière image décrite (cadre tenu, regard baissé, main refermée) | Fin au hasard, souvent sur un geste de remplissage |
| Enchaînement sans trou | dire que le plan suivant démarre **immédiatement** | Un temps mort s'installe entre deux plans |
| Invariants d'identité | même visage, mêmes vêtements, même lumière, redits plan par plan | Le visage dérive dès le troisième plan |

Deux clauses à coller telles quelles dans chaque plan d'un dialogue, parce qu'elles ne valent qu'au caractère près : `same face, same clothes, same light` et `real time, no slow motion`. Elles ne sont pas un prompt : ce sont des verrous. Le reste de la formulation appartient à `higgsfield-shotlist-director`.

## 6. Le dialogue à trois

L'axe appartient à la **paire qui échange le beat**. Quand l'attention passe à une autre paire, l'axe est redessiné par un **plan** (large à trois dans la nouvelle relation) ou un **mouvement** (arc qui porte le spectateur sur la nouvelle ligne) — jamais par un cut muet, sinon le troisième téléporte. Noter `axe : A–B` puis `axe : B–C` dans les lignes du découpage.

| Dispositif | Placement | Caméra | Ce que ça dit | Fiabilité IA |
|---|---|---|---|---|
| **Le coin** | A et B face à face à 1 m ; C arrive et prend l'écart | Frontal, caméra à ~3 m, le trou visible **avant** que C le prenne ; C entre par une épaule déjà au bord | Le privé est fini | Moyenne : un seul mobile (C), les deux autres `(hold)` |
| **L'échelle** | A au premier plan 1,2 m, B à 3 m, C à 6 m | Très large à hauteur de poitrine, 1,2 m du corps avant | Hiérarchie dans un seul cadre : cinq fois plus grand devant que derrière | Haute si le fond est un dos ou une silhouette dont on ne tient pas le visage |
| **Le triangle** | Trois à distance personnelle | Un large à trois + un two-shot par paire active + singles depuis la position du partenaire actif | Trois loyautés visibles | Moyenne ; deux corps sur des trajets séparés = basse → un seul mobile par clip |
| **Le témoin** | C en retrait, hors de l'axe A–B | Plans d'écoute de C générés longs | C sert de coupe pour tout le reste | Haute : pas de lip-sync, pas de marche |

Couverture minimale à trois : un large (axe lisible), un two-shot par paire active, un single par personne depuis les yeux du partenaire actif, deux inserts, **les écoutes du troisième générées au maximum**.

## 6 bis. Dispositifs de mise en place à deux (le corps parle avant la réplique)

Notation : distance en mètres, durée en secondes, caméra à 90° de l'axe quand c'est la distance qui est le sujet (DirectorSKILL `blocking-and-staging.md`).

| Dispositif | Ce qui se passe | Ce que ça dit | Caméra | Fiabilité IA et parade |
|---|---|---|---|---|
| **L'approche** | A : 2,4 m → 0,6 m en 4 s ; B ne recule pas | Le mobile veut ; si B tient, B gagne ; si B recule, A gagne | 90° de l'axe, caméra à ~3 m : le gap qui se ferme est le sujet ; dans l'axe, la distance disparaît | Moyenne : un mobile, un pas par seconde, ≤ 1,5 m par clip sinon couper en deux ; écrire le hold de B |
| **La retraite** | B tient ; A recule 0,6 → 2,0 m en 3 s | Face à l'autre en reculant = refus ; en se tournant = peur | 90°, ou rester sur celui qui reste et laisser l'autre rétrécir au fond (= perte) | Moyenne-haute : les corps s'écartent, rien ne fusionne |
| **Le two-shot qui rétrécit** | Caméra fixe, cadrée pour la distance de départ ; A comble 0,8 m, B ne bouge pas | Intensification sans aide de la caméra : l'air entre eux est dépensé | Fixe, cadré pour la distance de départ, **ne pas recadrer** ; l'air restant aux bords est le dispositif | Moyenne : garder ≥ 0,3 m visibles à la fin ou les silhouettes fusionnent |
| **Le reveal-by-turn** | A de trois-quarts dos (135°) tourne à trois-quarts face (45°) en 2–3 s | Le moment où on a le droit de savoir | Fixe, assez serré pour que le tour remplisse le cadre ; **jamais** de mouvement caméra pendant une rotation de corps | Moyenne à 90° ; 180° (dos → face) = visage inventé → épingler première et dernière image |
| **Se détourner en pleine réplique** | Un corps pivote de 90–180° pendant que l'autre parle encore | Refus, plus fort que toute réplique | Tenir sur celui qui parle ; le pivot au bord du cadre | Haute si le pivot est écrit en degrés et durée |
| **La marche parallèle** | A et B marchent vers l'objectif à 0,8–1,0 m, même pas | Alliance en mouvement ; un demi-pas de décalage = désaccord | Frontal qui recule à distance constante | **Basse** (trois mobiles) → fixe à 90° qu'ils traversent, ou suivi de dos à distance constante |
| **L'orbite de B autour de A** | B passe de 9 h à 1 h à 1,2 m ; A pivote sur place | Évaluation, séduction, interrogatoire | Fixe à 6 h : B traverse le cadre, A tourne ; attention au point mort derrière A | **Basse** → deux plans fixes depuis l'angle de départ et d'arrivée, le cut fait l'orbite |

Fermer une zone de distance = escalade ; que ça lise désir ou menace dépend uniquement de l'eyeline et du tempo, pas de la distance. Qui tient l'immobilité tient le pouvoir — tant que le regard tient aussi : A ne bouge pas un pied mais baisse les yeux au sol après 2,5 s, et c'est A qui a perdu.

## 7. Exemple travaillé : négociation au café (9:16, 14 s, deux parleurs)

Scène : Léa veut que Marc lui rende une clé ; il hésite, puis la pose. Table ronde, distance 0,9 m (personnelle), assis (yeux ≈ 1,2 m). Axe : Léa screen-left regarde camera-right ; Marc screen-right regarde camera-left. Lumière : fenêtre camera-left de l'axe, invariant collé partout.

| N° | Taille | Angle | Hauteur | Mouvement | Durée | Ce qu'on voit | Ce qu'on entend | Intention |
|---|---|---|---|---|---|---|---|---|
| 1 | MS two-shot | 30° de côté, du côté fenêtre | 1,2 m | Fixe | 2,5 s | Léa et Marc attablés, 0,9 m, deux tasses, **la clé posée au milieu** (plantée) ; en 9:16 Léa plus proche et plus basse, Marc plus haut | Ambiance café, vaisselle lointaine | Géographie, planter l'objet |
| 2 | MCU OTS sur Léa | Épaule de Marc floue bas-droite | 1,2 m | Fixe | 3 s | Léa regarde la clé puis lève les yeux vers lui ; dit la ligne ; état final : main à plat sur la table | Léa : « Rends-la-moi. » (1 mot) | Lancer la demande |
| 3 | MCU OTS sur Marc | Épaule de Léa floue bas-gauche | 1,2 m | Fixe | 3,5 s | Marc écoute 1 s, déglutit, regarde la clé, la recouvre de la main ; état final : main fermée | Silence, la tasse reposée | **Turn** : réaction > parole |
| 4 | ECU insert | Plongée douce | 0,9 m | Fixe | 1,5 s | La main de Marc s'ouvre, la clé glisse de 5 cm vers Léa ; état final : clé immobile côté Léa | Métal sur bois | Décision rendue visible par l'objet |
| 5 | CU Léa (single propre) | Marc hors cadre | 1,2 m | Push-in 8 cm sur 3 s, part au moment où ses yeux se ferment | 3,5 s | Léa ferme les yeux 0,5 s, les rouvre, un souffle ; état final : regard baissé sur la clé hors champ | Léa, hors champ ensuite : « Merci. » (1 mot) | Émotion résiduelle |

Deux crans : 1 MS → 2 MCU un cran mais 60° d'écart ; 2 → 3 contre-champ ; 3 MCU → 4 ECU deux crans ; 4 → 5 CU un cran, angle change de la plongée à l'œil (admis). Un parleur par clip, 3 mots puis 1. Les écoutes (plan 3 et la tête du plan 5) se génèrent à la durée maximale. Lumière : « key: window camera-left » dans 1, 2 et 5 ; « key: window camera-right » dans 3 — même fenêtre, phrase inversée, invariant inchangé.

## Anti-patterns propres au dialogue

- Deux singles frontaux à 1,6 m sur un assis et un debout.
- La ligne décisive filmée sur celui qui la dit.
- Un rack focus écrit comme une propriété d'objectif au lieu d'un événement daté.
- Les deux parlent dans le même clip « pour gagner une génération » : on perd les deux.
- Le two-shot réécrit après les singles : l'épaule change de taille et de coin.
- Le large d'ouverture oublié parce que « ça va trop vite » : sans lui, la première OTS est un visage sans pièce.
