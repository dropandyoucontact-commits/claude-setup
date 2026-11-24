# Show bible d'un JT satirique quotidien, personnages et fidélisation

À lire avant le premier épisode (remplir la bible une fois), quand un personnage dérive, quand les gens ne reviennent pas, ou quand le rythme de production ne tient plus.

## 1. Les personnages

### Le présentateur

| Champ | Ce qu'on fixe | Exemple (à remplacer) |
|---|---|---|
| Nom, âge, métier d'avant | Une ligne, **nom vérifié dans un moteur de recherche avant d'être verrouillé** (voir la règle sous la table) | « Rémi Vaubrenier, 48 ans, ancien présentateur météo d'une chaîne régionale fictive » |
| Ce qu'il veut | Faire du vrai journalisme | Il lit les dépêches comme si elles allaient enfin être sérieuses |
| Sa faille | Il y croit encore | Chaque soir la dépêche le déçoit ; il ne s'énerve jamais, il constate |
| Angle moral | Idéaliste déçu, pas nihiliste | Colbert (skill sethmblack) : l'engagement total dans le personnage |
| Voix | Un voice_id, un réglage, verrouillés | Débit : 2,5 mots/s en anglais, **4,2 mots/s en français parlé vite** (mesure maison, fiche `methode-video-motion-validee`) en caméra comme en voix off ; jamais de reclone « équivalent » (règle maison : un reclone depuis une autre source n'est pas la même voix) |
| Tic | Un seul geste, un seul mot | Il pose son stylo avant la troisième observation ; il dit « précisons » avant le fait réel |
| Posture | Plan poitrine, buste droit, feuilles à plat | Un geste par phrase, pas trois (contrainte IA : 1 mouvement sujet par plan) |
| Ce qu'il ne fait jamais | Rire de ses blagues, éditorialiser, dire « Bonsoir », regarder ailleurs que la caméra ou l'invité, s'excuser | Le *straight man* (skill `collaborative-straight-man`, sethmblack) : digne, précis, ne craque jamais ; ses réactions mesurées sont la blague |
| Ouverture fixe | Aucune formule : la première syllabe est le titre | — |
| Fermeture fixe | Une formule, 3-6 s, identique chaque soir | « C'était le Vingt Heures Quatorze. À demain, à l'heure élargie. » |

**Règle du nom (bloquante).** Tout nom de personnage — présentateur, invité, institut, opérateur, ville, nom du JT — se vérifie dans un moteur de recherche **avant** d'être verrouillé dans la bible, et le relevé s'écrit à côté du nom (date de la recherche, ce qui est sorti). Rejeter le nom dès qu'un journaliste, un présentateur, un dirigeant, un sportif ou un élu le porte, même ancien, même régional : la satire deviendrait une attaque personnelle. Rejeter aussi les quasi-homonymes (une lettre d'écart avec un nom connu). Un nom qui ne renvoie aucun résultat exact est le bon. « Rémi Vaubrenier » a été retenu sur ce critère (recherche du 23/11/2026 : aucun résultat exact, aucune personnalité des médias). Le nom retenu devient définitif : il ne se change pas plus que le visage ou la voix.

### L'invité fictif (le type « expert » qui défend l'indéfendable)

| Champ | Ce qu'on fixe |
|---|---|
| Trois types récurrents | Le porte-parole éternel (toutes les institutions), l'expert (un institut au nom inventé), le candidat (toutes les élections) |
| Ce qu'il protège | Une chose dite en une phrase, jamais dite à l'antenne (tekhne : la faiblesse cachée) |
| Ce qu'il croit sincèrement | Différent de ce qu'il protège : il s'est convaincu que l'institution a bien agi (tekhne : le vrai croyant, archétype le plus sûr pour les pièces courtes) |
| Registre | Un seul, tenu : glacial et précis, ou faussement transparent (« je vais être très clair avec vous »), ou pédagogue patient (« il faut distinguer deux choses ») — jamais deux à la fois. **Jamais la confidence complice** (« bon, entre nous… ») : c'est l'anti-pattern du § 7, l'invité ne se sait jamais ridicule |
| Courbe de confiance | Plate du début à la fin pour 20 s (tekhne : recommandé pour les pièces courtes) |
| Ce qu'il ne fait jamais | Réaliser qu'il a dit une absurdité ; s'énerver ; faire un clin d'œil |
| Casting IA | Une image de référence par type, une voix par type, le même costume ; le lower third change de titre, le visage ne change pas |

