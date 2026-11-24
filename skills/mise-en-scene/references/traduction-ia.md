# Traduire un découpage en plans générables

À lire avant de passer le découpage à `higgsfield-shotlist-director`. Ce fichier dit ce qu'un modèle vidéo comprend d'une décision de réalisation, ce qu'il ignore, et quelle décision prendre en conséquence. Les paramètres (modèle, preset, durée offerte, résolution, champ négatif), les optiques et la formulation du prompt restent dans les sous-skills `higgsfield`. Sources : DirectorSKILL `ai-video-tool-adapters.md` (MIT) ; OSideMedia `higgsfield-camera` (MIT, installé comme skill : on renvoie) ; Rylaispirit §8 (MIT) ; vargHQ `kling-4-prompting` et `varg-video-prompting` (MIT) ; liyue-aigc (MIT) ; notes de la formation AVB : **structure, ordre d'opérations et chiffres seulement**. Aucune chaîne de prompt n'en est reprise. Les libellés de table et les glosses ont été réécrits le 23/11/2026 après un contrôle par n-grammes de 8 mots contre les notes `.md` **et** le texte brut `avb/txt/` ; cette vérification est à refaire à chaque ajout dans ce fichier.

Ce fichier ne contient **aucune chaîne de prompt en anglais** : la formulation d'un prompt appartient à `higgsfield-shotlist-director`, qui la tient à jour. Les clauses à coller qu'on trouve ailleurs dans ce skill (invariant de lumière, verrou de vitesse réelle, verrou de point) sont décrites au § 6 de `lumiere.md` ; elles ne valent qu'au caractère près, et aucune ne vient des notes de la formation.

## 1. Un mouvement = un déclencheur narratif

Un modèle sans mémoire remplit tout mouvement non motivé par une **dérive générique** : flottement, zoom mou, ralenti. La parade est de donner au mouvement une cause visible dans le plan et un cadre d'arrivée décidé. Table de choix, de l'intention au mouvement (reformulée depuis la bibliothèque AVB des mouvements motivés, F1–F30) :

