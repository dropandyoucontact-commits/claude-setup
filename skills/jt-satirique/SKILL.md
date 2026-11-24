---
name: jt-satirique
description: Écrire et structurer un journal télévisé satirique vertical de 60 à 90 s généré en IA (plateau, présentateur récurrent, invité fictif, micro-trottoir, direct impossible) et bâtir le média récurrent autour (rendez-vous quotidien, personnage, générique, bible, boucle « à demain »). Déclencheurs — « écris le JT de ce soir », « un segment satirique sur cette actu », « fais parler le porte-parole », « le micro-trottoir du jour », « la bible du JT », « pourquoi les gens ne reviennent pas », « conducteur du 20 h », « blague de titre façon Gorafi », « l'interview de l'expert bidon ». Ne fait PAS — le hook comme levier d'attention (viral-hooks), le découpage caméra (mise-en-scene), le prompt du modèle vidéo (higgsfield), le profil de jeu d'un personnage (higgsfield-acting), la fiction courte sans actualité (scenario-court), les algorithmes et specs des réseaux (social-platforms).
---

# JT satirique vertical — écrire le segment, tenir le rendez-vous

Un segment = **une dépêche réelle, un présentateur, une chute**. Tout le reste (invité, micro-trottoir, *callback*) sert cette chute. Le spectateur revient pour la sensation « on a dit tout haut ce que l'info n'osait pas », pas pour l'info.

**Durée.** Le format tient de 60 à 90 s. Ce JT-ci publie une durée **fixe de 75 s, à ±5 s près** : le rendez-vous est une habitude, et une durée qui varie de 50 à 120 s détruit l'habitude. La fourchette 60-90 s sert à décider d'un format, pas à flotter d'un soir à l'autre.

## 1. Ordre de pensée imposé