### Le reporter de terrain

| Champ | Ce qu'on fixe |
|---|---|
| Rôle | Tend le micro, annonce le lieu en ≤ 6 mots (plafond de synchro labiale), ne commente pas |
| Position | Toujours hors champ ou à l'épaule ; une image de référence de dos ou de profil |
| Phrase fixe | « Ici [lieu], où la réforme est déjà en vigueur. » |
| Variante « direct impossible » (varghq, fausse news en direct) | 17 s, un seul plan continu, bandeau DIRECT, le reporter parle en routine, l'événement impossible à ~60 % de la durée, dernière phrase sidérée et basse. L'événement doit être physiquement impossible, sinon c'est une fausse info |

### Le micro-trottoir

| Passant | Rôle | Casting |
|---|---|---|
| Normal | La réaction vraie du public | Visage neuf chaque jour ou récurrent : « la dame du marché » peut revenir une fois par semaine |
| Absurde | La logique du pouvoir poussée un cran par quelqu'un qui y croit | Visage neuf |
| Trop sincère | Le personnage honnête (Dikkers) : dit exactement ce qu'il pense, regard caméra | Un récurrent possible : « l'homme qui prend la voiture » revient quand le sujet est le transport |

Règle de rue : même rue, même lumière, même axe pour les trois (une image de référence de rue par saison). Les commentaires de la veille fournissent les répliques du lendemain (voir § 4).

### Casting IA, règles communes

- Un personnage = **une image de référence + une voix fixe**. L'image de référence est générée une fois, archivée, jamais régénérée « en mieux ».
- Le plateau = une image de référence (décor, lumière, logo fictif, position de la caméra) ; le duplex = une seconde ; la rue = une troisième. Quatre à six décors maximum (picsart : 4-6 décors récurrents sont un bon budget de départ).
- Les **incrustations** (*overlay*) — DIRECT, bandeau, *lower third*, titre, CTA — sont posées au montage, jamais générés : le texte généré dérive d'une image à l'autre.
- Si une voix ou un visage doit changer (modèle retiré, voix supprimée), l'épisode le dit : « nouveau présentateur », rituel de passation. Jamais un changement silencieux.

## 2. La bible en dix points (à remplir une fois, une page)

| # | Point | Ce qu'on écrit | Exemple (à remplacer) |
|---|---|---|---|
| 1 | Promesse émotionnelle | La sensation pour laquelle on revient, montrée au moins une fois par épisode (picsart) | « On a dit tout haut ce que l'info n'osait pas » |
| 2 | Heure et durée | Même heure de publication, **75 s à ±5 s près** (le format tient de 60 à 90 s ; ce JT-ci en choisit une seule, fixe) | 20 h 14 chaque soir, 75 s |
| 3 | Générique | 1-2 s, après le titre-hook ou dans le rituel de fin, jamais avant le premier mot | Logo fictif + trois notes, à 4 s |
| 4 | Rubriques fixes et leur ordre | Titre-hook / fait (2 inserts) / trois observations (2 plans chacune) / bloc variable, une des quatre formes (invité fictif, direct impossible, micro-trottoir étendu, billet) / voix tierce / callback / bouton / rituel | Première partie fixe, seconde variable (Amira : « headline + chat » puis sketch, terrain ou micro-trottoir) |
| 5 | Rituel d'ouverture | Aucune formule ; un geste fixe (il relève la tête) | — |
| 6 | Rituel de fin et slogan | Formule identique, 3-6 s, un mot de teaser | « À demain, à l'heure élargie. » |
| 7 | Décors récurrents | 4-6, une image de référence chacun | Plateau, duplex, rue, « archives » |
| 8 | Personnages récurrents | Présentateur + 3-4 secondaires, chacun avec image et voice_id (picsart : 3-4 voix secondaires) | Porte-parole, expert, reporter, l'homme qui prend la voiture |
| 9 | Les six formes de chute et leur rotation | Jamais la même deux jours de suite, pas plus de deux fois sur cinq épisodes (adapté de picsart) | Tableau § 3 |
| 10 | La pub de l'agence | Jamais dans le segment ; une incrustation fixe en fin (position, durée, texte), le lien en bio, une mention orale au plus une fois par semaine dans le rituel | Incrustation « lien en bio » 72-75 s, hors zone rognée |