| Intention | Mouvement | Déclencheur à écrire | Taille d'arrivée | Version plus sûre si ça échoue |
|---|---|---|---|---|
| Prise de conscience, décision, menace qui monte | Push-in lent motivé | Après l'événement déclencheur (plan 7 de la séquence neige : la poussée démarre à l'instant où son regard arrive sur l'objectif) ; s'arrête sur un cadre verrouillé | MS → CU | Push-in plus court, en deux plans |
| Échelle, conséquence, « elle n'est pas seule » | Pull-out de révélation | Écrire ce que le large découvre : l'information neuve **est** la raison d'être du plan | CU → WS | Cut dur CU puis WS |
| Profondeur, surveillance, présence physique | Push-in à travers un premier plan (porte, vitre, tissu, épaule) | Deux plans d'objets proches au maximum ; le déplacement est physique, pas optique | MW → MCU | Slider court avec un objet au premier plan |
| Retourner le sens d'une scène | Arc 90–180° qui change le sens | Quelque chose change **dans le fond** pendant l'arc (gyrophares, une silhouette) | MW–MS | Deux plans fixes depuis l'angle de départ et l'angle d'arrivée : le cut fait l'arc |
| Fin de scène, le monde avale le personnage | Grue qui monte et s'éloigne | Exiger que le personnage reste dans le cadre pendant l'ascension : c'est ce qui distingue la grue du drone qui s'enfuit | MS → EWS | Tilt up fixe |
| Suspense, logique « réaction d'abord » | Push-in sur la réaction, cause hors champ | Le personnage remarque quelque chose hors champ ; **ne pas le révéler** ; le montrer plus tard ou dans un autre plan | MS → CU | Plan fixe sur la réaction + insert de la cause |
| Déplacer le regard avant de déplacer la caméra | Point d'abord, mouvement ensuite | Le rack focus **précède** le déplacement ; simultané = confus | MS–CU | Deux plans |
| La caméra prend de l'avance sur le personnage | La caméra arrive avant le personnage | Un lieu vide qui se charge : porte, couloir, chaise ; le personnage entre ensuite par un bord | WS–MS | Plan fixe sur le lieu vide, entrée par une épaule au bord |
| Escalade, perte de contrôle | Fixe → porté (changement d'état) | L'**événement exact** qui fait basculer ; le porté réagit, il ne commence pas | Tout | Deux plans : fixe, puis porté |
| Vitesse → émotion | Passation véhicule → personnage | Attaché à la machine, puis la caméra la lâche pour suivre quelqu'un ; direction conservée | WS → MS | Deux plans embarqué / suivi |
| Poids du véhicule et proximité du revêtement | Caméra fixée rigidement au bas du véhicule | Fixation rigide, vibration, proximité du sol | Très bas, très près | Même chose, plus court |
| Cause puis effet (explosion, vague) | La caméra réagit quand la force l'atteint | Événement d'abord, force qui voyage, puis seulement le cadre bouge | WS–MW | Fixe + cut sur l'impact |
| Transition cachée, cohérence entre deux générations | Occlusion totale par un premier plan | L'objet doit masquer tout le cadre ; s'il en laisse un bord, la coupe apparaît | Tout | Whip pan court coupé dans le flou |
| Avant / après, mémoire | Même trajectoire répétée, monde changé | Même chemin au millimètre, seuls le temps, l'état, la lumière changent | WS–MS | Deux plans fixes identiques |
| Produit : l'ouverture la plus forte | Sortie de macro | Le plan naît dans la matière de l'objet et en sort d'une traite jusqu'à la main qui le tient | Macro → MS | Macro fixe + cut sur la main |

Quatre garde-fous, valables sur tout plan mobile de ce skill. Aucun déplacement n'est écrit sans une cause visible dans le plan. La cadence d'exécution est à redire plan d'action par plan d'action, faute de quoi le modèle livre du ralenti. Chaque plan doit dire comment il se termine : cadre tenu, ou sujet encore en déplacement à la dernière image. Enfin, plus la caméra tourne autour d'un visage ou s'en éloigne, moins l'identité tient — et l'objet proche qui masque tout le cadre sert deux fois : il raccorde deux générations et il absorbe la coupe.

## 2. Les six fentes : les six décisions qu'un plan mobile doit trancher

Six décisions, et six endroits où la machine tranche à ta place si tu te tais. L'enjeu n'est pas le formulaire : ce sont précisément les six décisions qu'un modèle prend mal. À chaque fente laissée vide correspond une dérive connue (structure reformulée depuis les notes AVB ; libellés et glosses réécrits pour ce skill le 23/11/2026) :

| Fente | La décision | La dérive si tu ne la prends pas |
|---|---|---|
| **Mouvement** | Le mouvement, et l'appui physique qui le produit : un chariot, un corps, un bras mécanique, un appareil volant | Un glissement flottant sans appui physique |
| **Départ** | L'image 1 : cadre arrêté, ou mouvement déjà lancé | Le plan s'ouvre au milieu d'un geste commencé ailleurs |
| **Vitesse** | La forme de la courbe dans le temps : régulière, départ doux puis freinage, brutale, rampante | Tout part en ralenti |
| **Cadrage** | L'élément qui doit rester constant pendant que les autres évoluent : hauteur, horizon, taille du sujet | Le sujet change de taille et l'horizon part de travers |
| **Arrivée** | Le cadre terminal et sa tenue — ou l'absence de terme : le plan se coupe en pleine course | Le plan s'achève au hasard, souvent sur un geste de remplissage |
| **Durée** | Soit tout à sa cadence, soit un seul élément ralenti, et il est nommé | Le ralenti s'applique à tout |

Ces six décisions, tu les prends dans le découpage ; **la formulation exacte qui les transmet au modèle est le travail de `higgsfield-shotlist-director`.** Ce que tu lui passes pour le plan 7 de la séquence neige, par exemple : mouvement = léger rapprochement sur rails vers son visage ; départ = cadre arrêté, la poussée démarre à l'instant où son regard arrive sur l'objectif ; vitesse = départ doux, régulier, qui freine sur la fin ; cadrage = hauteur et direction constantes, les yeux restent au tiers supérieur pendant que le cadre se resserre d'une dizaine de centimètres ; arrivée = gros plan tenu la dernière seconde ; durée = vitesse réelle, aucun ralenti.

Vérification obligatoire : **le mouvement annoncé doit pouvoir produire le cadre d'arrivée annoncé**. Une poussée lente ne peut pas finir en ECU depuis un WS ; 10–15 cm sur 7 s est un déplacement à peine perceptible, pas un resserrement (OSideMedia).

## 3. Les treize dérives à verrouiller — et qui écrit le verrou

Treize comportements par défaut d'un modèle vidéo. La colonne de gauche est ta décision de découpage ; **la chaîne exacte à écrire dans le prompt est dans `higgsfield-shotlist-director`**, qui en détient le vocabulaire et le tient à jour. Ne recopie pas de formulation ici : elle vieillit à chaque version de modèle.

| Dérive par défaut | Ce que tu dois décider et noter dans le découpage |
|---|---|
| La caméra dérive toujours un peu | Dire explicitement « fixe », et que le cadrage est le même à la première et à la dernière image |
| Pan et tilt se mélangent et déforment un visage | Nommer **un seul** axe, et dire que l'autre ne bouge pas |
| Un zoom devient un déplacement de caméra | Préciser que la position de la caméra ne change pas, seul le cadre se resserre |
| Un dolly zoom se résout en zoom simple | Exiger que la taille du sujet reste identique pendant que le fond se déforme |
| Le sujet grandit ou rétrécit pendant un mouvement | Inscrire la taille du sujet dans la fente *Cadrage* comme invariant |
| Tout ralentit | Vitesse réelle, et le flou de mouvement seulement sur les appuis les plus rapides |
| Le porté devient une vibration haute fréquence continue | Décrire **la personne qui porte** (pas, souffle) et la décroissance : fort 2 s, se stabilise, se pose sur 3 s |
| Un visage est inventé quand il ne devrait pas être vu | Décider que le cadre reste sous la taille pendant tout le clip et que le visage n'apparaît jamais |
| Le modèle coupe de lui-même dans une prise unique | Annoncer une prise continue, sans coupe, et donner l'itinéraire en étapes (A → B → C) |
| Un découpage multi-plans devient un plan-séquence mou | Annoncer le nombre de plans, la durée totale et le chronométrage de chaque segment |
| Du faux texte apparaît dans le décor | Décider qu'aucune lettre, chiffre, logo ni interface n'est dans le cadre, et placer les cartons au montage |
| Le jeu est surjoué | Décider la retenue par un fait physique : les larmes restent dans les yeux et ne coulent pas |
| Des bandes noires encadrent l'image | Décider le 9:16 plein cadre dès l'image clé, pas au recadrage |

Les nombres techniques sont ignorés (« 24 secondes » rend 30 s, « 24 fps » ne fait rien). Exceptions utiles : **heure précise du jour** pour tenir la lumière ; **distances en cm** pour les micro-mouvements ; **nombre de plans + durée totale** ; **horodatage des événements** — lieu + moment + résultat visible, par exemple « à 4 s la deuxième porte à gauche s'ouvre en grand sur le noir complet » (Rylaispirit).

## 4. Durée par type de plan

Rappel de cadre : **une génération dure 4 à 15 s selon le modèle** ; au-delà, on découpe sur des blocs de 8–12 s. Les durées ci-dessous sont des durées **finies**, après montage.

| Type de plan | Durée finie | Pourquoi |
|---|---|---|
| Flash d'établissement, intro à cut dur | 0,3–0,5 s | Une fraction de seconde, pas une seconde pleine (OSideMedia) |
| Insert, arrêt sur image | 0,3–2 s | Pas de visage : court et sûr |
| Respiration après un choc | 2,5–4 s | Ambiance seule, aucune coupe dedans ; ne jamais la confondre avec l'insert de coupe (0,3–0,5 s) |
| Une réplique en caméra | 3–7 s (≈ 4 s pour ≤ 6 mots) | Fenêtre de fiabilité du lip-sync |
| Réaction muette | 5–10 s | Le temps que le visage fasse la chaîne stimulus → réponse |
| Gros plan émotionnel à arc complet (5–7 beats) | 8–15 s | Seulement si le modèle tient l'identité sur la durée (Seedance 2.5) |
| Plan à visage, générique | **Générer 3–5 s** | L'erreur d'identité s'accumule avec le numéro d'image : les premières secondes sont les plus propres (DirectorSKILL) |
| Mains en manipulation fine | 3–4 s | Idem |
| Décor, produit, météo, texture, révélation lente | 8–12 s | Pas de visage lisible, un seul mouvement dominant : tolère la longueur |

Couper une action en deux clips : trouver le **pivot** (l'instant d'engagement, où l'issue devient inévitable). Le clip A finit **au** pivot, mouvement en cours ; le clip B commence juste après, déjà en mouvement ; changer l'angle de ≥ 30° ou la taille de deux crans ; couper sur le mouvement. Exemple : « il ouvre la porte et entre » → A = insert main/poignée fixe 3 s finissant la porte juste décollée du chambranle (budget 3) ; B = large depuis le couloir, la porte vient vers nous et il entre, 4 s (budget 3). Deux clips faciles remplacent un clip dur ; l'insert, sans direction d'écran, autorise même le changement de côté.

Prolonger (extend) quand la dernière image est propre et la suite peu mobile ; regénérer depuis une nouvelle image clé dès que la dernière image dérive — l'extension hérite et amplifie chaque artefact.

## 5. Parole, assets et jeu

- **≤ 6 mots en caméra**, bouche visible, MCU ou plus serré, clip ≈ 4 s ; au-delà, couper la réplique ou la passer hors champ (≤ 12 mots sur une écoute). Un seul parleur par clip. Débit de planification : 2,5 mots/s en anglais (valeur à garder pour un modèle anglophone) ; **4,2 mots/s en français parlé vite** (mesure maison, fourchette 3,8–4,4, fiche `methode-video-motion-validee`). Clip = 0,6 s d'avance + mots/débit + 0,8 s de maintien.
- **Assets d'un two-hander** : quatre clips (A parle, A écoute, B parle, B écoute) + le two-shot approuvé dont ils dérivent + 3–5 inserts. Références d'identité : une image par personne présente dans le cadre, **plus une référence serrée pour tout gros plan** (sans référence proche, le visage change — varg). Une référence qui montre un deuxième personnage l'attire dans le plan ; un décor extérieur en référence tire l'intérieur vers lui : ne mettre dans la référence que ce qui doit être visible.
- **Émotion = chaîne de gestes datés**, jamais le mot. « Hésite » ne se filme pas ; « soulève l’enveloppe de 10 cm, la tient une seconde, la repose » se filme. Chaîne de réaction : stimulus → pause de compréhension → première réponse involontaire → réponse choisie → émotion résiduelle, avec 1–3 indices visibles par beat (liyue-aigc). La réaction vient **après** le stimulus : larmes, rire, rougeur, chute n'apparaissent jamais avant leur cause. Les micro-expressions sont faibles : accompagner d'un geste franc (déglutir, cligner, inspirer).
- **Un seul mobile par clip** quand plusieurs corps sont présents ; les autres tenus immobiles et notés comme tels. Tour de tête ≤ 45° fiable (par exemple 30° vers la gauche en 1,5 s) ; tour complet dos → face = visage inventé : 90° maximum ou première/dernière image épinglées.

## 6. Budget de mouvement — grille complète et rééquilibrage

| Composante | 0 | 1 | 2 | 3 |
|---|---|---|---|---|
| Sujet | immobile | souffle, clignement, tour de tête | marche dans le cadre, geste, s'asseoir/se lever | course, chute, bagarre, tour complet |
| Caméra | fixe | un axe lent (push, pan ≤ 15°) | dolly avec recadrage, suivi porté | orbite, grue, whip, multi-axes |
| Décor | immobile | un élément (pluie, cheveux, rideau) | deux éléments ou petite foule | feu + fumée + foule + eau |

Procédure : additionner ; × 1,0 (≤ 5 s), × 1,3 (6–10 s), × 1,6 (> 10 s) ; +1 par personne supplémentaire avec action indépendante, +1 si un visage > 1/3 du cadre, +1 pour des mains en manipulation fine. **Plafonds : 4 (gros plan sur un personnage), 6 (moyen/large avec des gens), 8 (décor, produit).** Un clip Veo avec dialogue dépense 2 d'avance.

Exemple de rééquilibrage : « deux hommes se disputent dans une cuisine, caméra portée qui fouette de l'un à l'autre, 10 s » = sujet 2 + caméra 3 + décor 1 = 6 × 1,3 = 7,8 + 1 personne + 1 visage = 9,8 pour un plafond de 4. Découpé en deux singles fixes de 4–5 s (sujet 2 + caméra 0 + décor 0 + 1 visage = 3 chacun) et un insert de 1,5 s sur une main qui frappe la table : trois clips faciles, même scène.

## 7. Adaptateurs : ce que la famille de modèle change à la **façon de découper**

**Les paramètres par modèle, l'ordre des blocs du prompt, les durées offertes, les résolutions, les presets et le champ négatif de la version du jour sont dans `higgsfield-cinema`.** Rien de tout cela ne s'écrit ici : ça change à chaque version et ce n'est pas une décision de réalisation. Ce qui reste de ton côté, c'est la conséquence sur le découpage lui-même.

| | Veo | Kling | Seedance 2 / 2.5 |
|---|---|---|---|
| Ce qu'on peut lui confier | Un plan qui porte une réplique, image et son en une passe | Une action physique qui a du poids, pilotée par sa dernière image | Des visages tenus, du lip-sync, des coupes dures chronométrées, du multi-plans jusqu'à ~30 s (varg) |
| Faiblesse qui force la main au découpage | Les interdits visuels ne tiennent pas : il faut écrire des faits positifs à la place | L'action se boucle si elle n'est pas en étapes ; il coupe de lui-même dans une prise unique | Un changement de lieu dans une même génération casse le raccord ; les grandes amplitudes font dériver les visages |
| Budget de mouvement applicable | Mêmes plafonds que la grille § 6 (4 / 6 / 8) ; Veo dépense 2 d'avance dès qu'il y a du dialogue → planifier l'image contre 4 | Mêmes plafonds ; Kling tolère mal le cumul caméra + sujet, mieux vaut étendre une prise courte propre que demander une longue | Mêmes plafonds ; Seedance tient le plus près du plafond tant qu'aucun visage n'est lisible |
| Ce que ça change à ton découpage | Une réplique par plan ; l'ambiance décrite par sa source, pas par un adjectif | Un lieu par prise ; l'action en 3 étapes ; la dernière image décidée avant la première ; jamais deux parleurs dans un clip | Le two-shot d'abord, les singles dérivés ensuite ; multi-plans horodaté pour un dialogue court ; une prise de 15–30 s se traite comme un rush |

Prise longue traitée comme un rush (varg, Kling 4) : une génération de 15–30 s contient plusieurs coupes, des essais répétés du même geste et une montée en régime ; la regarder à vitesse réelle, marquer les 2–6 s qui tiennent, jeter le reste ; ne jamais livrer une prise brute (lu comme « un mème » par le premier spectateur) ; prévoir 2–4 prises par beat.

## 8. Négations

La politique de négation — champ négatif disponible ou non selon la surface, et comment convertir une exclusion en fait positif — appartient à `higgsfield` (`skills/shared/negative-constraints.md`, `higgsfield-prompt` § No Negative Prompts) : ne la réécris pas ici, elle change à chaque version de modèle.

Ta décision de découpage est en amont : **ce qui ne doit pas être dans le cadre**, noté dans la colonne *Ce qu'on voit* du découpage et jamais formulé en interdiction — aucune lettre ni logo, vitesse réelle, un seul parleur, aucune coupe interne. Deux conséquences de découpage t'appartiennent aussi : ne jamais chercher à exclure ce que l'image de départ empêche déjà (costume, époque, décor), et réserver la liste aux pannes qui apparaissent *dans le temps* — changement d'identité, membre en trop, caméra qui part seule, coupe non demandée.

## 9. Leçons de terrain (Rylaispirit, 1 100 prompts comparés)

1. Découper par **blocs horodatés** (taille + action + expression + son par bloc) : le modèle décale de 1–3 s, acceptable. Clip de 10 s : **3–5 beats maximum** ; onze objets listés en rendent 4–5 ; neuf scènes en 18 s en perdent.
2. Écrire le **nombre de plans + la durée totale** pour des coupes ; une prise continue annoncée comme telle, sans coupe, pour un plan unique — sinon « la caméra passe la porte puis monte » se fait couper.
3. Le visage dérive au changement de décor ou de lumière : **un décor par clip**, bloc d'identité répété dans chaque clip, référence image.
4. Le style déclaré une fois dérive devant un sujet inattendu : le redire dans chaque bloc important.
5. Le texte à l'image est faux dès qu'il dépasse un mot : titres, sous-titres, enseignes en post-production.
6. Événement (horreur, action) = **lieu + moment + résultat visible**, et toujours ce qu'on veut voir plutôt que ce qu'on interdit.
7. Plan-séquence long réussi s'il est écrit en **itinéraire** : étapes par verbes concrets, une seule direction, jamais de retour en arrière.

## Checklist de traduction

- [ ] Chaque mouvement a sa cause écrite dans le plan et son cadre d'arrivée ; le mouvement peut physiquement produire ce cadre.
- [ ] Six fentes tranchées pour chaque plan mobile ; immobilité explicitement décidée pour chaque plan fixe.
- [ ] Vitesse réelle, pas de ralenti, noté sur chaque plan d'action.
- [ ] Plans à visage générés 3–5 s ; longs seulement sans visage lisible.
- [ ] ≤ 6 mots en caméra, un parleur par clip ; les écoutes générées au maximum.
- [ ] Budget calculé et sous le plafond de la famille visée.
- [ ] Références : une par personne dans le cadre, une serrée par gros plan ; rien dans la référence qui ne doive être visible.
- [ ] Négations placées selon la famille ; aucune négation de ce que l'image de départ empêche déjà.
- [ ] Invariant lumière + ancre d'identité (NOM + 3 traits + position écran) collés mot pour mot.
- [ ] Direction d'écran et direction du regard écrites dans chaque plan.
