# Beat sheets chiffrés en secondes — 30 s, 60 s, 90 s, 2 min, 3 min, sketch, épisode

Convertir une structure de long métrage en secondes revient à prendre ses positions en **pourcentage** et à les multiplier par la durée. Ce fichier donne les pourcentages sourcés, les six grilles de durée, deux gabarits de forme (sketch à deux, épisode de micro-drame), le budget de mots, les trois boucles de rétention, et un épisode complet de 70 s écrit pour la génération IA.

## 1. Budget de mots et de temps

| Longueur | Anglais — 2,5 mots/s (150 mots/min) | Français — budget réel, 4,2 mots/s sur le temps parlé, moins ~25 % de silence | Nombre de temps (beats) | Source |
|---|---|---|---|---|
| 15 s | 37 | 47 | 3-4 | vargHQ video-script ; colonne française : mesure maison |
| 30 s | 75 (60-70 se lit mieux) | 94 (75-85 se lit mieux) | 5-7 | vargHQ ; mesure maison |
| 45 s | 112 | 142 | 6-9 | vargHQ ; mesure maison |
| 60 s | 150 (90-120 quand il faut regarder quelque chose) | 189 (130-160 quand il faut regarder quelque chose) | 7-12 | vargHQ ; mesure maison |
| 90 s | 225 (en pratique 130-180 avec les silences de jeu) | 283 (en pratique 190-240 avec les silences de jeu) | 10-15 | dérivé de vargHQ et de la mesure maison (ordre de grandeur) |
| 2 min | 300 (en pratique 180-240) | 378 (en pratique 250-310) | 14-20 | dérivé (ordre de grandeur) |
| 3 min | 450 | 567 | chapitres de 3-5 temps | vargHQ ; mesure maison |

**Comment la colonne française est calculée, et pourquoi elle n'est pas 4,2 × la durée.** 4,2 mots/s est un débit de **parole**, mesuré pendant qu'on parle ; il ne décrit pas une minute de vidéo, où environ un quart du temps est du silence (respirations, pauses de 0,18 s entre phrases, plans de réaction). Le budget est donc `durée × 0,75 × 4,2`, soit ~3,15 mots par seconde de vidéo. Multiplier 4,2 par la durée donne 252 mots pour 60 s : c'est un script qu'on ne peut pas dire. Le bon chiffre est ~190.

La colonne anglaise reste la bonne quand le texte part tel quel vers un modèle anglophone (c'est le débit que les sources ont mesuré) ; la colonne française vient de la mesure maison à **4,2 mots/s** (fiche `methode-video-motion-validee`). Dans les deux cas c'est un plafond de **durée**, pas de synchro : en caméra, le lip-sync plafonne à 6 mots par plan.

Contraintes de forme (vargHQ, majiayu, picsart retention-hooks) :
- **Une réplique parlée = un visuel.** Une réplique ne chevauche jamais une coupe qu'elle ne possède pas ; la couper en deux plutôt.
- Gros plans synchronisés : plafond de lip-sync — **≤ 6 mots par réplique en caméra**, ≤ 12 hors champ (`mise-en-scene/references/couverture-dialogue.md` §4) —, un locuteur par plan.
- Texte à l'écran : **≥ 0,33 s par mot** (une légende de 4 mots reste ≥ 1,2 s) ; **≤ 7 mots écrits** sur la ligne d'accroche visible dès l'image 0 (longueur de texte à l'écran, distincte du plafond de lip-sync).
- Générations : des runs de **4-11 s** obéissent mieux et se refont moins cher ; plans de dialogue **4-8 s** avec une heure pour chaque réplique.
- Premier mot entendu **avant 0,5 s** ; question du spectateur claire **à 3 s** ; première image = un visage en pleine expression ou l'action en cours, jamais un plan large qui s'installe.
- Fin : coupe **≤ 1,5 s** après le dernier mot (un temps de réaction, puis dehors) ; rien après qui adoucit. Hoyos a coupé une seconde en fin de short : rétention 83 % → 88 % (vargHQ).
- Plan moyen en dialogue **1,5-3,5 s** ; tenir **1-2 s** sur la réaction clé (majiayu).
- **Quelque chose de nouveau apparaît toutes les 2-3 s** dans un flux (vargHQ).