Ajouter les interdits maison : vraie personne incarnée, logo de chaîne réelle, groupe comme cible, blague sur corps/santé/famille, ralenti, puce qui clignote, musique avant un geste du visiteur, whoosh aux coupes, bruitage par-dessus un dialogue.

## 3. Les six formes de chute

| Forme | Dernier temps | Exemple (dépêche des trains) |
|---|---|---|
| Aveu calme | L'invité dit la vérité sans s'en rendre compte | « Nous appelons ça un service. » (5) |
| Contradiction élégante | Deux mots qui s'annulent, dits sérieusement | « Il avance sur son retard. » (5) |
| Extension logique | La règle appliquée à un cas de trop | « Demain : la pluie élargie. » (4) |
| Retour au titre | Le callback porte la chute | « Il est vingt heures quatorze. » (5) |
| Le passant conclut | Le personnage honnête a le dernier mot | « La voiture, depuis deux mille dix-neuf. » (6) |
| Absurdité procédurale | La procédure remplace la réalité | « La commission des retards examinera. » (5) ; la précision — « elle se réunit avec quinze minutes de courtoisie » — passe en voix off sur un insert |

Rotation : note la forme de chaque épisode dans le registre ; avant d'écrire, regarde les quatre dernières. Un historique « aveu, retour au titre, aveu, passant » interdit aveu et passant ce soir.

## 4. Pourquoi on revient

| Levier | Ce que ça demande | Origine |
|---|---|---|
| Le rendez-vous | Même heure, même durée, même première image : l'habitude est déclenchée par le contexte, pas par une décision (Wood, cité dans le rapport : 43 % des actes quotidiens sont des habitudes) | Rapport D, § 3.5 |
| Le personnage | Même visage, même voix, même ton casual qui s'adresse à « vous », une faille visible : la relation parasociale naît de l'exposition répétée à la même persona | Rapport D (PSI) |
| La série | Numéro ou date dans le titre (« JT du 23 »), même emballage, nouvelle curiosité : « un autre épisode d'un truc que je connais » | viral-hooks (psychologie de série) |
| La boucle « à demain » | Le rituel de fin annonce un mot ; l'épisode suivant l'honore dans les 10 premières secondes | picsart : ouvrir sur la conséquence |
| La participation | Les commentaires deviennent le micro-trottoir du lendemain ; le commentateur cité revient voir ; demander le sujet suivant en légende | varghq : quand un épisode marche, citer la suite sous 48 h et demander la scène suivante ; 5 des 6 suites mesurées ont dépassé 100 k vues |
| La variété dans la constance | Six chutes qui tournent, le bloc variable qui change de forme | picsart (rotation des six formes de fin) ; Carvell : arriver après tout le monde oblige à apporter du neuf |
| La promesse tenue | La sensation du point 1 montrée au moins une fois, même un jour faible | picsart |

Mécanique concrète de la participation :
1. Soir J : légende « Quel sujet demain ? » ; lire les commentaires à J+1 matin.
2. Choisir trois commentaires (un normal, un absurde, un trop sincère) ; les réécrire en ≤ 6 mots, le plafond de synchro labiale ; les attribuer aux passants ; mentionner le pseudo dans la légende, jamais à l'antenne.
3. Épouser le sujet le plus demandé une fois par semaine, dire que c'est le public qui l'a choisi dans le rituel.

## 5. Ce qu'on mesure

| Mesure | Pourquoi elle compte | Lecture |
|---|---|---|
| Taux de vues complètes | Le bouton et le rituel sont-ils vus ? Si la chute est à 70 s et la courbe tombe à 50 s, l'invité est trop long | Comparer par bloc à la courbe de rétention, pas en moyenne |
| Taux de retour, **reconstitué à la main** : aucune plateforme n'expose « combien de spectateurs de l'épisode N-1 ont vu l'épisode N » | La seule mesure de la fidélisation ; les vues d'un épisode ne disent rien du rendez-vous | Trois indicateurs praticables, en tendance sur 7 épisodes : recoupement des pseudos qui commentent d'un épisode à l'autre, rétention à la 1ʳᵉ seconde, abonnés gagnés par épisode. Procédure détaillée : `SKILL.md` § 8 |
| Abonnés par épisode | Le coût d'acquisition organique du rendez-vous | Un épisode qui fait des vues sans abonnés a un bon hook et un mauvais personnage |
| Commentaires réutilisables | Carburant du micro-trottoir | ≥ 3 par épisode, sinon la légende ne pose pas la bonne question |
| Partages du plan isolé | Signal d'alerte : quel plan est partagé seul ? Est-il lisible hors contexte (test du paragraphe isolé) ? | Vérifier le plan le plus partagé chaque semaine |