1. **La dépêche.** Une seule actualité, vérifiée (source, date, un chiffre précis). Pas d'actu → pas de JT : c'est `scenario-court`.
2. **Qui est confortable dans l'histoire ?** Institution, promesse politique, marque, rhétorique. C'est la cible. Jamais un groupe, jamais une personne pour ce qu'elle est (lire `references/cibler-sans-blesser.md` dès que le sujet touche élection, religion, origine, santé, fait divers).
3. **Le point** (Kalan, Daily Show) : la phrase sérieuse que la blague défend, souvent la partie la moins drôle. Écris-la en une ligne. Sans point, la blague est une insulte.
4. **La prémisse** : la petite histoire qui approche le point sans le dire, pour laisser au spectateur le saut à faire.
5. **La mécanique** : choisis-la dans les 8 de `references/mecaniques-blague-actu.md` (moitié vraie + torsion, hypocrisie, *reductio*, euphémisme défendu, absurdité calme, comparaison dégradante, titre musical, *callback*). Une mécanique dominante par segment, une seconde pour le bloc variable.
6. **Dix titres, trois gardés.** Écris 10 blagues de titre sur la dépêche, barre la première venue et tout ce que deux versions partagent, garde 3 (méthode varghq video-script et newsjack). Le titre retenu ouvre la vidéo.
7. **La grille** : place chaque bloc à la seconde avec `references/grille-segment.md` (§ 1 : la grille de 75 s, bloc par bloc, avec l'origine de chaque règle).
8. **L'escalade** : les trois observations montent (accessible → pointue → surprenante). Test du réordonnancement : si on peut les permuter sans perte, tu as listé, pas escaladé.
9. **La subversion** : la chute casse le motif installé, mot drôle en fin de phrase, coupe immédiate après.
10. **Le personnage inchangé** : même présentateur, même voix, même plateau, même rituel. Vérifie contre `references/show-bible.md`.
11. **Les tests** : paragraphe isolé, nom changé, muet, loi de Poe, plafond de synchro labiale sur chaque réplique en caméra (≤ 6 mots en caméra, ≤ 12 mots par insert en voix off — `mise-en-scene/references/couverture-dialogue.md` §4). Puis le conducteur (§ 11).
12. **Laisser reposer** : un titre drôle à 9 h l'est rarement encore 3 jours plus tard (Bender, Onion). Pour un quotidien, écris la banque d'évergreens le lundi, l'actu du jour le jour même.

## 2. Ce skill / skill voisin

| Besoin | Qui s'en charge |
|---|---|
| Les 8 leviers d'attention des 3 premières secondes, choisir l'image d'ouverture | `viral-hooks` — ici on lui fournit la blague de titre, lui décide comment elle frappe |
| Valeurs de plan, axes, raccords, découpage caméra du plateau et du duplex | `mise-en-scene` |
| Le prompt exact Seedance / Veo / Kling du plateau, de l'invité, du passant | `higgsfield` — à partir du conducteur produit ici |
| Le profil de jeu réutilisable d'un personnage (regard, tempo, micro-expressions, ce que la voix fait sous la phrase) | `higgsfield-acting` — **la frontière** : ici on fixe ce que le personnage *fait* et ce qu'il ne fait *jamais* dans le segment ; lui en écrit le profil de jeu réutilisable d'une génération à l'autre |
| Fiches d'assets (présentateur, plateau, rue) et prompt multi-segments | `commercial-pipeline` |
| Une fiction courte sans dépêche réelle (sketch, saynète, mini-film) | `scenario-court` |
| Algorithme, heure de publication, légende, hashtags, specs par réseau | `social-platforms` — **pas la zone sûre** : elle vient de la règle maison (§ 3) |
| La place de ces formats dans une bibliothèque de formats publicitaires | `creative-strategy` : le micro-trottoir y est le format **Street Interview**, l'écran partagé le format **Split Screen** (`references/visual-formats.md`) |
| Décortiquer un JT satirique existant (Gorafi TV, Weekend Update, un concurrent) | `video-teardown` |
| Relire et durcir le texte dit | `copychief` |

## 3. Contraintes IA qui dictent l'écriture

| Contrainte modèle | Conséquence sur le texte |
|---|---|
| Génération de 4 à 15 s par plan selon le modèle, viser 8-12 s | Un bloc de la grille = 1 à 3 générations ; l'invité (20 s) = 2 plans de 10 s, coupe sur la question |
| Plafond de synchro labiale par plan | Chaque réplique en caméra ≤ 6 mots, ≤ 12 mots par insert en voix off (`mise-en-scene/references/couverture-dialogue.md` §4). Les observations longues passent en voix off du présentateur sur un insert, un insert par phrase |
| Débit : **2,5 mots/s en anglais** (varghq ai-parody-video — valeur à garder pour prompter un modèle anglophone) ; **4,2 mots/s en français parlé vite** + pauses 0,18 s (mesure maison, fiche `methode-video-motion-validee`) | Réplique en caméra : 6 mots ≈ 1,5 s en français, 2,4 s en anglais. Budget d'un segment français : 4,2 mots/s × la durée **de parole**. Sur 75 s dont 25 % de silence et de réactions, le plafond est ≈ 236 mots dits (75 × 0,75 × 4,2) ; sur 60 s, ≈ 190 mots dits. Un budget calculé sans retirer le silence est faux |
| Un seul déplacement du sujet et un seul de la caméra par plan (*One-Move Rule*, `higgsfield-camera` ; formulation d'origine vargHQ `varg-video-prompting`, MIT) | Le présentateur fait un geste par phrase, pas trois ; la caméra pousse (*push-in*) ou reste fixe |
| Cohérence des personnages par image de référence | Un personnage = une image + une voix fixe (voice_id). Jamais de reclone « équivalent » |
| Pas de texte lisible dans le décor généré | Les modèles déforment les lettres : le texte se pose au montage (`viral-hooks`, liste « Avoid » : *precise on-screen text — add text in post*). Bandeau « DIRECT », *lower third*, titre, logo = **incrustations** (*overlay*) posées au montage |
| Zone sûre | 1080×1920 avec **~96 px rognés en haut et en bas** (règle maison `zone-sure-tiktok-snap`). Aucune incrustation dans ces bandes |
| Son diégétique seulement dans la génération | Fond de plateau et rue sans musique ; la respiration du public se pose au mix |
| Aucune chaîne, aucun logo, aucun présentateur réels | Le bandeau porte le nom du faux JT ; l'événement montré est impossible ou visiblement joué (varghq : une fausse info crédible n'est pas une parodie) |

Adaptation d'une règle TV classique : le « duplex » plateau/invité se fait en **plans alternés**, pas en *split-screen* généré (deux visages dans une image = deux visages instables) ; l'écran partagé est un montage de deux générations verticales recadrées côte à côte.

## 4. Les blocs : la règle qui ne se discute pas

Les durées à la seconde, ce qu'on voit, ce qu'on entend et l'origine de chaque règle sont dans `references/grille-segment.md` § 1. Ici, seulement ce qui ne se négocie pas :

| Bloc | Règle qui ne se discute pas |
|---|---|
| Amorce (0,5 s) | Action avant 0,5 s ; la première syllabe tombe sur la première image. Aucun carton, aucun générique |
| Titre-hook | Jamais « Bonsoir ». Titre **écrit** ≤ 8 mots (longueur de titre, faceless-channel) — **sauf le titre musical** (mécanique 7), seule forme où la longueur fait l'effet : il plafonne alors à 14 mots, n'est jamais dit en caméra et sert d'incrustation. Titre **dit en caméra** ≤ 6 mots dans tous les cas (plafond de synchro labiale) — deux plafonds différents, ne pas les confondre. Le sujet est nommé, le *comment* est caché |
| Fait réel | Style dépêche, zéro adjectif, zéro verbe d'opinion. Un chiffre précis, jamais rond (newsjack : le nombre précis lit comme vrai). Une phrase par insert |
| Trois observations | **Trois, jamais cinq** (Carson). Le 4ᵉ cran est réservé à la version de 90 s (`grille-segment.md` § 2 et § 5). Intensité croissante, une image nouvelle par observation, **deux plans par observation** : aucun plan d'observation ne dépasse 2,5 s |
| Bloc variable (20 s) | Une des quatre formes du § 6, différente de la veille |
| Voix tierce (12 s) | Au moins une voix autre que le présentateur dans chaque épisode (Carvell, Last Week Tonight) : micro-trottoir par défaut, invité réduit quand le micro-trottoir occupe déjà le bloc variable |
| Callback | Écho du titre avec un sens nouveau, pas une répétition. Pas de bon *callback* → aucun (Carson) |
| Bouton | Une phrase, mot drôle à la fin, coupe sur la dernière syllabe |
| Rituel de fin + CTA | Même formule chaque soir, un mot de teaser, incrustation fixe de l'agence hors segment |

Densité : une blague toutes les 4-5 s au plus ; le temps après la blague fait partie de la blague (Kalan : le public du Daily Show se plaignait de « trop de blagues »).

## 5. Choisir la dépêche du jour

| Critère | Oui | Non |
|---|---|---|
| Vérifiable | Source nommée, date, un chiffre | Capture sans origine, rumeur, « on dit que » |
| Quelqu'un est confortable | Une institution, une promesse, une marque, une rhétorique | Seulement des victimes, un malade, un enfant |
| Un mot ou un chiffre à tordre | Un euphémisme officiel, un indicateur changé, une promesse chiffrée | Un fait sans langage autour (un séisme, un score sportif brut) |
| Un pas suivant plausible | On devine ce que le pouvoir fera demain | L'histoire est close |
| Pas déjà épuisée | Les comptes d'actu l'ont relayée, personne n'a dit l'éléphant | Trois comptes satiriques ont déjà fait la même blague ce matin |
| Hors conflit d'intérêts | Aucun client de l'agence ni concurrent direct dedans | Un client ou son concurrent est la cible |

Deux dépêches à égalité : prendre celle qui a un **mot** à tordre plutôt qu'un chiffre — le mot nourrit l'invité (euphémisme défendu) et le *callback* ; le chiffre ne nourrit que le titre.

## 6. Le bloc variable (25-45 s) : quand choisir laquelle des quatre formes

| Forme | Quand la choisir |
|---|---|
| Invité fictif | La dépêche contient un euphémisme ou une justification officielle — il y a un **mot** à défendre |
| Direct impossible | La dépêche est un événement, pas un discours — il y a un **lieu** à montrer |
| Micro-trottoir étendu | La dépêche touche la vie quotidienne (transport, prix, école) : ce sont les gens qui ont la meilleure réplique. Le bloc de voix tierce devient alors un invité réduit (2 échanges + chute, 12 s) |
| Billet du présentateur | La dépêche est un format médiatique, une appli, une tendance — il n'y a ni mot officiel, ni lieu, ni usager |

Au moins trois formes différentes par semaine. Le billet est la seule forme sans voix tierce dans le bloc variable : ne jamais l'enchaîner deux jours de suite. Durées, découpage et règles propres à chaque forme : `references/grille-segment.md` § 6 et 8 bis.

## 7. Les personnages : le casting verrouillé

Ce qui compte ici est ce qu'on verrouille avant la première génération. Les fiches complètes (ce qu'il veut, sa faille, son registre, son tic, ce qu'il ne fait jamais) sont dans `references/show-bible.md` § 1 ; le profil de jeu réutilisable, dans `higgsfield-acting`.

| Personnage | Casting IA verrouillé |
|---|---|
| Présentateur | 1 image de référence + 1 voice_id, verrouillés à vie du JT ; banque de 20-30 plans neutres réutilisés chaque soir |
| Invité fictif | 1 image par type (porte-parole, expert, candidat), même costume, nom inventé ; seul le *lower third* change de titre |
| Reporter de terrain | Image de dos ou de profil, hors champ le plus souvent ; une seule phrase fixe d'annonce de lieu (≤ 6 mots) |
| Passant normal | Visage neuf, ou récurrent une fois par semaine |
| Passant absurde | Visage neuf chaque fois |
| Passant trop sincère | Récurrent possible quand le sujet revient |
| Décors | 4 à 6 images de référence pour la vie du JT : plateau, duplex, rue, « archives » (picsart) |

## 8. Fidélisation : les six leviers et ce qu'on en mesure

| Levier | Règle de l'épisode |
|---|---|
| Rendez-vous | Même heure, même durée (75 s ±5 s), même première image |
| Personnage | Même visage, même voix, même faille, s'adresse à « vous » |
| Série | Levier *series psychology* de `viral-hooks`, appliqué au JT : numéro ou date dans le titre, emballage inchangé, nouvelle curiosité |
| Boucle « à demain » | Un mot de teaser dans le rituel ; honoré dans les 10 premières secondes du lendemain |
| Participation | Les commentaires deviennent le micro-trottoir du lendemain ; sujet suivant demandé en légende |
| Variété dans la constance | Six chutes en rotation, bloc variable qui change de forme |

Ce que chaque levier produit comme signal, et comment le lire, est dans `references/show-bible.md` § 4 et 5.

**Le « taux de retour » n'existe sur aucune plateforme** : ni TikTok, ni Instagram, ni YouTube n'exposent « combien de spectateurs de l'épisode N-1 ont vu l'épisode N ». Il se reconstitue à la main, sur un tableur, une ligne par épisode :

1. Relever sur chaque épisode : vues, spectateurs uniques si la plateforme les donne, abonnés gagnés, rétention à la 1ʳᵉ seconde, liste des pseudos qui ont commenté.
2. **Indicateur praticable n° 1 — recoupement des commentateurs** : part des pseudos de l'épisode N déjà présents sur N-1. Un habitué commente ; cette part monte quand le rendez-vous prend. Relevé manuel, 2 minutes par épisode.
3. **Indicateur n° 2 — rétention à la 1ʳᵉ seconde** : un habitué ne scrolle pas sur la première image qu'il reconnaît. Si elle stagne pendant que les vues montent, l'audience est neuve chaque soir : bon hook, pas de rendez-vous.
4. **Indicateur n° 3 — abonnés gagnés par épisode** : des vues sans abonnés = bon hook, mauvais personnage.
5. Lire les trois **en tendance sur 7 épisodes**, jamais épisode par épisode. Fixer les seuils sur les données du compte après 10 épisodes (ordre de grandeur, non sourcé).

Production tenable : seul le présentateur parlant (3-5 générations de 5-10 s) et le texte changent chaque jour ; plateau, duplex, rue, générique, rituel viennent de la banque.

## 9. Méthode de la salle d'écriture, compressée pour une personne et une IA

| Étape | Salle réelle | Ta version quotidienne |
|---|---|---|
| Point → prémisse → structure → escalade → subversion | Kalan, Daily Show | Le § 1 ; écris le point avant toute blague |
| 50 blagues pitchées pour 1 gardée | Amira, Daily Show (15-16 auteurs) | 10 titres par dépêche, 3 gardés, 1 ouvre |
| 600 titres évergreens → 100 en réunion | Gillis, The Onion | Une banque de 30 titres évergreens le lundi pour les jours sans actu |
| Attendre 3 jours avant de juger | Bender ; Dikkers : 10 blagues par jour | Les évergreens reposent ; l'actu du jour est jugée par le test du muet et le nom changé |
| « Trop de blagues » = défaut | Kalan | Une blague toutes les 4-5 s, pas plus |
| Arriver dernier oblige au neuf | Carvell | En vertical tu passes après les comptes d'actu et les mèmes : cherche l'éléphant ou l'extension logique que personne n'a dite |
| Segments qui reposent de la voix du présentateur | Carvell | Le bloc variable et la voix tierce sont obligatoires en alternance |
| Première partie fixe, seconde variable | Amira : « headline + chat », puis sketch, terrain ou micro-trottoir | Hook + fait + observations fixes ; le bloc 25-45 s change de forme chaque jour |
| Relecture par un second lecteur dur | bravegeek : « roast » par un second agent | Relis le conducteur en adversaire : pour chaque ligne, « qui est blessé ? » et « où est le mot drôle ? » |

## 10. Écrire pour la voix IA

| Règle | Pourquoi | Exemple |
|---|---|---|
| Nombres, heures et pourcentages en toutes lettres dans le texte dit | Le modèle lit « 20h14 » et « 97,4 % » de trois façons | « vingt heures quatorze », « quatre-vingt-dix-sept virgule quatre pour cent » |
| Noms propres écrits phonétiquement si le modèle les écorche | Un nom inventé peut se faire écorcher comme un vrai | « Vaubrenier » lu « vaubrenièr » avec le r final → réécrit « Vo-breu-nié » |
| Le nom de l'agence avec la virgule : « Di, You Agency » | Sans la virgule, la voix fusionne en « Daiyu » (règle maison) | Garder la prise où la relecture rend « Dee, You » |
| Une phrase coulante par bloc plutôt que trois hachées | ~0,7 s par point, ~0,5 s par virgule en synthèse vocale (faceless-channel) | « Décret publié ce matin : sous quinze minutes, un train est à l'heure. » |
| Aucune indication de jeu entre crochets dans le texte dit | Chaque balise jouée coûte ~1 s et casse le débit | Le ton va dans la colonne « Ce qu'on voit », pas dans le texte |
| Répliques en caméra ≤ 6 mots, verbe inclus ; ≤ 12 mots par insert en voix off | Plafond de synchro labiale, voir `mise-en-scene/references/couverture-dialogue.md` §4 | « Il avance sur son retard. » |
| Pas de fragment sans verbe en voix off | Règle maison : phrases complètes | « Ponctualité : quatre-vingt-un pour cent. » est admis seulement en style dépêche chiffré |
| Le mot drôle est le dernier mot prononcé avant la coupe | Le rire se pose sur la coupe | « …la pluie élargie. » |

Convention de comptage des mots : un nombre écrit en toutes lettres avec traits d'union compte pour un mot (« quatre-vingt-dix-sept » = 1), une élision compte pour un mot (« l'heure » = 1).

