---
name: mise-en-scene
description: Découpage d'une scène pour la vidéo IA (Seedance, Veo, Kling) — quel plan, dans quel ordre, à quelle distance et quelle hauteur ; échelle des plans, axe des 180°, règle des 30°, eyeline, couverture d'un dialogue, lumière invariante, longueur de plan par registre. Déclencheurs : « découpe-moi cette scène », « où je mets la caméra », « comment je filme ce dialogue », « quel plan après celui-là », « ça fait plat, pourquoi », « ils ne semblent pas se regarder », « quelle longueur de plan pour ce registre ». Ne fait PAS : la shot list formatée en prompts, le vocabulaire caméra, les optiques et les paramètres (higgsfield), le storyboard et le hook des 3 premières secondes (viral-hooks), la direction de jeu (higgsfield-acting), l'angle marketing (creative-strategy), le texte de l'annonce (ad-copy), les fiches d'assets (commercial-pipeline), le teardown d'une vidéo (video-teardown).
---

# mise-en-scene — le découpage, pas le prompt

Tu es le réalisateur : tu décides **quel** plan, dans **quel** ordre, depuis **où**, pour **quelle** raison. Les définitions de cadre et le vocabulaire caméra sont dans `higgsfield/vocab.md`, les optiques et les mouvements nommés dans `higgsfield-camera`, les paramètres par modèle dans `higgsfield-cinema`, la formulation du prompt dans `higgsfield-shotlist-director` : tu ne les réécris pas, tu y renvoies. La direction de jeu (comment un corps joue un désir) appartient à `higgsfield-acting`.

## Ordre de pensée imposé

1. **La scène en une phrase** : qui veut quoi, contre quel obstacle, et ce qui a changé à la dernière image. Si rien n'a changé, ce n'est pas une scène, c'est un plan : refuse de la découper.
2. **Le plan au sol** : où sont les corps (en mètres), où est l'axe A–B, où est la source de lumière unique, par où on entre et on sort. L'axe est tracé **avant** le premier plan.
3. **Le plan du « turn »** : le beat où quelqu'un décide, apprend ou cède. C'est le gros plan de la scène. Tu le places d'abord, puis tu construis l'escalier qui y mène (resserrement progressif) et la sortie (réouverture).
4. **L'entrée et la sortie** : le spectateur doit pouvoir s'orienter en 1 s au premier plan et partir sur une image qui tient. Une scène qui commence sur un insert et finit sur un insert n'a pas de géographie.
5. **La couverture** : liste les setups (six pour un dialogue à deux), choisis ceux que tu montes (quatre). Chaque plan fait **un** travail : changer l'émotion, avancer l'action ou monter la pression. S'il ne fait rien des trois, supprime-le.
6. **Mouvement = déclencheur** : chaque mouvement de caméra répond à « qu'est-ce qui vient de changer ? ». Pas de réponse → caméra fixe avec un mouvement interne au cadre.
7. **Budget de mouvement** par plan (sujet + caméra + décor, × durée, + visage/mains). Au-dessus du plafond, tu ne changes pas d'adjectif : tu coupes en deux plans.
8. **Lumière** : une clause d'invariant par scène, collée mot pour mot dans chaque plan, plus une phrase par plan sur ce qu'elle fait au visage depuis **cette** caméra.
9. **Découpage + checklist**, puis main à `higgsfield-shotlist-director`.

Lire `references/couverture-dialogue.md` dès qu'il y a deux parleurs ou plus ; `references/sequences-types.md` pour partir d'un gabarit (désert, cuisine, action, démo produit, shooting mannequins, arrivée dans un lieu) ; `references/lumiere.md` dès que la scène a plus d'un plan ; `references/traduction-ia.md` avant de passer le découpage au prompteur.

## 1. L'échelle des plans — six barreaux et la règle des deux crans

**Les définitions de cadre (ce que contient un EWS, un WS, un MS, un MCU, un CU, un ECU) sont dans `higgsfield/vocab.md` : ne les réécris pas.** Ce qui t'appartient, c'est le barreau que tu choisis et pourquoi. Table de décision :

| Barreau | Ce que ça dit | Échoue quand | Fiabilité IA |
|---|---|---|---|
| 1 Très large (EWS) | Géographie, destin, petitesse | On ne trouve pas le sujet en 1 s | Visages lointains déformés, figurants inventés |
| 2 Large (WS) | Rapport corps/espace, mise en place | Il faut que le visage porte le beat | Bonne sans visage lisible |
| 3 Moyen (MS) | Action et dialogue lisibles | On veut la pièce **ou** la pensée : il ne donne ni l'un ni l'autre | **Défaut du dialogue** |
| 4 Rapproché (MCU) | Jeu + contexte | Réflexe paresseux → « télé » | Taille du lip-sync (≤ 6 mots) |
| 5 Gros plan (CU) | Pensée, jugement, peur, décision | Coupé avant que le personnage ait décidé → visage vide | Visage > 1/3 du cadre = +1 au budget |
| 6 Très gros plan (ECU) | Obsession, indice, pression du corps | Géographie non établie | Dents, doigts, yeux fondent → préférer un **objet** |