Aucun seuil chiffré ici : fixer les objectifs après 10 épisodes sur les propres données du compte (ordre de grandeur, non sourcé). Les specs de publication et la lecture fine des métriques par réseau sont dans `social-platforms` ; la zone sûre, non — elle vient de la règle maison `zone-sure-tiktok-snap` (~96 px rognés en haut et en bas d'un 1080×1920).

## 6. Rythme de production tenable avec l'IA

| Élément | Fréquence de génération | Pourquoi |
|---|---|---|
| Banque de plans de plateau (présentateur neutre, relève la tête, pose le stylo, regarde l'horloge, écoute) | Une fois, 20-30 plans de 5-10 s, puis complétée par saison | Seul le texte change : on prend le plan « écoute » pendant l'invité, le plan « relève la tête » à 0 s |
| Présentateur parlant (synchro labiale) | Chaque jour, 3-5 générations de 5-10 s | Titre-hook, observation 3, callback, bouton, rituel |
| Voix off du présentateur | Chaque jour, une passe TTS, un voice_id | Fait réel, observations 1-2 sur inserts |
| Invité | Chaque jour si le bloc l'exige, 2 générations de 10 s | Même image de référence, même décor duplex |
| Micro-trottoir | 3 générations de 4-5 s | Une image de référence de rue par saison ; visages neufs ou récurrents |
| Inserts « archives » | 1-2 images fixes générées ou plan de 5 s | Lieu, objet, panneau ; jamais une personne réelle |
| Incrustations et montage | Chaque jour | Titre, DIRECT, *lower third*, CTA fixe |
| Générique et rituel | Une fois | Réutilisés tels quels |

Ordre de fabrication quotidien : dépêche → 10 titres → conducteur → voix (TTS et vérification du débit) → générations parlantes → assemblage avec la banque → incrustations → tests (muet, paragraphe isolé) → publication à l'heure fixe. Ce qui ne tient pas dans ce rythme est retiré du segment, pas rajouté à la journée.

## 6 bis. Passation et continuité

| Situation | Ce qu'on fait | Ce qu'on ne fait pas |
|---|---|---|
| La voix du présentateur disparaît (compte, modèle) | Épisode de passation : l'ancien présente le nouveau dans le rituel, la bible est mise à jour le même jour | Remplacer en silence par un « équivalent » |
| Le plateau doit changer (nouveau modèle d'image) | Changement annoncé comme un événement du JT (« nouveaux locaux ») ; les incrustations et le rituel restent identiques | Changer décor et présentateur le même soir |
| Un personnage secondaire ne revient plus | Le présentateur le mentionne une fois (« notre porte-parole est en séminaire ») | Le laisser disparaître |
| Pause de plusieurs jours | Dernier épisode annonce la date de retour dans le rituel ; premier épisode de retour ouvre sur la conséquence de la pause | Revenir sans l'avoir dit |
| Une blague a blessé | Pas d'excuse en plateau : retirer, et le prochain épisode applique la règle 7 (inversion) sur le même sujet | Expliquer la blague |

## 7. Dérives à surveiller

| Dérive | Signe | Correction |
|---|---|---|
| Le présentateur devient le comique | Il rit, il commente, il fait le clin d'œil | Relire « ce qu'il ne fait jamais » ; le rire est dans le fait et dans l'invité |
| L'invité devient conscient | « Bon, entre nous… » | Vrai croyant ; il défend le mot |
| Le micro-trottoir se moque des passants | Le passant normal est ridicule | Le passant a toujours raison ; seul l'absurde pousse la logique du pouvoir |
| La pub entre dans le segment | Une blague sur l'agence, un logo client | Incrustation de fin seulement |
| Le rendez-vous glisse | Heure variable, durée de 50 à 120 s | Même heure, 75 s ±5 s, la grille ne se discute pas |
| Les chutes se répètent | Trois aveux calmes d'affilée | Registre des chutes, rotation imposée |
| La bible n'est plus relue | Costume qui change, tic oublié | Relire la page avant chaque conducteur |