Relecture obligatoire : passer le texte en transcription et comparer mot à mot ; un nom ou un chiffre mal lu se corrige dans l'écriture, jamais par une rustine audio sur une réplique entière.

## 11. Standard de sortie

Livrer, dans cet ordre :

1. **En-tête** : date de l'épisode, numéro, dépêche source (URL ou média + date), point en une ligne, cible en un mot (institution / promesse / marque / rhétorique).
2. **Trois titres** gardés sur dix, celui retenu en premier.
3. **Le conducteur** : table `Temps | Qui | Texte dit | Ce qu'on voit | Mécanique de la blague | Source du fait réel` — une ligne par plan — sauf les échanges alternés, où une ligne porte la paire question/réponse et le découpage se fait au montage dans deux générations de 10 s. Nombres, heures et sigles écrits comme ils se disent.
4. **La fiche casting** : personnages de l'épisode avec image de référence et voice_id, et la mention « inchangé » ou « nouveau » pour chacun.
5. **Les incrustations** : liste des textes posés au montage (titre, bandeau, *lower third*, CTA) avec leur fenêtre temporelle.
6. **La forme de chute** utilisée (l'une des six de la bible) et les deux dernières utilisées, pour prouver la rotation.
7. **La ligne de vérification** : durée totale calculée, mots dits comptés contre le plafond, plus long plan d'observation, plus longue réplique en caméra, plus long insert en voix off.

## 12. Exemple travaillé A — bloc variable « invité fictif »

**Dépêche fictive** : « Le ministère des Transports crée le "quart d'heure de courtoisie" : un train arrivant moins de quinze minutes après l'horaire est désormais compté à l'heure. Ponctualité officielle annoncée : 97,4 %, contre 81 % la veille. »

Raisonnement : confortable dans l'histoire = le ministère (institution, pas une personne). Point = *changer la mesure n'est pas changer la chose mesurée*. Prémisse = suivre le nouveau mot jusqu'au bout de la journée d'un voyageur. Mécanique dominante = *reductio* ; invité = euphémisme défendu ; voix tierce = personnage honnête ; *callback* = l'heure du JT lui-même.

Les dix titres, et pourquoi sept tombent :

| # | Titre | Sort | Raison |
|---|---|---|---|
| 1 | « Les trains ne seront plus jamais en retard, par décret » | Barré | Première idée venue ; « par décret » explique la blague |
| 2 | « Le ministère invente le quart d'heure de courtoisie » | Barré | C'est la dépêche, pas une torsion |
| 3 | « Un train en retard n'est plus en retard. » | **Gardé, retenu** | 8 mots : au plafond du titre écrit, trop long en caméra — le présentateur en dit la version courte, « Le retard n'existe plus. » (4 mots) ; contradiction interne lisible muette, le *comment* caché |
| 4 | « 97,4 % de trains à l'heure, 16,4 % par décret » | **Gardé** | Chiffre héros ; sert d'observation 1 si le titre 3 ouvre |
| 5 | « L'opérateur national… » (nom réel) | Barré | Nom réel d'opérateur : interdit, la dépêche est fictive |
| 6 | « Le Ministère Des Transports Salue La Ponctualité Des Trains Arrivés En Retard » | **Gardé** | Titre musical (mécanique 7) : 12 mots, au-dessus du plafond ordinaire de 8, admis à ce titre et plafonné à 14 ; jamais dit en caméra, incrustation seule |
| 7 | « Les voyageurs en retard au travail invoquent la courtoisie » | Barré | Partage « courtoisie » avec le 2 ; vise les voyageurs, pas l'institution |
| 8 | « Quinze minutes de retard, c'est désormais de l'avance » | Barré | Même torsion que le 3, moins courte |
| 9 | « Le ministère étudie le quart d'heure de courtoisie pour les avions » | Barré | *Reductio* : c'est une observation, pas un titre |
| 10 | « Un décret rend les montres facultatives » | Barré | Lien trop obscur sans le fait réel |

Retenu : « Un train en retard n'est plus en retard. » Le 4 devient l'observation 1, le 6 devient l'incrustation du fait réel.

| Temps | Qui | Texte dit | Ce qu'on voit | Mécanique | Source du fait |
|---|---|---|---|---|---|
| 0,0-0,5 | Présentateur | (première syllabe sur l'image 1) | Plateau, il relève la tête de ses feuilles ; incrustation DIRECT déjà posée | Signal « c'est une info » | — |
| 0,5-4 | Présentateur | « Le retard n'existe plus. » (4) | Plan serré ; titre en incrustation : UN TRAIN EN RETARD N'EST PLUS EN RETARD | Moitié vraie + torsion ; l'incrustation porte les 8 mots, la bouche n'en dit que 4 | Dépêche fictive |
| 4-7 | Voix off | « Décret publié ce matin : sous quinze minutes, un train est à l'heure. » (12) | Insert : quai, panneau d'affichage | Fait, style dépêche | Dépêche fictive |
| 7-10 | Voix off | « Ponctualité : quatre-vingt-dix-sept virgule quatre pour cent. Hier : quatre-vingt-un pour cent. » (10) | Insert : horloge de gare à huit heures quatorze | Fait, chiffre précis | Dépêche fictive |
| 10-12,5 | Voix off | « Seize points gagnés sans qu'un seul train bouge. » (8) | Insert : tableau des départs, tout en vert | Observation 1a : hypocrisie | — |
| 12,5-15 | Présentateur | « Première réforme à coût zéro. » (5) | Plan présentateur, sourcil levé, *push-in* léger | Observation 1b : la chute de l'observation en caméra | — |
| 15-17,5 | Voix off | « Le ministère étudie l'extension aux trains annulés. » (7) | Insert : quai vide, panneau « à l'heure » | Observation 2a : *reductio* | — |
| 17,5-20 | Présentateur | « Des trains à fréquence zéro. » (5) | Plan présentateur, il tourne une feuille | Observation 2b | — |
| 20-22,5 | Voix off | « Votre retard au bureau suit la même règle. » (8) | Insert : porte de bureau, badge | Observation 3a : *reductio* portée au spectateur | — |
| 22,5-25 | Présentateur | « Votre retard devient une présence élargie. » (6) | Plan serré, il pose son stylo | Observation 3b | — |
| 25-30 | Présentateur / Porte-parole | P : « Huit heures quatorze, c'est l'heure ? » (5) — PP : « C'est la fenêtre de ponctualité. » (5) | Plans alternés ; *lower third* « Porte-parole du ministère » (type inventé, sans nom réel) | Euphémisme | — |
| 30-35 | Présentateur / Porte-parole | P : « Il est en retard. » (4) — PP : « Il avance sur son retard. » (5) | Plan porte-parole, visage neutre, aucune gêne | Euphémisme défendu | — |
| 35-40 | Présentateur / Porte-parole | P : « Donc quatorze minutes, c'est à l'heure. » (6) — PP : « Quatorze minutes, c'est un café. » (5) | Alternés ; le présentateur attend un temps avant la relance | *Concession creep* | — |
| 40-45 | Porte-parole | « Nous appelons ça un service. » (5) | Plan fixe porte-parole, léger sourire sincère | Absurdité dite calmement | — |
| 45-49 | Passante 1 | « Quinze minutes, ça va. Après, non. » (6) | Rue, micro tendu hors champ, plan poitrine | Réponse normale | — |
| 49-53 | Passant 2 | « J'arrive en retard partout. Enfin reconnu. » (6) | Rue, même axe, autre personnage | Réponse absurde (logique poussée) | — |
| 53-57 | Passant 3 | « La voiture, depuis deux mille dix-neuf. » (6) | Rue, regard caméra, pas de sourire | Trop sincère (personnage honnête) | — |
| 57-61 | Présentateur, voix off | « Ce journal, prévu à vingt heures, est parfaitement à l'heure. » (10) | Insert : l'horloge du plateau — le présentateur n'est pas à l'image, aucune synchro à tenir | *Callback*, premier temps | — |
| 61-64 | Présentateur, voix off | « Il est vingt heures quatorze. » (5) | Insert : le quai, l'horloge de gare | *Callback*, sens nouveau | — |
| 64-69 | Présentateur | « Demain : la pluie élargie. » (4) | Plan fixe, regard caméra, coupe sur « élargie » | Bouton (mot drôle à la fin) | — |
| 69-72 | Présentateur | « C'était le Vingt Heures Quatorze. » (5) | Même plan chaque soir | Rituel | — |
| 72-75 | Présentateur | « À demain, à l'heure élargie. » (5) | Incrustation fixe « lien en bio » en bas, hors des 96 px rognés | Rituel + CTA | — |

**Ligne de vérification.** Durée : 0,5 + 3,5 + 3 + 3 + 2,5×6 + 5×4 + 4×3 + 4 + 3 + 5 + 3 + 3 = **75,0 s**, soit la durée fixe du JT. Mots dits : 147, pour un plafond de 236 (75 s × 0,75 × 4,2 mots/s) — le reste est du silence, des réactions et les temps après chute. Plus longue réplique en caméra : 6 mots (« Donc quatorze minutes, c'est à l'heure. » et « Votre retard devient une présence élargie. ») — **plafond de 6 mots en caméra respecté**. Plus long insert en voix off : 12 mots (« Décret publié ce matin : sous quinze minutes, un train est à l'heure. ») — **plafond de 12 mots par insert respecté**. Plus long plan d'observation : 2,5 s. Aucun groupe visé, aucune citation attribuable à une personne réelle, un *callback*, un bouton, quatre voix autres que le présentateur (le porte-parole et les trois passants). Test du muet : titre en incrustation + horloge à huit heures quatorze + quai = le sujet se comprend sans son. Forme de chute : aveu calme.

## 13. Exemple travaillé B — bloc variable « direct impossible »

**Dépêche fictive** : « Le conseil municipal vote trois cents poubelles "à tri intuitif" : plus de couleurs, plus d'étiquettes, le tri est laissé à l'appréciation du passant. Taux de tri correct annoncé : 100 %. »

Raisonnement : confortable = la mairie. Point = *supprimer la consigne et appeler ça de la confiance*. Prémisse = la place du marché le lendemain matin. Mécanique dominante = titre musical (Gorafi) pour le hook, hypocrisie puis *reductio* dans les observations ; bloc variable = direct impossible (la dépêche est un **lieu**, pas un discours) ; voix tierce = micro-trottoir ; forme de chute = absurdité procédurale (différente de l'épisode A, rotation respectée).

Trois titres gardés : (1) retenu — « Trois Cents Poubelles Neuves, Aucune Étiquette, Aucune Erreur » (8 mots écrits, titre musical, mot drôle en dernier) ; (2) « Cent pour cent de tri correct, zéro consigne » (chiffre héros, sert d'observation 1) ; (3) « La mairie fait confiance à vos déchets » (gardé pour la banque).

| Temps | Qui | Texte dit | Ce qu'on voit | Mécanique | Source du fait |
|---|---|---|---|---|---|
| 0,0-0,5 | Présentateur | (première syllabe sur l'image 1) | Plateau, il repose une feuille ; incrustation DIRECT déjà posée | Signal | — |
| 0,5-4 | Présentateur | « Le tri devient une intuition. » (5) | Plan serré ; titre en incrustation : TROIS CENTS POUBELLES NEUVES, AUCUNE ÉTIQUETTE, AUCUNE ERREUR | Titre musical ; l'incrustation porte les 8 mots, la bouche en dit 5 | Dépêche fictive |
| 4-7 | Voix off | « Trois cents poubelles sans couleur et sans étiquette, votées hier soir. » (11) | Insert : une poubelle grise neuve sur un trottoir | Fait, style dépêche | Dépêche fictive |
| 7-10 | Voix off | « Taux de tri annoncé : cent pour cent. » (7) | Insert : procès-verbal flouté, tampon de la mairie | Fait, chiffre | Dépêche fictive |
| 10-12,5 | Voix off | « Personne ne peut se tromper sans consigne. » (7) | Insert : deux poubelles identiques côte à côte | Observation 1a : hypocrisie | — |
| 12,5-15 | Présentateur | « Le tri est donc parfait. » (5) | Plan présentateur, immobile | Observation 1b | — |
| 15-17,5 | Voix off | « La mairie étudie les passages piétons intuitifs. » (7) | Insert : passage piéton repeint en gris | Observation 2a : *reductio* | — |
| 17,5-20 | Présentateur | « Traversez quand vous le sentez. » (5) | Plan présentateur, un geste de la main | Observation 2b | — |
| 20-22,5 | Voix off | « Votre poubelle de cuisine applique déjà la réforme. » (8) | Insert : sac poubelle unique sous un évier | Observation 3a : *reductio* portée au spectateur | — |
| 22,5-25 | Présentateur | « Vous triiez sans le savoir. » (5) | Plan serré, il pose son stylo | Observation 3b | — |
| 25-28 | Reporter, hors champ | « Ici la place du marché, où la réforme s'applique. » (9) | **Un seul plan continu commence** : plan large de la place, bandeau DIRECT et *lower third* posés au montage | Direct impossible, mise en routine | — |
| 28-35 | Reporter, hors champ | « Les passants déposent, repartent. Aucune couleur, aucune hésitation. » (8) | Le même plan, rien d'anormal ; une poubelle grise au centre du cadre | Routine tenue jusqu'à ~60 % de la durée du bloc | — |
| 35-35,5 | — | (silence) | La poubelle recrache un carton, qui retombe sur le pavé | L'impossible entre dans le cadre | — |
| 35,5-40 | Reporter, à l'image | « La poubelle rend les déchets. » (5) | Le plan ne coupe pas ; il entre dans le cadre, le carton est à ses pieds | Réaction au plafond de synchro labiale | — |
| 40-42 | Reporter, à l'image | « Vingt ans. Jamais vu ça. » (5) | Le plan tient, voix basse | Dernière phrase basse (varghq) | — |
| 42-45 | — | (aucun mot) | Plan de la place, ambiance seule : marché, roulettes, un carton qui glisse | Respiration après le choc (2,5-4 s, ambiance seule) | — |
| 45-49 | Passant 1 | « Au moins je ne réfléchis plus. » (6) | Rue, micro hors champ, plan poitrine | Réponse normale | — |
| 49-53 | Passante 2 | « Je mets tout dans une seule. » (6) | Rue, même axe | Réponse absurde (logique poussée) | — |
| 53-57 | Passant 3 | « Je brûle mon carton depuis toujours. » (6) | Rue, regard caméra, pas de sourire | Trop sincère (personnage honnête) | — |
| 57-61 | Présentateur, voix off | « La place sera nettoyée par la commission du tri. » (9) | Insert : la place, cartons au sol | *Callback*, premier temps | — |
| 61-64 | Présentateur, voix off | « Elle se réunit quand elle le sent. » (7) | Insert : une salle de réunion vide | *Callback*, sens nouveau | — |
| 64-69 | Présentateur | « Demain : les élections intuitives. » (4) | Plan fixe, regard caméra, coupe sur « intuitives » | Bouton | — |
| 69-72 | Présentateur | « C'était le Vingt Heures Quatorze. » (5) | Même plan chaque soir | Rituel | — |
| 72-75 | Présentateur | « À demain, si vous le sentez. » (6) | Incrustation fixe « lien en bio », hors des 96 px rognés | Rituel + CTA | — |

**Ligne de vérification.** Durée : 0,5 + 3,5 + 3 + 3 + 2,5×6 + (3 + 7 + 0,5 + 4,5 + 2) + 3 + 4×3 + 4 + 3 + 5 + 3 + 3 = **75,0 s**. Le bloc du direct tient 17 s (25-42 s) et l'impossible entre à 35 s, soit à 59 % de ses 17 s — la valeur mesurée par varghq. Mots dits : 136 pour un plafond de 236. Plus longue réplique en caméra : 6 mots — **respecté**. Plus long insert en voix off : 11 mots — **respecté**. Plus long plan d'observation : 2,5 s. L'événement est **physiquement impossible** (une poubelle qui recrache), condition non négociable du direct : un événement plausible dans un habillage de direct serait une fausse info, pas une parodie. Aucun nom, logo ni présentateur de chaîne réelle. Forme de chute : absurdité procédurale.

## 14. Registre des épisodes (à tenir dans la bible)

| Épisode | Date | Dépêche (source) | Cible | Mécanique du titre | Bloc variable | Forme de chute | Voix tierces | Commentaires repris |
|---|---|---|---|---|---|---|---|---|
| A | — | quart d'heure de courtoisie (fictive) | institution | moitié vraie + torsion | invité fictif | aveu calme | 4 | 0 |
| B | — | poubelles à tri intuitif (fictive) | institution | titre musical | direct impossible | absurdité procédurale | 4 | 0 |

Avant d'écrire l'épisode N, lire les lignes N-1 à N-4 : la chute et le bloc variable de ce soir doivent différer de la veille ; aucune forme de chute plus de deux fois sur les cinq dernières lignes.

## 15. Checklist avant livraison

- [ ] Dépêche réelle vérifiée : source, date, chiffre exact (pour un exemple de travail, marquée « fictive »)
- [ ] Nom de chaque personnage inventé passé dans un moteur de recherche : aucun homonyme dans les médias, aucun journaliste, aucun présentateur, aucun sportif, aucun dirigeant connu
- [ ] Titre écrit ≤ 8 mots — **sauf titre musical** (mécanique 7), plafonné à 14 mots et jamais dit en caméra ; dit en caméra en ≤ 6 mots dans tous les cas ; sujet nommé, aucun « Bonsoir », aucun générique avant le premier mot
- [ ] Cible = institution, promesse, marque ou rhétorique ; aucune appartenance, aucun physique, aucune santé, aucune famille
- [ ] Test du nom changé : la blague tient si on remplace la personne par son poste
- [ ] Test du paragraphe isolé : aucun plan de 5 s, partagé seul, ne passe pour un préjugé sincère
- [ ] Loi de Poe : escalade au-delà du plausible ou contradiction interne visible — la satire se reconnaît hors contexte, sans casser le personnage
- [ ] Aucune fausse déclaration crédible mise dans la bouche d'une personne réelle ; l'invité est un type inventé, nom inventé, voix non clonée d'un vrai
- [ ] Trois observations croissantes, deux plans chacune ; test du réordonnancement réussi ; le 4ᵉ cran seulement en version 90 s
- [ ] Un *callback* (ou aucun si forcé) ; un bouton ; coupe sur la dernière syllabe
- [ ] Une blague toutes les 4-5 s au plus
- [ ] Répliques en caméra ≤ 6 mots, inserts en voix off ≤ 12 mots ; voix off au débit français 4,2 mots/s avec pauses 0,18 s
- [ ] Mots dits comptés et comparés au plafond : durée × 0,75 × 4,2
- [ ] Nombres, heures et pourcentages écrits en toutes lettres dans la colonne « Texte dit »
- [ ] Un plan par phrase, aucun plan > 2,5 s sur les observations (faceless-channel : au-delà, ça lit comme un diaporama)
- [ ] Somme des durées du conducteur = durée annoncée, recalculée ligne à ligne
- [ ] Au moins une voix autre que le présentateur
- [ ] Personnage inchangé : même image de référence, même voice_id, même plateau, même rituel d'ouverture et de fin
- [ ] Aucun logo, nom de chaîne ou présentateur réels ; bandeau au nom du faux JT
- [ ] Forme de chute différente de la veille, pas plus de deux fois sur cinq épisodes
- [ ] CTA de l'agence hors segment : incrustation fixe en fin + lien en bio, jamais dans le texte des blagues
- [ ] Test du muet : titre en incrustation + première image = le sujet se comprend sans le son

## 16. Anti-patterns

| Anti-pattern | Pourquoi ça tue le segment | Correction |
|---|---|---|
| « Bonsoir à tous, bienvenue dans… » | 3 s sans information ; le spectateur est parti avant la dépêche | Première syllabe = début de la blague de titre |
| Expliquer la blague (« parce qu'en fait… ») | Le spectateur n'a plus de saut à faire ; jwynia : sur-explication = rire tué | Couper juste avant l'articulation complète ; finir sur l'image |
| 5 sujets en 60 s | Aucune escalade possible, aucun *callback* possible | Un sujet par épisode ; les autres vont dans la banque |
| Blague sur le physique, la voix, l'âge, la santé | Ce n'est plus une satire du pouvoir, c'est une insulte ; test du nom changé échoué | Viser l'acte, la promesse, le mot choisi |
| Sujet sensible traité par le groupe | Signalement avant la première vue ; règle maison du 10/11 | Viser la promesse politique ou l'institution ; chute vers l'inclusion |
| L'invité qui se sait ridicule (« bon, entre nous… ») | La satire s'effondre en aveu, le pouvoir ne se condamne plus lui-même | L'invité défend l'euphémisme comme plus exact que le fait |
| Le présentateur qui éditorialise (« c'est scandaleux ») | Il fait le travail du spectateur à sa place | Il restitue le fait brut et attend |
| Insert d'archive crédible d'une vraie personne avec une fausse phrase | Passe pour une vraie info ; interdit par la règle de la parodie évidente | Type inventé, plateau visiblement fictif, événement impossible |
| Nom de personnage qui ressemble à un nom existant | Un homonyme dans les médias transforme la satire en attaque personnelle et en risque juridique | Vérifier le nom dans un moteur de recherche avant de le verrouiller dans la bible |
| *Callback* forcé | Pire qu'aucun *callback* (Carson) | Aller droit au bouton |
| Sarcasme comme ressort principal | Sarcasme = épice, ironie = structure (murage, idée reformulée) | Choisir une mécanique structurée du § 4 |
| Présentateur ou voix qui change d'un épisode à l'autre | La relation parasociale ne se construit que par exposition répétée au même visage et au même ton | Un voice_id, une image de référence, verrouillés dans la bible |
| Durée qui flotte de 50 à 120 s | L'habitude se déclenche par le contexte : une durée variable n'en est plus un | 75 s ±5 s, chaque soir |
| Pub de l'agence dans le segment | Casse le personnage et la promesse ; le spectateur sent le piège | Incrustation fixe de fin + lien en bio, hors des blagues |
| Dialogue de 15 mots dans un plan de 5 s | Le modèle désynchronise, la voix accélère | ≤ 6 mots en caméra ; le reste en voix off sur insert |
| Générique de 5 s avant le premier mot | Règle maison : action avant 0,5 s | Générique = 1-2 s **après** le titre-hook, ou intégré au rituel de fin |
| Texte écrit dans le décor généré | Les modèles déforment les lettres d'une image à l'autre (`viral-hooks`) | Toute mention lisible est une incrustation posée au montage |