Numérotation des barreaux d'après DirectorSKILL `cinematic-language.md` (MIT). Trois règles qui en découlent :

- **Deux crans au cut** si la caméra reste sur le même axe (WS → MCU, pas WS → MS). **Un cran suffit si l'angle change d'au moins 30°** autour du sujet. Un cran sur le même axe = saute-mouton, ça lit comme un glitch.
- **Resserrer = la tension monte ; rouvrir = relâchement ou distance.** L'escalier type d'une scène : WS → MS → MCU → CU (turn) → MS ou WS (aftermath).
- **L'insert est le plan le plus rentable en IA** : court, sans visage, sans marche. Génère-en 3 à 5 par scène comme assurance ; il ne marche que si l'objet a été **planté** dans un plan plus large avant.

Les modèles sont au mieux dans la bande MS–CU. Évite les visages en EWS et en ECU ; un ECU se fait sur un objet ou une main.

## 2. Hauteur et angle — en mètres, puis en conséquence visible

| Hauteur de l'axe optique | Ce que ça dit | Pour | Conséquence visible à faire écrire |
|---|---|---|---|
| Sol, 0–0,3 m | Le monde surplombe ; les plafonds existent | Effroi, POV enfant/animal, objet-menace | Le bord de la table coupe le bas du cadre |
| Genou/taille, 0,6–1,0 m | Monumental sans caricature | Autorité, arrivée, registre héroïque | Le plafond est visible derrière lui |
| Poitrine, 1,2–1,4 m | Légère élévation du statut | Gain de pouvoir discret dans un dialogue | On est juste sous ses yeux, objectif horizontal |
| Yeux, 1,5–1,7 m | Égaux, neutre | Défaut pour deux personnes de même rang | Rien de particulier : ni plafond ni sol |
| Au-dessus des yeux, 1,8–2,2 m | Observé, diminué | Pression institutionnelle, être jugé | On voit le dessus de ses épaules et le sol derrière |

Ces mètres valent pour un adulte debout (yeux ≈ 1,6 m) ; **retire 0,4 m pour une scène assise**. Ce qui compte, c'est la caméra par rapport aux yeux du **sujet**, jamais le chiffre absolu (source : DirectorSKILL). Les modèles n'honorent pas un chiffre : la colonne de droite est ce qui doit arriver dans `higgsfield-shotlist-director`, pas la mesure.

**Règle du champ/contre-champ** : la caméra se met à la hauteur des yeux du personnage **hors champ**. On filme l'assis depuis les yeux du debout, et inversement. Deux singles à 1,6 m neutres = eyeline techniquement juste, émotionnellement morte.

Angles : contre-plongée sur quelqu'un qui n'est pas puissant = parodie ; plongée sur le héros dans son beat fort = contresens ; Dutch chiffré (3–8° malaise, 10–20° perte de contrôle, 25°+ effondrement — ordres de grandeur repris de Nomi, non mesurés) et jamais plus de deux fois par séquence ; sur certains modèles, l'angle se demande par l'**événement** (« la caméra bascule et tombe ») plutôt que par un nombre de degrés — la formulation est l'affaire de `higgsfield-shotlist-director`.

## 3. Distance → proxémique

Les quatre zones de proxémique et leur lecture dramatique sont définies dans `higgsfield-acting` § *Proxemics — distance as drama* : reprends ses bornes (**intime < 0,5 m · personnelle 0,5–1,2 m · sociale 1,2–3,5 m · publique 3,5 m +**) et ne les redéfinis pas. Ce qui t'appartient est la **conséquence de découpage** de chaque zone, en mètres de caméra. Le choix d'optique qui les sert — focale, ouverture, champ de vision — est dans `higgsfield-camera` ; ne l'écris jamais dans un découpage.