## 2. Les structures longues converties en pourcentages

### Save the Cat (Snyder, BS2 sur 110 pages) — via jtydhr88 sw-story-structure (MIT)

| Beat | Page | % | à 30 s | à 60 s | à 90 s | à 2 min | à 3 min |
|---|---|---|---|---|---|---|---|
| Image d'ouverture (*opening image*) | 1 | 0-1 | 0 s | 0 s | 0 s | 0 s | 0 s |
| Thème énoncé (par un non-héros) | 5 | 4,5 | 1,5 s | 3 s | 4 s | 5 s | 8 s |
| Catalyseur (*catalyst*) — au-delà de 23 % = couper | 12 | 11 | 3 s | 6,5 s | 10 s | 13 s | 20 s |
| Entrée en acte 2 (le héros décide) | 25 | 23 | 7 s | 14 s | 20 s | 28 s | 41 s |
| Intrigue B | 30 | 27 | 8 s | 16 s | 25 s | 32 s | 49 s |
| Promesse de la prémisse (*fun and games*) | 30-55 | 27-50 | 8-15 s | 16-30 s | 25-45 s | 32-60 s | 49-90 s |
| Point médian (fausse victoire / fausse défaite) | 55 | 50 | 15 s | 30 s | 45 s | 60 s | 90 s |
| Tout est perdu (*all is lost*, odeur de mort) | 75 | 68 | 20 s | 41 s | 61 s | 82 s | 122 s |
| Entrée en acte 3 | 85 | 77 | 23 s | 46 s | 69 s | 92 s | 139 s |
| Image finale (inverse de l'ouverture) | 110 | 100 | 30 s | 60 s | 90 s | 120 s | 180 s |

Règle BS2 citée : mise en place > 25 pages (23 %) = « le public veut se faire rembourser ».

### Les autres, en %

| Auteur | Découpage | % | Repères |
|---|---|---|---|
| Syd Field | actes 30 / 60 / 30 pages sur 120 | 25 / 50 / 25 | plot point I à 21-22 %, plot point II à 71-75 % ; les 10 premières pages (8 %) livrent héros + prémisse + situation |
| McKee | acte 1 ≈ 25 % ; dernier acte le plus court (≤ 20 min sur 120) | 25 / ~58 / ≤ 17 | incident déclencheur dans le **premier quart** ; entrer en acte 3 vers **78-80 %** ; les scènes raccourcissent en montant vers le climax |
| Hoxter | acte 1 < 30 min / acte 2 ≈ 45 / acte 3 < 30 | 28 / 43 / 28 | neuf beats : exposition → débat → premier progrès → enjeux montent → point médian → engagement → crise → confrontation → dénouement |
| Lu Jun (起承转合) | ouverture très courte / développement ≈ 2/3 / retournement = climax / clôture brève avec arrière-goût | ~5 / 65 / 20 / 10 (ordre de grandeur) | « même un sketch de mille caractères a les quatre » |
| Microck (prose) | tension haute 30 % / moyenne 50 % / basse 20 % | — | non sourcé dans la source elle-même |

Lecture commune pour un court : accroche avant 3 s · catalyseur ≈ 10 % · décision du héros ≈ 20-23 % · renversement central à 50 % · pire moment ≈ 68 % · dernier acte le plus court · image finale = inverse de l'ouverture · une seule valeur, un seul conflit, un seul turn par scène.

Absents de toutes les sources du lot : le *story circle* de Dan Harmon et la *story spine* Pixar. Ne pas les citer comme sourcés.

## 3. Les trois boucles de rétention (picsart retention-hooks, MIT)

Ce qui tient le spectateur n'est pas « crochet / corps / paiement » mais **une boucle ouverte** : une question posée et pas encore fermée. La vidéo tient tant qu'une boucle est ouverte et s'affaisse partout où il n'y en a aucune.

| Boucle | Ouvre | Où | Marche quand |
|---|---|---|---|
| Crochet (*hook*) | la première question : un résultat, un contraste, un problème | dans les **2 premières secondes** | le spectateur peut dire ce qu'il attend d'apprendre |
| Intensificateur | la même question, plus aiguë : un enjeu, un chiffre, « et ça empire » | **avant 15 s**, dans le premier quart d'un < 60 s | il bâtit sur la question du crochet au lieu d'en ouvrir une autre |
| Relance (*rehook*) | une question **nouvelle**, quand les premières s'estompent | **35-60 %** de la durée | c'est neuf : un second problème, un retournement — jamais le crochet redit |

Le paiement ferme la boucle du crochet à la fin ; la relance se ferme avant ou avec. Échelle : **< 20 s** = crochet + intensificateur ; **20-30 s** = les trois si la matière a une seconde question ; **> 30 s** = les trois, sinon le milieu perd le spectateur. **Ne jamais utiliser le paiement comme crochet** (il ferme la boucle avant de l'ouvrir) : l'ouverture montre *que* quelque chose arrive, jamais *comment* ni *pourquoi*. La fin peut reboucler sur la première image (fin = le problème du début, résolu) : la relecture devient une seule vidéo continue.

## 4. Grille d'un court de 30 s (fiction, 9:16)

Le format le plus serré où une fiction complète tient : une seule valeur, un seul obstacle, **un seul personnage qui veut** (le second réagit). Pas de point médian véritable — la fausse victoire et la complication se confondent en un temps.

| # | Secondes | % | Beat | Ce qui doit s'y passer | Mots maxi |
|---|---|---|---|---|---|
| 1 | 0-3 | 0-10 | Image d'ouverture = le problème | L'action est déjà commencée ; lisible muet ; 3-5 mots à l'écran | 6 |
| 2 | 3-6 | 10-20 | Catalyseur | Le fait qui dérange arrive de l'extérieur (un message, une main, une phrase) | 8 |
| 3 | 6-10 | 20-33 | Décision | Le héros fait un choix que personne ne lui demande ; l'« acte 1 » est fini à 7 s | 12 |
| 4 | 10-15 | 33-50 | Première tactique, qui échoue | Elle échoue par la faute de l'obstacle, pas par maladresse ; intensificateur posé avant 15 s | 14 |
| 5 | 15-21 | 50-70 | Complication | La vraie taille de l'obstacle apparaît ; 1 s tenue sur le visage | 10 |
| 6 | 21-27 | 70-90 | Turn par une action | Une seule action tranche ; la valeur change de signe | 12 |
| 7 | 27-30 | 90-100 | Image finale, chute visible | Inverse de l'image 1 ; un objet ou un geste ; coupe ≤ 1,5 s après le dernier mot | 4 |

Total ≈ 66 mots, sous la borne de 94 : les 30 % restants sont le jeu et le silence. Générations : 3 blocs (0-10, 10-21, 21-30). Pour un 30 s de marque, le temps 7 porte l'appel à l'action — jamais le temps 6, qui est la chute.

## 5. Grille d'un court de 60 s (fiction, 9:16)

| # | Secondes | % | Beat | Ce qui doit s'y passer | Mots maxi |
|---|---|---|---|---|---|
| 1 | 0-3 | 0-5 | Image d'ouverture = le problème | Action déjà en cours ; lisible muet ; 3-5 mots à l'écran | 7 |
| 2 | 3-7 | 5-11 | Catalyseur | Le fait qui dérange (un message, un objet, une phrase) ; le désir du héros se lit dans son geste | 10 |
| 3 | 7-14 | 11-23 | Décision | Le héros fait un choix que personne ne lui a demandé ; fin de l'« acte 1 » à 14 s | 15 |
| 4 | 14-30 | 23-50 | Promesse de la prémisse, intensificateur | 2-3 temps MAIS / DONC ; chaque temps change une variable (information, relation, risque) ; intensificateur avant 15 s | 35 |
| 5 | 30 | 50 | Point médian | Fausse victoire ou fausse défaite ; relance (nouvelle question) | 5 |
| 6 | 30-41 | 50-68 | Complication | La tactique du héros échoue ; l'obstacle révèle sa vraie taille | 25 |
| 7 | 41 | 68 | Tout est perdu | Le pire moment, 1-2 s tenues sur le visage, silence | 0-4 |
| 8 | 46-55 | 77-92 | Acte 3 : l'action finale | Une seule action, un seul plan si possible ; le turn (valeur + → − ou − → +) | 15 |
| 9 | 55-60 | 92-100 | Image finale / bouton | Inverse de l'image 1 ; chute visible (objet, geste) ; coupe ≤ 1,5 s après le dernier mot | 4 |

Total ≈ 115 mots : sous la borne de 150, cohérent avec « 90-120 quand il faut regarder ».

## 6. Grille d'un court de 90 s (fiction, 9:16)

| # | Secondes | % | Beat | Ce qui doit s'y passer |
|---|---|---|---|---|
| 1 | 0-3 | 0-3 | Image d'ouverture | Conflit en cours, sujet gros et centré |
| 2 | 3-10 | 3-11 | Catalyseur + orientation | Qui veut quoi et ce qui cloche, en 2-3 répliques ; vêtements et accessoires donnent le statut |
| 3 | 10-20 | 11-22 | Décision | Le héros agit ; fin de l'acte 1 à 20 s |
| 4 | 20-45 | 22-50 | Promesse de la prémisse | 3-4 temps, un pic émotionnel toutes les 20-30 s ; intensificateur avant 15 s, donc déjà posé |
| 5 | 45 | 50 | Point médian | Renversement central ; relance ouverte entre 32 et 54 s |
| 6 | 45-61 | 50-68 | Complication | La deuxième tactique échoue plus fort que la première |
| 7 | 61-69 | 68-77 | Tout est perdu → décision finale | Silence, réaction tenue 1-2 s, puis le héros choisit |
| 8 | 69-85 | 77-94 | Acte 3 | L'action finale, le turn ; les plans raccourcissent (McKee) |
| 9 | 85-90 | 94-100 | Image finale / bouton ou cliffhanger | Court unitaire : inverse de l'ouverture, chute visible. Épisode : couper sur la question dans les 3-8 dernières s |

## 7. Grille d'un court de 2 min (fiction, 9:16)

Au-delà de 90 s, une seule montée ne tient plus : il faut **deux mouvements** séparés par un vrai renversement central, et une relance à l'intérieur du second. Le format se partage en deux moitiés de 60 s qui ont chacune leur crochet.

| # | Secondes | % | Beat | Ce qui doit s'y passer |
|---|---|---|---|---|
| 1 | 0-3 | 0-3 | Image d'ouverture | Le conflit est déjà commencé ; aucun nom prononcé |
| 2 | 3-13 | 3-11 | Orientation + catalyseur | Qui veut quoi, ce qui cloche ; le fait extérieur tombe au plus tard à 13 s |
| 3 | 13-28 | 11-23 | Décision | Le héros choisit ; **si la décision passe 28 s, l'ouverture est trop longue** — couper un temps amont |
| 4 | 28-40 | 23-33 | Première tactique | Elle marche à moitié : « oui-mais » |
| 5 | 40-52 | 33-43 | Deuxième tactique | Elle échoue : « non-et », l'obstacle grandit |
| 6 | 52-60 | 43-50 | Intrusion d'un tiers ou d'une information | La relance : une question neuve, pas le crochet redit |
| 7 | 60 | 50 | Point médian | Fausse victoire ou fausse défaite ; la valeur change de signe une première fois |
| 8 | 60-75 | 50-62 | Conséquence du médian | Le héros agit avec sa nouvelle information ; un allié se révèle ou se dérobe |
| 9 | 75-82 | 62-68 | Tout est perdu | Le pire moment ; 2 s de silence, respiration de 2,5-4 s possible ici seulement |
| 10 | 82-92 | 68-77 | Décision finale | Il renonce à ce qu'il voulait au début pour obtenir ce dont il a besoin |
| 11 | 92-112 | 77-93 | Acte 3 | L'action qui tranche ; les plans raccourcissent ; un seul locuteur à la fois |
| 12 | 112-120 | 93-100 | Image finale | Inverse de l'image 1 ; chute visible ; coupe ≤ 1,5 s après le dernier mot |

Budget ~378 mots au plafond, **250-310 en pratique**. Générations : 12 à 15 blocs de 8-12 s. Risque propre au format : le ventre mou entre 40 et 60 s — s'il n'y a pas d'intrusion au temps 6, le montage le sentira.

## 8. Grille d'un court de 3 min (fiction, 9:16)

À 3 min on n'écrit plus une scène mais **quatre chapitres de 40-50 s**, chacun avec sa propre micro-ouverture (une image qui relance) et son propre petit turn, le grand turn tombant à la jonction des chapitres 3 et 4. C'est la forme de vargHQ (« chapitres de 3-5 temps ») appliquée à de la fiction.

| Chapitre | Secondes | Micro-ouverture | Les 3-5 temps | Fin de chapitre |
|---|---|---|---|---|
| I — Le problème | 0-45 | Image d'ouverture = le conflit en cours (0-3 s) | orientation (3-12) · catalyseur (12-20) · décision (20-41) · premier geste | une question qui rouvre : « et maintenant ? » |
| II — Les tactiques | 45-90 | Nouveau lieu ou nouveau visage dès 45 s | oui-mais (45-60) · non-et (60-75) · relance par un tiers (75-90) | fausse victoire au point médian (90 s) |
| III — La chute | 90-135 | Conséquence directe du médian, pas de récapitulatif | l'acquis se retourne (90-110) · tout est perdu (110-122) · le dilemme (122-135) | le héros choisit ce qui lui coûte |
| IV — Le règlement | 135-180 | L'action commence sur la coupe, sans préparation | l'action (139-165) · le turn visible (165-173) · image finale (173-180) | chute visible, coupe ≤ 1,5 s après le dernier mot |

Règles propres au 3 min : **pas plus d'une révélation par chapitre** (picsart) ; chaque chapitre doit changer le lieu, le rapport de force ou le nombre de personnes présentes ; les chapitres raccourcissent à l'intérieur (les temps du chapitre IV sont les plus courts) ; un pic émotionnel toutes les 20-30 s, soit **6 à 9 pics** sur la durée. Budget 567 mots au plafond, en pratique 380-450.

## 9. Gabarit de sketch à deux (15-20 s)

Le sketch n'a pas d'acte 2 : il a un postulat, deux à trois tentatives, une pause, une chute. La structure se compte en répliques, pas en pourcentages.

| # | Secondes (sur 15) | Sur 20 s | Ce qui doit s'y passer | Plafond |
|---|---|---|---|---|
| 1 | 0-2 | 0-3 | Postulat posé **par l'image**, et la première réplique est déjà un refus, une accusation ou une affirmation fausse | setup < 15 mots |
| 2 | 2-5 | 3-7 | L'autre attaque le postulat — c'est la seule information neuve du sketch | ≤ 6 mots en caméra |
| 3 | 5-6 | 7-9 | `[beat]` de 0,5-1 s : personne ne parle, personne ne bouge. Sans cette pause, la chute passe inaperçue | 0 mot |
| 4 | 6-8 | 9-13 | Le retournement : celui qui devait se défendre fait autre chose (il avoue, il obéit à la lettre, il surenchérit) | ≤ 6 mots |
| 5 | 8-11 | 13-17 | La **réaction** est le bouton : un geste partagé, pas une réplique | 0-4 mots |
| 6 | 11-15 | 17-20 | Second retournement en une phrase, ou l'appel à l'action porté par celui qui a perdu | ≤ 6 mots |

Contrôles : 3 changements de tactique au maximum (au-delà c'est une scène, pas un sketch) ; une seule chose folle dans tout le sketch, le reste est normal ; aucun adjectif de jeu dans les didascalies ; 2 générations (coupe au temps 4). Les mécaniques à choisir avant d'écrire sont dans `mecaniques-comiques.md`.

## 10. Gabarit d'épisode de micro-drame (90 s, en secondes)

Mise en conducteur de la grille de `micro-drame.md` § 2. Un épisode qui n'est pas le premier : les 5 premières secondes appartiennent à la **conséquence** du cliffhanger précédent, jamais à sa réponse.

| # | Secondes | Ce qui doit s'y passer | Contrainte |
|---|---|---|---|
| 1 | 0-3 | La conséquence du cliffhanger est à l'écran, lisible muet. Sujet gros et centré | aucune voix off |
| 2 | 3-5 | Une réplique dit le nouveau problème, pas l'ancien | ≤ 6 mots |
| 3 | 5-7 | Carte d'épisode (1,5-2,5 s), posée sur une coupe | aucun dialogue sous la carte |
| 4 | 7-20 | Séquence 1 : le conflit de l'épisode se déploie — c'est le temps le plus dense en information | ≥ 2 informations neuves |
| 5 | 20-32 | La première tactique du héros échoue ; l'antagoniste gagne un cran | MAIS entre 4 et 5 |
| 6 | 32-44 | Séquence 2 : la pression monte par un tiers, un délai ou une preuve | DONC entre 5 et 6 |
| 7 | 44-50 | Un indice est posé, que le retournement rendra relisible | personne ne le commente |
| 8 | 50-62 | Le retournement : révélation, trahison ou décision | **silence sur la réplique de révélation** |
| 9 | 62-70 | Réaction tenue 1-2 s, puis la conséquence immédiate | ≤ 6 mots, ou rien |
| 10 | 70-82 | Point de satisfaction 🔥 (épisode ordinaire) ou montée vers la coupe sèche (épisode 💰) | témoins visibles si 🔥 |
| 11 | 82-88 | Le cliffhanger : un type différent des deux épisodes précédents | un seul crochet |
| 12 | 88-90 | Smash cut sur la carte « Épisode n+1 → » (1,5 s) | aucun fondu |

Vérifications chiffrées à faire à la main : somme des durées = 90 s · mots dits ≤ 283, en pratique 190-240 · toutes les répliques en caméra ≤ 6 mots · un seul locuteur par plan · 9 à 11 blocs de génération de 8-12 s · une nouveauté toutes les 2-3 s, soit ≥ 30 sur l'épisode · le type de cliffhanger noté et comparé aux deux précédents.

## 11. L'épisode de 70 s écrit pour l'IA — « Mauvais numéro », épisode 1

Traduit et adapté de vargHQ / video-script `references/drama.md` (MIT). Stratégie MAIS / DONC ; 12 temps ; 2 lieux ; une réplique par plan, assez courte pour la synchro labiale ; le crochet est une image lisible muet ; le bouton est une révélation ET une intrusion.

Distribution : JUNE (la quarantaine, conductrice de bus de nuit, fatiguée, sèche) ; DEREK (son mari, trop calme) ; L'EXPÉDITEUR (jamais que du texte). Lieux : cabine d'un bus la nuit ; leur cuisine.

| # | Temps | Parlé | À l'écran | Visuel | Son | Ce que le public sait / pas |
|---|---|---|---|---|---|---|
| 1 | 0:00-0:03 | — | IL SAIT. PARS CE SOIR. | un téléphone s'allume sur le tableau de bord d'un bus, feu rouge | vibration | sait : menace ; ignore : qui, quoi |
| 2 | 0:03-0:08 | JUNE : « Mauvais numéro. » | — | June tape d'un pouce, en uniforme, bus vide derrière | clignotant | elle ne croit pas ; nous non plus |
| 3 | 0:08-0:13 | — | JUNE. NE RENTRE PAS. | la réponse tombe aussitôt ; son pouce s'arrête | vibration | MAIS il connaît son prénom |
| 4 | 0:13-0:19 | JUNE [chuchote] : « Qui est là ? » | — | gros plan ; elle vérifie le rétroviseur : le bus est vide | moteur au ralenti | la peur devient physique |
| 5 | 0:19-0:25 | — | REGARDE LE CONGÉLATEUR. | le feu passe au vert ; elle ne bouge pas | klaxon derrière | objet concret posé |
| 6 | 0:25-0:33 | DEREK : « T'es en avance. » | — | cuisine ; Derek à l'évier, manches relevées, très calme | robinet | DONC elle est rentrée quand même |
| 7 | 0:33-0:39 | JUNE : « Service écourté. » | — | son sourire est trop large ; ses yeux vont au congélateur | — | elle ment ; il le voit ? |
| 8 | 0:39-0:45 | DEREK : « Assieds-toi. Je fais du thé. » | — | il tourne le dos, remplit la bouilloire | bouilloire | fenêtre d'action |
| 9 | 0:45-0:52 | — | — | elle entrouvre le congélateur ; sous les petits pois, un passeport | ronron du congélateur | sait : il y a quelque chose |
| 10 | 0:52-0:58 | JUNE [souffle] : « C'est moi. » | ANNA KELLER | gros plan : sa photo, un autre nom | battement de cœur | MAIS le passeport est le sien, sous un autre nom |
| 11 | 0:58-1:04 | DEREK : « Je t'avais dit de pas l'ouvrir. » | — | Derek dans l'encadrement, deux tasses, aucune expression | la bouilloire s'arrête | MAIS Derek savait |
| 12 | 1:04-1:10 | — | COURS. | le téléphone dans sa main s'allume | vibration, noir | cliffhanger : intrusion + révélation |

Vérification contre les grilles : crochet avant 3 s (une image plus 5 mots **écrits à l'écran**, sous le plafond de 7 de vargHQ ; rien n'est dit) ; orientation finie à 0:10 ; décision à 0:25 (elle rentre : 36 %, un peu tard, acceptable parce que les temps 3-5 sont déjà des turns) ; relance à 0:45 (64 %, dans la fenêtre haute) ; révélation à 0:52-0:58 (74-83 %, la zone « turn » du micro-drame) ; bouton dans les 6 dernières secondes ; durées : 3+5+5+6+6+8+6+6+7+6+6+6 = **70 s** ; **23 mots parlés** (2, 3, 3, 2, 5, 2 et 6) pour un budget de **~220** (70 × 0,75 × 4,2), le reste étant du texte à l'écran et de l'image — c'est le silence qui joue. Chaque réplique en caméra est à 6 mots ou moins, la plus longue (« Je t'avais dit de pas l'ouvrir. ») étant pile au plafond.

## 12. Procédure pour écrire un beat sheet

1. Fixer la durée et le format (court unitaire, épisode ou sketch). Lire la ligne du budget de mots (§1) et prendre la grille correspondante (§4 à §10).
2. Écrire d'abord **la dernière image** (la chute visible ou le cliffhanger), puis la première (son inverse ou le problème).
3. Placer les quatre repères : catalyseur ≈ 10 %, décision ≈ 20-23 %, point médian 50 %, pire moment ≈ 68 %. Au-delà de 90 s, placer en plus les jonctions de chapitre.
4. Remplir entre les repères avec des temps reliés par MAIS ou DONC ; si « et puis » convient entre deux temps, couper l'un des deux.
5. Pour chaque temps où des personnages apparaissent : qui veut quoi, que se passe-t-il s'il ne l'obtient pas, pourquoi maintenant.
6. Dessiner les trois boucles : seconde d'ouverture et seconde de fermeture de chacune ; vérifier qu'il y a une boucle ouverte à chaque seconde jusqu'au paiement.
7. Compter les mots par réplique (**≤ 6 en caméra**, ≤ 12 hors champ) et par vidéo (table §1). Écrire la version muette : si elle ne se comprend pas, le problème n'est pas dans les répliques.
8. Recalculer à la main : somme des durées = durée visée, somme des mots dits, nombre de blocs de génération de 8-12 s.
9. Couper la dernière phrase de confort. Puis en couper une de plus.