| Zone | Conséquence de découpage |
|---|---|
| Intime | Le two-shot frontal ne marche plus (les têtes se chevauchent) : passer en profil à 90° de l'axe, ou en OTS serré |
| Personnelle | **La** distance du two-shot : caméra à environ 1,8 m, les deux têtes tiennent en plan moyen |
| Sociale | Caméra à ~3 m pour que l'écart entre eux se voie ; les visages passent en singles ; c'est là qu'un objet-barrière a sa place |
| Publique | Les deux dans un cadre = les deux petits ; le choix réel est où **tu** te tiens (large et près d'un corps = différentiel de taille) |

Source des conséquences de découpage : DirectorSKILL `blocking-and-staging.md`. Écris toujours le changement de distance en chiffres : `2,4 m → 0,6 m en 4 s, B ne recule pas`. Qui bouge veut quelque chose ; qui ne recule pas tient le pouvoir. Franchir deux zones d'un coup (public → personnel) est un événement de niveau violence : une fois par scène au plus.

La compression de l'espace vient de la **distance** à laquelle tu te places : plus tu es loin, plus les plans de profondeur s'empilent et plus le fond devient une masse. C'est cette conséquence que tu écris dans la colonne *Ce qu'on voit* (« les rayonnages à 4 m derrière elle fondent en bandes verticales floues »). Quelle optique produit cet empilement n'est pas ta décision.

## 4. L'axe des 180° — et les cinq façons légitimes de le franchir

Trace la ligne entre A et B (ou le long de la direction de marche). Toute la couverture d'**un seul côté** : A reste à gauche regardant à droite, B à droite regardant à gauche. Le côté compte, pas la distance ni l'angle : une position au-delà de B, du bon côté, reste légale.

```
   A (*)= = = = = = AXE = = = = = = (*) B      A regarde camera-right, B camera-left
 [1]              [2]              [3]  [4]
 [1] derrière A → OTS sur B · [2] face à l'axe → two-shot · [3] derrière B → OTS sur A · [4] au-delà de B → single propre de A
```

Franchir, du moins au plus coûteux (DirectorSKILL) :

1. **Un personnage bouge** et redessine l'axe (A passe de l'autre côté de B). Coût zéro.
2. **La caméra traverse à l'écran** (dolly ou arc) : le spectateur ne perd jamais la pièce. Coût : un mouvement.
3. **Plan neutre sur l'axe** (de face, ou dans l'axe de la marche), puis on atterrit de l'autre côté. Coût : un plan.
4. **Plan de coupe** (insert, tiers), puis réétablir. Coût : un plan et un beat d'attention.
5. **Réétablir par un large.** Brutal, marche toujours, remet la température de la scène à zéro.

À trois : l'axe appartient à la **paire qui échange le beat** et se redessine quand l'attention change de paire — par un plan (large à trois dans leur nouvelle relation) ou un mouvement (arc), **jamais par un cut muet**, sinon le troisième téléporte. Note la paire dans chaque ligne du découpage : `axe : ELISA–AVITAL`.

En IA, la seule mémoire du pipeline, ce sont les images clés. La mécanique des images clés et des ancres d'identité (comment on les fabrique, ce qu'une référence copie, combien par personnage) est dans `commercial-pipeline` (étape 1) et `higgsfield-cinema` : ne la redéfinis pas. Ce qui est à toi, c'est **ce que l'image clé doit contenir pour que l'axe tienne** : la position écran et la direction du regard, nommées pour chaque plan (« Anna occupe le tiers gauche, de trois quarts, regard hors champ à droite »). Ne laisse jamais le modèle décider de quel côté quelqu'un regarde.

## 5. Les raccords

**Les définitions des raccords (eyeline, cut on action, direction d'écran, plan de coupe, raccord son) sont dans `higgsfield/vocab.md`.** Ici, seulement la décision de découpage et le piège de génération propre à chacun.

| Raccord | Ce que tu décides | Piège IA |
|---|---|---|
| **Regard (eyeline)** | Les trois composantes du vecteur, plan par plan : direction horizontale (A regarde hors champ droite → B regarde hors champ **gauche**), **hauteur** (debout/assis : l'un lève, l'autre baisse les yeux), distance (on ne regarde pas pareil à 1 m et à 8 m) | Généré faux en permanence. Nommer côté et hauteur de la cible hors champ ; si la paire résiste, générer un two-shot et recadrer deux singles dedans |
| **Mouvement (cut on action)** | Où tombe la coupe : environ au tiers du geste dans A, reprise dans B un sixième plus loin ; la vitesse au cut est au pic | Le raccord qui cache le mieux la dérive entre deux générations : le mouvement masque la différence |
| **Direction d'écran** | Qui sort par quel bord : sort à droite → entre par la gauche. Sortie vers ou depuis la caméra = remise à zéro | La direction doit être écrite dans chaque ligne du découpage ; les entrées sont dures (corps inventé) : commencer par une épaule déjà au bord |
| **Plan de coupe / insert** | **0,3–0,5 s** d'un détail entre deux plans qui ne raccordent pas : la mémoire du cadre A disparaît en une fraction de seconde (règle de `higgsfield/vocab.md`). À ne pas confondre avec la **respiration** après un choc, qui est un plan tenu de 2,5–4 s, ambiance seule | Doit appartenir au monde de la scène (même image clé de lieu) sinon c'est un deuxième problème de continuité. Candidats par fiabilité : objet fixe (carafe au premier plan, mains, clé), mouvement d'ambiance (vapeur, rideau), détail mobile sans visage (pied, roue, page) |
| **Son** | L'image coupe 4–12 images **après** l'arrivée du son ; pré-lap 0,3–1,0 s (0,5 s sûr) | Un seul lit d'ambiance continu sous toute la séquence, jamais redéclenché au cut ; couper l'audio généré par le modèle sauf la réplique lip-syncée |

Sources : DirectorSKILL `editing-and-assembly.md`, `sound-and-dialogue.md` ; durée de l'insert, `higgsfield/vocab.md`.

## 6. Mouvement → déclencheur

**Les mouvements nommés sont définis dans `higgsfield-camera` (ce qu'est un push-in, un arc, un whip pan, comment on les écrit) : va les y chercher.** Ta décision, c'est lequel et **à quelle condition** — la colonne *Déclencheur attendu* est le cœur de ce skill.

| Mouvement | Ce que ça dit | Déclencheur attendu | Échoue quand |
|---|---|---|---|
| Fixe | Contrôle, effroi, rituel, gêne, satire | Aucun : c'est le défaut | Rien ne bouge dans le cadre → photo. Ajouter souffle, rideau, vapeur |
| Push-in lent (10–25 cm sur 5–8 s) | Pression, prise de conscience | Commence **sur** la réplique ou **après** la prise de conscience, s'arrête sur la mâchoire qui se serre | Rien ne change dans le jeu pendant la poussée |
| Pull-back lent | Abandon, isolement, « laisser le personnage seul » | Après la fin du beat, jamais avant | Commencé trop tôt |
| Pan / tilt | Lien entre deux idées, échelle verticale | Une destination : on panote **vers** quelque chose | Pan d'une largeur de cadre en < 5 s |
| Travelling latéral | Voyage, distance comme sujet | Un corps qui marche à vitesse constante | Vitesse caméra ≠ vitesse sujet |
| Handheld | Panique, témoignage | Un événement qui fait **basculer** la caméra du fixe au porté | Tremblement continu sans cause ; scène sur le contrôle |
| Arc 90–180° | Retournement de sens, révélation derrière | Quelque chose change dans le fond pendant l'arc | Orbite complète en gros plan : l'identité dérive sur l'arrière du crâne |
| Grue / drone | Échelle, destin, clôture | La fin d'une scène qui l'a méritée | Pas de ligne à suivre (route, côte, rivière) |
| Whip pan | Lien violent, cut caché | Départ **et** arrivée conçus | Un seul des deux bouts est dessiné |
| La caméra arrive avant le personnage | Le spectateur sait avant lui qu'il va entrer | Un lieu vide qui se charge avant l'entrée | Le lieu n'a pas de porte ni d'axe d'entrée visible |

**Un mouvement dominant par clip, un secondaire discret au plus** : c'est la *One-Move Rule* de `higgsfield-camera`, citée ici une fois et jamais réécrite ailleurs dans ce skill. Conséquence de découpage : au-dessus d'un mouvement, tu ne changes pas d'adjectif, tu coupes en deux plans. Sur 15 s : dialogue ≤ 1 changement de mouvement, scène normale ≤ 2, action 3–5 segments de 2–3 s (ordres de grandeur repris de Nomi, non mesurés). La table intention → mouvement et le gabarit de décisions à six fentes sont dans `references/traduction-ia.md`.

## 7. Budget de mouvement (score avant de générer)

| Composante | 0 | 1 | 2 | 3 |
|---|---|---|---|---|
| Sujet | immobile | souffle, clignement, tête qui tourne | marche dans le cadre, geste, s'asseoir | course, chute, bagarre, tour complet |
| Caméra | fixe | un axe lent (push, pan ≤ 15°) | dolly avec recadrage, suivi porté | orbite, grue, whip, multi-axes |
| Décor | immobile | un élément (pluie, cheveux, rideau) | deux éléments ou petite foule | feu + fumée + foule + eau |

Somme × durée (×1,0 ≤ 5 s, ×1,3 pour 6–10 s, ×1,6 > 10 s) ; +1 par personne supplémentaire avec action indépendante, +1 si un visage occupe plus du tiers du cadre, +1 si les mains manipulent finement. **Plafonds : 4 en gros plan sur un personnage, 6 en plan moyen/large avec des gens, 8 pour décor et produit** (DirectorSKILL `ai-video-tool-adapters.md`). Un clip Veo avec dialogue dépense 2 avant toute mise en scène : planifie l'image contre 4.

## 8. Rythme : longueur moyenne de plan selon le registre

| Registre | Durée moyenne d'un plan | Plans par 30 s | Plus long maintien |
|---|---|---|---|
| Scène conventionnelle | 5–12 s | 3–6 | 20 s |
| Montée de tension | 3–6 s | 5–10 | 14 s (le maintien **est** l'effet) |
| Comédie de dialogue | 2–5 s | 6–15 | 8 s + le maintien sur la réaction |
| Action rapide | 0,8–2,5 s | 12–38 | 5 s |
| Vente / produit | 0,8–2,0 s | 15–38 | 6 s (le maintien produit) |
| Flux vertical (feed) | 0,7–2,0 s | 15–38 | 3 s |

**Cadence réelle de production, à ne pas confondre avec la colonne « plans par 30 s » : ~6 générations pour 30 s** (4–6 s en moyenne, un plan héros tenu 6–8 s), pour **8–15 coupes au montage final**. Les bandes hautes de la table (15 à 38 plans par 30 s) ne sont atteignables qu'en **re-découpant des rushes déjà générés** — une prise de 15–30 s dont tu gardes 2–5 s par beat, plusieurs fois. Si tu annonces 30 plans pour 30 s, tu dois pouvoir dire dans quels rushes ils sont taillés ; sinon, c'est 30 générations et le devis est faux.

Source : DirectorSKILL. La moyenne n'est pas un métronome : si trois coupes consécutives tombent à moins de 0,3 s d'écart, la séquence lit comme un gabarit. **La pause avant l'impact compte plus que la vitesse des coupes** (smixs, CC BY 4.0) : escalier type d'une pub produit 3 s · 2 s · 1,5 s · 1 s · 0,5 s (macro) · 2 s (hero) ; d'une montée d'angoisse 2 · 1 · 1 · 0,5 · 0,5 · 0,3 · pause · 1. Après un choc, **la respiration** : 2,5–4 s d'un plan presque vide, ambiance seule, sans coupe dedans — c'est le plan que tout le monde coupe pour gagner du temps et qu'il ne faut pas couper.

## 9. Composer en 9:16 : une autre grammaire, pas du 16:9 tourné

| Règle verticale | Pourquoi | À écrire |
|---|---|---|
| Mise en place **en profondeur**, jamais côte à côte | Deux corps latéraux n'entrent pas dans 9 unités de large | « she stands close and low in frame, he stands further back and higher, both visible » |
| Yeux au **tiers supérieur**, sol visible en large | À hauteur d'yeux exacte, le vertical coupe les pieds et vide le haut | « slightly above eye level, feet and floor visible at the bottom » |
| Sujet unique, gros, central | Le format est fait pour une personne présente, pas pour une géographie | « single subject centered, head and shoulders fill the upper half » |
| Le large devient un **tilt** | Un panorama horizontal ne se lit pas ; une révélation verticale (ciel → sol, pieds → visage) oui | « tilt down from the sky to the track » |
| Trois couches | Premier plan bas (objet, épaule), sujet, fond haut : le cadre a de la profondeur sans largeur | « foreground: cup edge soft at the bottom; midground: her; background: window high » |
| Rien d'important dans les **~96 px rognés en haut et en bas** d'un 1080×1920 | Les interfaces des réseaux recouvrent cette bande (valeur maison `zone-sure-tiktok-snap`) | Cadrer les visages et le produit dans le tiers médian-haut |
| Générer **nativement** en 9:16 | Un recadrage de 16:9 perd la marge de tête et l'espace devant le regard que le modèle avait composés | Ratio fixé dans la keyframe et le prompt |

## 10. Diagnostic : « ça fait plat / télé / IA » — symptôme → cause → correctif

| Symptôme | Cause probable | Correctif de mise en scène |
|---|---|---|
| Tout se ressemble, on s'ennuie sans savoir pourquoi | Tous les plans en MCU à 1,6 m ; aucune géométrie de statut | Décider qui domine ; une hauteur par personnage ; un escalier de tailles vers le turn |
| « Ça flotte », caméra en apesanteur | Mouvements sans déclencheur, remplis par le modèle | Caméra fixe partout sauf un plan ; le déclencheur écrit dans *Ce qu'on voit* |
| Le spectateur « a le mal de mer » au cut | Axe franchi par accident ; épaules qui changent de coin | Retracer l'axe ; refaire la paire OTS depuis le two-shot ; ou franchir par un des cinq moyens |
| Les deux ne semblent pas se regarder | Eyelines parallèles ou même hauteur sur un assis/debout | Direction opposée ; hauteur des yeux du partenaire ; nommer côté et hauteur de la cible |
| Image boueuse, personnage collé au fond | Pas de rim écrit | Ajouter le contre dans chaque plan à visage sur fond sombre |
| Le gros plan ne dit rien | Coupé avant la décision | Déplacer le CU **après** le stimulus ; mettre l'écoute avant la réplique |
| Le produit sort de nulle part | Insert d'un objet jamais planté | Planter dans une main ou au premier plan d'un large, puis l'insert |
| Ça saute, ça bégaie | Un cran sur le même axe ; ou trois coupes à ± 0,3 s | Deux crans ou 30° ; varier les durées |
| Le rire / le choc ne reste pas | Pas de respiration après | 2,5–4 s d'un plan presque vide, ambiance seule |
| On ne sait plus où on est | Scène ouverte sur un insert ; pas de large ; direction d'écran inversée | Large d'orientation en 1 s ; direction écrite dans chaque plan |
| Trop de monde, trop de gestes, visages qui fondent | Budget au-dessus du plafond | Un mobile par clip ; couper au pivot ; inserts sans visage |

## Ce skill / skill voisin

| Besoin | Skill |
|---|---|
| Définitions de cadre et vocabulaire caméra, raccords nommés, durée d'un insert | `higgsfield/vocab.md` |
| Mouvements nommés, *One-Move Rule*, optiques (focales, ouvertures, champ de vision) | `higgsfield-camera` |
| Paramètres par modèle, ordre des blocs de prompt, ancres d'identité côté modèle | `higgsfield-cinema` |
| Transformer une ligne de découpage en prompt | `higgsfield-shotlist-director` |
| Direction de jeu : comment un corps joue un désir, un obstacle, une tactique | `higgsfield-acting` |
| Les 8 leviers d'attention des 3 premières secondes, storyboard | `viral-hooks` |
| Angle marketing et mécanique cognitive de la pub | `creative-strategy` |
| Texte de l'annonce, script UGC | `ad-copy` ; relecture `copychief` |
| Fiches d'assets (produit, personnage, lieu), prompt multi-segments, diagnostic d'une génération ratée | `commercial-pipeline` |
| Décortiquer une vidéo existante plan par plan | `video-teardown` |
| Algorithmes, formats et calendrier par réseau (**pas** la zone sûre : voir § 9) | `social-platforms` |

Ordre sur une pub : `creative-strategy` → `viral-hooks` → **`mise-en-scene`** (découpage) → `commercial-pipeline` (assets) → `higgsfield` (prompts) → `ad-copy` → `copychief`.

## Standard de sortie : le découpage technique

Une ligne par plan, toutes les colonnes remplies, une valeur par cellule. Les durées sont en secondes finies (pas en secondes générées). En tête du tableau : la phrase de scène, le plan au sol en trois lignes, l'axe, la clause d'invariant lumière.

| N° | Taille | Angle | Hauteur | Mouvement | Durée | Ce qu'on voit | Ce qu'on entend | Intention | Réf. image |
|---|---|---|---|---|---|---|---|---|---|

Règles de remplissage : *Mouvement* = un seul nommé avec distance et durée, ou `fixe` ; *Ce qu'on voit* = ce qu'un storyboardeur dessinerait (placement du sujet + deux ou trois éléments de décor qui doivent être dans le cadre) + l'**état final** ; *Ce qu'on entend* = ambiance, réplique entre guillemets avec son parleur, ou `silence` écrit ; *Intention* = le travail du plan en trois mots (changer l'émotion / avancer l'action / monter la pression) ; *Réf. image* = quel asset `commercial-pipeline` sert de première image ou de référence d'identité.

## Exemple complet : shooting photo dans la neige (9:16, 19 s, Seedance 2.5 / Veo)

**Scène en une phrase.** Deux mannequins posent pour une marque de doudounes ; la séance sérieuse déraille sur une boule de neige, le rire devient l'argument, l'une d'elles finit par s'adresser à nous.

**Plan au sol.** Clairière enneigée, ciel couvert. Avital (métisse, yeux verts, doudoune ivoire) à 1,0 m d'Elisa (blonde, doudoune bleu cobalt) : distance personnelle, two-shot possible. Photographe hors champ à 4 m, du côté de la caméra. **Axe** : Elisa screen-left regardant camera-right, Avital screen-right regardant camera-left ; toute la couverture du côté du photographe. Deux femmes de même taille, debout : yeux à 1,6 m.

**Turn.** Le beat 4 : Avital répond « Avec ça ? Jamais. » en tirant sur son col — le produit entre dans l'histoire par une réplique, pas par un packshot. C'est le MCU qui commande tout l'escalier.

**Invariant lumière** (collé dans chaque prompt) : `Lighting: overcast winter sky, large soft shadowless daylight from above, snow bounce fills the faces from below, shadow side less than one stop under, cool white balance with natural warm skin, no sun, no visible shadow line, background snow slightly brighter than the faces.` (clause d'invariant : elle ne vaut qu'au caractère près, voir `references/lumiere.md` § 6 pour la raison.) Ciel couvert = source immense = pas de ligne d'ombre : c'est le seul cas où un ratio 1:1 à 2:1 n'est pas plat, parce que la neige éclaire par-dessous et dessine le menton.

**Découpage.**

| N° | Taille | Angle | Hauteur | Mouvement | Durée | Ce qu'on voit | Ce qu'on entend | Intention | Réf. image |
|---|---|---|---|---|---|---|---|---|---|
| 1 | MCU | Face, trois-quarts léger | 1,6 m (yeux) | Fixe | 2,5 s | Avital pose, menton haut, sérieuse ; à 0,4 s une boule de neige entre par camera-right et éclate sur son épaule gauche ; elle sursaute, cligne, le rire monte ; état final : bouche ouverte, yeux plissés | Obturateur d'appareil photo ×2, impact sourd de la neige, premier éclat de rire | Hook par événement physique | Avital-face-A |
| 2 | WS | Légère plongée (sol visible) | 1,2 m | Fixe | 2 s | 9:16 en profondeur : Elisa au premier plan bas, de trois-quarts dos, bras encore levé du lancer ; Avital au fond, plus haut dans le cadre, qui rit ; trois sapins et les traces de pas entre elles | Rires des deux, vent léger | Établir l'axe et la géographie | Lieu-clairière |
| 3 | MCU (OTS) | Derrière l'épaule d'Avital (floue bas-droite, ~25 % du cadre) | 1,6 m | Fixe | 3 s | Elisa, point sur elle, souffle visible ; elle dit, taquine : « T'as pas froid ? » ; état final : sourcil levé | Elisa : « T'as pas froid ? » (3 mots) | Lancer la question | Elisa-face-A |
| 4 | MCU (OTS inverse) | Derrière l'épaule d'Elisa (floue bas-gauche) | 1,6 m | Fixe | 3,5 s | Avital écoute 0,6 s, puis tire le col de la doudoune ivoire jusqu'au menton et répond ; état final : col tenu, sourire en coin | Avital : « Avec ça ? Jamais. » (3 mots) | **Turn** : le produit devient la réponse | Avital-face-A + Doudoune-ivoire |
| 5 | ECU | Face, légèrement plongé | 1,3 m | Fixe | 1,5 s | Mains gantées qui remontent le zip de la doudoune ivoire jusqu'au menton, logo absent, flocons sur le tissu ; état final : zip fermé | Zip, silence autour | Insert produit tenu (ni raccord ni respiration) | Doudoune-ivoire |
| 6 | MS serré (two-shot empilé) | Face, trois-quarts | 1,6 m | Fixe | 3 s | Elisa pose sa tête sur l'épaule d'Avital : deux visages empilés verticalement, pas côte à côte ; elles éclatent de rire ; état final : yeux fermés toutes les deux | Rire à deux, obturateur ×3 | Réaction > parole ; l'alliance | Elisa-face-A + Avital-face-A |
| 7 | CU | Face, adresse directe, centrée | 1,6 m | Push-in 10 cm sur 3 s, déclenché par le regard qui vient à la caméra | 3,5 s | Avital tourne les yeux vers l'objectif à 0,5 s ; le push-in part à ce moment ; état final : regard planté, sourire tenu | Avital : « Le lien est en bio. » (5 mots) | CTA ; le mouvement suit la prise de conscience du spectateur | Avital-face-A |

Total 19 s, 7 plans, moyenne 2,7 s : registre « comédie de dialogue » tenu. Un seul mouvement de caméra sur sept, sur le plan qui le mérite.

**Vérification.** Axe : Elisa à gauche regardant à droite dans 2, 3, 6 ; Avital à droite regardant à gauche dans 2, 4, 6 ; le plan 7 regarde l'objectif, ce qui remet la géographie à zéro légalement. Deux crans : 1 MCU → 2 WS (4 → 2, deux crans) ; 2 WS → 3 MCU (2 → 4, deux crans) ; 3 → 4 même taille mais contre-champ (angle > 30°) ; 4 MCU → 5 ECU (4 → 6, deux crans) ; 5 ECU → 6 MS (6 → 3, trois crans) ; 6 MS → 7 CU (3 → 5, deux crans). Eyeline : même taille, debout, caméra à 1,6 m des deux côtés ; épaule d'Avital bas-droite dans 3, épaule d'Elisa bas-gauche dans 4 — si l'épaule change de coin, l'axe est franchi. Lumière : invariant identique dans les 7 plans ; aucune direction gauche/droite dans l'invariant (ciel couvert = pas de direction). Parole : un parleur par clip, 3 / 3 / 5 mots, MCU ou plus serré. Plan 5 : insert produit **tenu** de 1,5 s, placé après trois plans à visage. Il ne tombe ni dans les 0,3–0,5 s du plan de coupe (ce n'est pas une rustine entre deux plans qui ne raccordent pas) ni dans les 2,5–4 s de la respiration après choc (il n'y a pas de choc) : c'est un insert qui porte un beat — le produit répond à la réplique — et la fourchette qui s'applique est celle des inserts du § 4 de `references/traduction-ia.md`, 0,3–2 s. Budget : plan 1 = sujet 2 + cam 0 + env 1 (flocons) ×1,0 +1 visage = 4/4 ; plan 6 = sujet 2 + env 1 +1 personne = 4/6 ; plan 7 = sujet 1 + cam 1 + env 1 +1 visage = 4/4.

**Main à `higgsfield-shotlist-director`** pour le plan 4. Tu transmets des décisions, pas une chaîne de prompt — c'est lui qui écrit la formulation, le modèle, l'optique et les paramètres :

```
Plan 4 sur 7 · 3,5 s · 9:16
Taille : rapproché, en amorce par-dessus l'épaule.
Place caméra : côté photographe, hauteur des yeux d'Avital (1,6 m). Épaule bleue d'Elisa
  floue dans le quart bas-gauche, environ 25 % du cadre.
Sujet : Avital, référence d'identité Avital-face-A + accessoire Doudoune-ivoire.
Action : elle écoute 0,6 s, puis remonte le col ivoire jusqu'au menton et répond.
  État final : col tenu, sourire en coin.
Parole : Avital seule, « Avec ça ? Jamais. » (3 mots, bouche visible).
Caméra : fixe, aucun mouvement. Vitesse réelle, pas de ralenti.
Lumière : coller l'invariant de scène mot pour mot. Phrase de ce plan — la neige éclaire
  le dessous du menton, le côté ombre à moins d'un diaph.
Interdits : aucun texte ni logo dans le cadre.
```

## Checklist avant livraison

- [ ] La scène tient en une phrase et **quelque chose a changé** à la dernière image.
- [ ] L'axe est écrit (`axe : A–B`, qui regarde où) et respecté dans chaque ligne ; à trois, la paire propriétaire est nommée à chaque plan.
- [ ] Deux crans entre plans adjacents sur le même axe, ou un cran + 30°.
- [ ] Eyeline : direction opposée, hauteur des yeux du partenaire hors champ, épaules dans des coins opposés.
- [ ] Clause d'invariant lumière identique mot pour mot dans tous les plans ; une phrase par plan sur ce qu'elle fait au visage depuis cette caméra ; aucune direction gauche/droite dans l'invariant.
- [ ] Un déclencheur par mouvement, écrit dans la colonne *Ce qu'on voit* ; pas de mouvement sans déclencheur.
- [ ] Pas deux plans identiques (taille + angle) de suite ; un retour au même setup est admis s'il y a au moins un plan entre.
- [ ] Un insert toutes les 3 à 4 coupes à visage, à la bonne durée : 0,3–0,5 s s'il sert de raccord entre deux plans qui ne raccordent pas, jusqu'à 2 s s'il porte un beat, 2,5–4 s seulement s'il s'agit de la respiration après un choc.
- [ ] Un parleur par clip, ≤ 6 mots en caméra (≤ 12 hors champ), MCU ou plus serré.
- [ ] Budget de mouvement calculé par plan et sous le plafond ; les plans au-dessus sont déjà coupés en deux.
- [ ] Le turn a le plan le plus serré de la scène ; aucun autre beat n'a plus de plans que lui.
- [ ] Entrée orientable en 1 s, sortie sur une image qui tient ; pas d'insert en premier ni en dernier plan.
- [ ] Chaque ligne a une *Réf. image* qui existe dans les assets `commercial-pipeline`.

## Anti-patterns

- **Tout en MCU à hauteur d'yeux** : la scène n'a pas de géométrie de statut ; c'est le défaut « télé » que les modèles produisent seuls.
- **Le mouvement décoratif** : un « lent push-in cinématographique » sans que rien ne change dans le jeu. Si la réponse à « qu'est-ce qui a changé ? » est « rien », la caméra est fixe.
- **Le gros plan avant la décision** : on coupe sur le visage pendant qu'il ne pense encore rien → visage vide. Le CU arrive **après** le stimulus, pas pendant.
- **Deux personnes qui marchent et parlent, caméra qui recule** : trois mobiles, fiabilité basse. Remplacer par un plan fixe à 90° qu'ils traversent, ou un suivi de dos à distance constante.
- **L'orbite complète en gros plan** : l'identité fond sur l'arrière du crâne. 90–180° maximum, et plutôt en plan moyen.
- **Le two-shot côte à côte en 9:16** : impossible. Le vertical se compose en profondeur (un corps bas et proche, l'autre haut et loin) ou en pile (une tête sur une épaule).
- **L'insert d'un objet jamais planté** : le spectateur ne sait pas ce qu'il regarde.
- **Le franchissement d'axe par cut muet à trois** : le troisième personnage téléporte.
- **La lumière réécrite à chaque plan** : un adjectif d'atmosphère se résout différemment à chaque génération ; l'invariant se colle, il ne se paraphrase pas.
- **Deux parleurs dans un clip** : mauvaise bouche qui bouge, pas de point de coupe, double surface de dérive. Le chevauchement se fait au montage (audio de B 0,4 s avant le cut).
- **Couper la respiration après le choc** pour gagner 3 s : le choc n'est pas mémorisé.
- **Le ralenti par défaut** : porter « vitesse réelle, pas de ralenti » dans chaque ligne d'action du découpage, sinon le modèle ralentit de lui-même.
