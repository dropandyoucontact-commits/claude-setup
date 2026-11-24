# Grille d'un segment, seconde par seconde

À lire quand tu places les blocs sur l'horloge, que tu dois couper à 60 s, ou qu'un bloc déborde.

**Fourchette du format : 60 à 90 s. Durée fixe de ce JT : 75 s, à ±5 s près.** La grille de référence ci-dessous fait exactement 75 s ; les variantes 60 s et 90 s sont des recalculs complets, pas des approximations.

Cadre : 1080×1920, zone sûre avec **~96 px rognés en haut et en bas** (règle maison `zone-sure-tiktok-snap` ; `social-platforms` ne porte aucune valeur de zone sûre) ; débit 2,5 mots/s en anglais (varghq ai-parody-video), **4,2 mots/s en français parlé vite** en caméra comme en voix off, + pauses 0,18 s (mesure maison, fiche `methode-video-motion-validee`) ; répliques en caméra ≤ 6 mots, inserts en voix off ≤ 12 mots (plafond de synchro labiale, `mise-en-scene/references/couverture-dialogue.md` §4). Un plan par phrase. Aucun plan d'observation > 2,5 s.

Les textes posés au montage s'appellent des **incrustations** (*overlay*) : titre, bandeau DIRECT, *lower third*, CTA. Jamais générés dans l'image.

## 1. La grille de référence (75 s)

| Temps | Durée | Bloc | Ce qu'on voit | Ce qu'on entend | Fonction | Origine de la règle |
|---|---|---|---|---|---|---|
| 0,0-0,5 | 0,5 s | Amorce | Présentateur déjà en mouvement (relève la tête, pose une feuille) ; incrustations DIRECT et bandeau déjà posées | Première syllabe sur l'image 1 | Dire « c'est une info » sans carton | varghq : pas de carton-titre, bandeau DIRECT au montage ; règle maison « action avant 0,5 s » |
| 0,5-4 | 3,5 s | Titre-hook | Plan serré présentateur, titre en incrustation de 5 à 8 mots | La blague de titre : moitié vraie + torsion finale ; titre **écrit** ≤ 8 mots, réplique **dite** en caméra ≤ 6 mots | Nommer le sujet, cacher le *comment*, premier rire | Weekend Update (deux lignes), Lux/Greene (première moitié réelle), faceless-channel (≤ 8 mots) |
| 4-7 | 3 s | Fait réel, 1ʳᵉ phrase | Insert « archive » : lieu, objet, panneau, capture floutée | Une phrase sèche, ton dépêche, zéro adjectif | Setup commun de tout le segment | murage (style agence, idée reformulée) |
| 7-10 | 3 s | Fait réel, le chiffre | Second insert : l'objet qui porte le chiffre (horloge, tableau, procès-verbal) | Le chiffre précis, en toutes lettres | Crédibilité | newsjack : le nombre précis lit comme vrai, le rond comme marketing |
| 10-12,5 | 2,5 s | Observation 1a | Insert nouveau | Angle accessible, évident, en voix off (≤ 12 mots) | Entrer dans le corps | Carson : première observation légère |
| 12,5-15 | 2,5 s | Observation 1b | Retour présentateur, *push-in* léger | La chute de l'observation, en caméra (≤ 6 mots) | Le visage ramasse l'observation | faceless-channel : aucun plan > 2,5 s |
| 15-17,5 | 2,5 s | Observation 2a | Insert nouveau | Angle plus pointu, voix off | *Heightening* | Carson ; Kalan (du moins exagéré au plus exagéré) |
| 17,5-20 | 2,5 s | Observation 2b | Présentateur, un geste | Chute de l'observation, en caméra | — | — |
| 20-22,5 | 2,5 s | Observation 3a | Insert nouveau, souvent le quotidien du spectateur | Angle le plus surprenant, voix off | Sommet du corps | Carson : trois, quatre maximum, jamais cinq |
| 22,5-25 | 2,5 s | Observation 3b | Présentateur, plan serré, il pose son stylo | Chute ramenée au spectateur, en caméra | — | — |
| 25-45 | 20 s | **Bloc variable** | Une des quatre formes du § 6 et du § 8 bis | Selon la forme | Le pouvoir se condamne lui-même, ou le réel déraille | tekhne (invité) ; varghq (direct) ; Amira (seconde partie variable) |
| 45-57 | 12 s | **Voix tierce** | 3 passants, même axe, même rue, 4 s chacun ; micro hors champ | Réponse normale / absurde / trop sincère | Le grand événement vu par la vie ordinaire | Dikkers « grand/petit » et « personnage honnête » (Keck, GeekWire) ; Carvell : il faut une voix autre que le présentateur |
| 57-61 | 4 s | Callback, 1ᵉʳ temps | Insert du fil physique (horloge, pile de dépêches, café) | L'objet du début revient, voix off | Récompense l'attention | Carson ; faceless-channel : le *kicker* recadre le hook |
| 61-64 | 3 s | Callback, sens nouveau | Second insert | La phrase qui retourne le titre | — | — |
| 64-69 | 5 s | Bouton | Plan fixe, regard caméra | Une phrase, mot drôle en fin, coupe sur la dernière syllabe | Chute | Carson ; sceneshop « ski jump » ; varghq : couper juste après le *payoff* (Hoyos : −1 s, rétention 83 → 88 %) |
| 69-72 | 3 s | Rituel | Même plan chaque soir | Formule fixe, moitié 1 | Rendez-vous | picsart (promesse émotionnelle montrée) |
| 72-75 | 3 s | Rituel + CTA | Incrustation fixe « lien en bio » hors des 96 px rognés | Formule fixe, moitié 2, un mot de teaser | Pub hors segment | règle maison (CTA fixe) |

Vérification : 0,5 + 3,5 + 3 + 3 + (2,5 × 6) + 20 + 12 + 4 + 3 + 5 + 3 + 3 = **75,0 s**.

Le pivot (le bloc variable, qui change le regard) tombe à ~60 % de la durée : varghq mesure l'événement impossible de sa « fausse news en direct » à 10 s sur 17 (59 %).

Quand le bloc variable est le **micro-trottoir étendu**, les deux créneaux s'échangent : micro-trottoir de 20 s (4 passants + une relance du présentateur) en 25-45, puis invité réduit (2 échanges + chute) en 45-57. Le segment porte toujours une forme longue de 20 s et une forme courte de 12 s.

## 2. Variantes de durée, recalculées

| Durée cible | Arithmétique | Ce qu'on garde |
|---|---|---|
| **90 s** | 75 + 5 + 5 + 5 = 90 | Un 4ᵉ cran d'observation (deux plans de 2,5 s — **le 4ᵉ cran n'existe qu'ici**, Carson : quatre maximum) ; un 4ᵉ échange d'invité (5 s) ; un 4ᵉ passant (4 s) suivi d'une seconde de visage neutre |
| **75 s** | la grille de référence | Standard de ce JT |
| **60 s, voie A** (la dépêche a un mot à tordre) | 75 − 12 (voix tierce retirée) − 3 (invité ramené de 20 à 17 s : 2 échanges + chute) = **60** | Invité, *callback*, bouton, rituel intacts |
| **60 s, voie B** (la dépêche touche la vie quotidienne) | 75 − 20 (invité retiré) + 4 (4ᵉ passant) + 1 (visage neutre) = **60** | Micro-trottoir porté à 17 s, *callback*, bouton, rituel intacts |
| **45 s (bande-annonce)** | 0,5 + 3,5 + 6 + 5 (observation 3 seule) + 20 (bloc variable) + 5 (bouton) + 5 (rituel) = **45** | Sert à teaser l'épisode complet, pas à le remplacer |

Les deux voies de 60 s suppriment **un** des deux blocs de voix tierce, jamais les deux (Carvell : il faut une voix autre que celle du présentateur). Ce qui ne se compresse jamais **dans un épisode** : le *callback* (7 s), le bouton (5 s), le rituel (6 s) — ce sont eux qui font le rendez-vous. La bande-annonce de 45 s n'est pas un épisode et s'en dispense.

## 2 bis. Budget de mots, calculé

Le débit s'applique au **temps de parole**, pas à la durée du segment. À 4,2 mots/s, 252 mots occupent 60 s **sans un seul silence** — ce qui n'existe pas dans un JT satirique, où le temps après la blague fait partie de la blague.

| Durée | Temps de parole à 75 % | Plafond de mots dits | En anglais (2,5 mots/s) |
|---|---|---|---|
| 60 s | 45 s | ≈ 190 mots | ≈ 113 mots |
| 75 s | 56 s | ≈ 236 mots | ≈ 140 mots |
| 90 s | 67,5 s | ≈ 283 mots | ≈ 169 mots |

Un conducteur réel tombe largement sous le plafond : les deux exemples travaillés du SKILL.md font 147 et 136 mots dits pour 75 s. Le plafond sert à repérer un conducteur gonflé, pas une cible à atteindre. En caméra, c'est la synchro labiale qui plafonne, pas le débit : une réplique de 6 mots fait 1,5 s en français, et trois échanges tiennent dans 15 s avec les réactions.

Convention de comptage : un nombre en toutes lettres avec traits d'union compte pour un mot, une élision compte pour un mot.

## 3. Le titre-hook, bloc par bloc

Formats de setup admis :

| Format | Forme | Où est l'exemple complet |
|---|---|---|
| Deux lignes (Weekend Update) | Setup = la dépêche telle quelle, chute = une phrase | « Une étude montre que les réunions de plus d'une heure réduisent la productivité. La direction a convoqué une réunion de deux heures pour en parler. » |
| Le setup est la dépêche (une ligne) | Moitié vraie, torsion au dernier segment. **La torsion n'est jamais dans la dépêche** : la dépêche reste le fait réel, le titre la tord | `mecaniques-blague-actu.md` § 1 (les bancs publics : dépêche brute, puis titre tordu) |
| Titre musical (Gorafi) | Majuscules, pompe de presse, la blague écrasée dans la musique du titre, mot drôle en dernier | `SKILL.md` § 12, titre n° 6 (ponctualité des trains) et § 13, titre retenu (poubelles) |
| Le chiffre héros (newsjack) | Un nombre précis porte la torsion | `SKILL.md` § 12, titre n° 4 |

Règles : titre écrit ≤ 8 mots (14 pour le titre musical de la mécanique 7, qui ne se dit jamais en caméra), dit en caméra en ≤ 6 ; le mot drôle à la fin ; nommer le sujet (le mystère porte sur le *comment*, jamais sur *de quoi on parle*) ; couper jusqu'à ce que ça casse, puis remettre un mot (newsjack) ; lire à voix haute, enlever des syllabes (Greene, Onion).

Dix titres, trois gardés : écris-les d'un trait, barre le premier venu, barre ce que deux versions partagent, garde ceux qui tiennent muets (titre en incrustation seul).

## 4. Le fait réel (4-10 s), en deux inserts

- Deux phrases, une par insert : la première dit qui, quoi, quand ; la seconde porte le chiffre. Un insert ne dépasse jamais 12 mots.
- Style dépêche : zéro adjectif, zéro verbe d'opinion. Le rire vient de ce qui est rapporté, jamais de la façon (murage, idée reformulée).
- L'insert ne montre jamais une vraie personne : un lieu, un objet, un panneau, une capture floutée, une « archive » générée visiblement de plateau.
- Les nombres sont écrits comme ils se disent dans la colonne « Texte dit » : « quatre-vingt-dix-sept virgule quatre pour cent », jamais « 97,4 % ».
- La source est écrite dans le conducteur (colonne dédiée), jamais dite à l'antenne sauf si elle est elle-même la blague.

## 5. Les trois observations (10-25 s), deux plans chacune

| Rang | Intensité | Mécanique typique | Test |
|---|---|---|---|
| 1 | Évidente | Hypocrisie, grand/petit | Un spectateur l'a déjà pensée : il acquiesce |
| 2 | Pointue | *Reductio* (le pas suivant plausible) | Il ne l'avait pas vue venir mais elle découle du fait |
| 3 | Surprenante | *Reductio* portée au spectateur, comparaison dégradante | Elle change ce qu'il pensait de la dépêche |

**Chaque observation se joue en deux plans de 2,5 s**, jamais en un seul plan de 5 ou 6 s : un insert en voix off (jusqu'à 12 mots, c'est là que l'angle s'installe) puis le présentateur en caméra (≤ 6 mots, c'est là que l'observation tombe) — ou l'inverse quand c'est le visage qui doit poser l'angle. Deux raisons : le plafond de 2,5 s par plan d'observation (faceless-channel : au-delà, ça lit comme un diaporama) et le plafond de synchro labiale, qui rend impossible une observation complète dite en caméra.

Test du réordonnancement (faceless-channel) : si les trois se permutent sans perte, tu as listé. Chaque observation est plus grosse, plus bizarre ou plus précise que la précédente.

**Trois, jamais cinq** (Carson). Le 4ᵉ cran — celui qui installe un motif sur trois items puis le brise sur un détail propre au sujet — n'est écrit qu'en version 90 s.

## 6. L'invité fictif (25-45 s), compressé de 4-6 échanges à 3

Le sketch britannique prend 4 à 6 échanges (tekhne) ; en vertical, 3 échanges + 1 chute :

| Échange | Présentateur | Invité | Durée |
|---|---|---|---|
| 1 | Question innocente, factuelle, souvent un chiffre | Euphémisme (« fenêtre de ponctualité ») | 5 s |
| 2 | Restitue le fait brut en 3-5 mots, attend | Défend l'euphémisme comme plus exact | 5 s |
| 3 | Redit la conséquence concrète | Concession qui aggrave (*concession creep*) | 5 s |
| Chute | — | Absurdité dite calmement, sourire sincère | 5 s |

Version 17 s (voie A des 60 s) : échanges 1 et 2, puis la chute.

Cadre choisi avant d'écrire (tekhne, référence « interview frame ») : interview formelle (échec public connu), briefing (logique interne absurde), consultation (déjà décidé — marche en 2 lignes), enquête rétrospective (le cadre attend un aveu). En 20 s, la consultation et l'interview formelle sont les deux qui tiennent.

Plans : alternés, 2 générations de 10 s, coupe sur la question. Le *lower third* porte le *type* (« Porte-parole du ministère »), un nom inventé, jamais un nom réel — et un nom inventé vérifié dans un moteur de recherche avant d'être verrouillé.

## 7. Le micro-trottoir (45-57 s)

| Passant | Rôle | Exemple (dépêche des trains, SKILL.md § 12) | Durée |
|---|---|---|---|
| 1 | Normal — la réaction vraie du public | « Quinze minutes, ça va. Après, non. » | 4 s |
| 2 | Absurde — la logique poussée un cran | « J'arrive en retard partout. Enfin reconnu. » | 4 s |
| 3 | Trop sincère — le personnage honnête (Dikkers) | « La voiture, depuis deux mille dix-neuf. » | 4 s |

Même rue, même lumière, même axe pour les trois (une image de référence de rue par saison). Micro hors champ ou tenu par le reporter de terrain. Regard caméra pour le 3ᵉ seulement. Dans la bibliothèque de formats de `creative-strategy`, ce format s'appelle **Street Interview**.

Les commentaires de la veille deviennent le micro-trottoir du lendemain : prends trois commentaires réels, réécris-les en répliques de 6 mots au plus, attribue-les aux passants. Le spectateur cité revient voir s'il a été pris.

## 8. Callback, bouton, rituel (57-75 s)

- **Callback** : reprend le titre ou l'objet du fait avec un sens nouveau, en deux temps (l'objet revient, puis la phrase qui retourne le titre). Le test : le *callback* change-t-il ce qu'on pensait au début ? Un résumé n'en est pas un. Pas de matière → droit au bouton (Carson : mieux vaut aucun *callback* qu'un faible).
- **Bouton** : une phrase, le mot drôle à la fin, coupe sur la dernière syllabe. Jamais de rire, jamais de « voilà ».
- **Rituel** : même formule, même plan, même durée, coupée en deux clips de 3 s pour rester sous le plafond de synchro labiale. Un seul mot de teaser pour demain. L'incrustation « lien en bio » est fixe, à la même position chaque soir, hors des 96 px rognés.
- **Générique** : 1-2 s maximum, placé **après** le titre-hook (jamais avant le premier mot) ou fondu dans le rituel de fin.

## 8 bis. Les deux autres formes du bloc variable

### Le direct impossible (17 s + 3 s de respiration, d'après le gabarit varghq)

| Temps dans le bloc | Ce qu'on voit | Ce qu'on entend |
|---|---|---|
| 0-3 | Un seul plan continu commence : plan large du lieu, bandeau DIRECT et *lower third* posés au montage | Reporter en routine, une phrase (≤ 6 mots s'il est à l'image, ≤ 12 si le micro est hors champ) |
| 3-10 | Le même plan, rien d'anormal | Suite du commentaire routinier ; le présentateur peut relancer d'un mot |
| 10 (59 %) | L'événement physiquement impossible entre dans le cadre | Silence 0,5 s |
| 10,5-15 | L'impossible continue, le plan ne coupe pas | Réaction en 4-6 mots (plafond de synchro labiale atteint) |
| 15-17 | Le plan tient | Dernière phrase basse : « Vingt ans. Jamais vu ça. » |
| 17-20 | Plan du lieu, ambiance seule | Aucun mot : respiration après le choc, 2,5-4 s |

Deux conditions non négociables (varghq) : l'événement doit être **physiquement impossible**, et **aucun nom, logo ou présentateur de chaîne réelle**. Un événement plausible dans un habillage de direct est une fausse info, pas une parodie. Conducteur complet : `SKILL.md` § 13.

La respiration de 2,5-4 s après le choc n'est pas un insert de coupe : un insert de coupe fait 0,3-0,5 s. Ne jamais confondre les deux.

### Le billet du présentateur (15 s + 5 s rendues à la voix tierce)

| Temps dans le bloc | Texte | Règle |
|---|---|---|
| 0-4 | La métaphore posée en une phrase : « Cette appli ne vous envoie pas de notifications, elle vous trie. » | Une seule image (tri, maladie, chaîne de montage), jamais deux |
| 4-11 | Deux phrases qui suivent la métaphore mécaniquement, chacune un cran plus loin | Escalade plausible pas à pas (tekhne, brooker-esque) |
| 11-15 | Fin plate, sans triomphe : la petitesse du problème redite en 6 mots au plus | Hyperbole puis *bathos* ; pas de morale |

Le billet n'a pas de voix tierce : jamais deux jours de suite, et les 5 s libérées vont au micro-trottoir, qui passe à 17 s (4 passants).

## 8 ter. Conducteur vierge

```
Épisode n° __ — date __ — dépêche : __ (source : __, date __)
Point (une ligne) : __
Cible (institution / promesse / marque / rhétorique) : __
Titres gardés (retenu en premier) : 1. __  2. __  3. __
Bloc variable : invité / direct impossible / micro-trottoir étendu / billet
Forme de chute : __ (deux dernières : __, __)

| Temps | Qui | Texte dit | Ce qu'on voit | Mécanique | Source du fait |
| 0,0-0,5   | Présentateur | (première syllabe) | amorce, DIRECT posé | signal | — |
| 0,5-4     |              |                    | titre en incrustation : __ | | |
| 4-7       | Voix off     |                    | insert : __ | fait, phrase 1 | __ |
| 7-10      | Voix off     |                    | insert : __ | fait, le chiffre | __ |
| 10-12,5   | Voix off     |                    | insert : __ | obs. 1a | |
| 12,5-15   | Présentateur |                    | plateau | obs. 1b | |
| 15-17,5   | Voix off     |                    | insert : __ | obs. 2a | |
| 17,5-20   | Présentateur |                    | plateau | obs. 2b | |
| 20-22,5   | Voix off     |                    | insert : __ | obs. 3a | |
| 22,5-25   | Présentateur |                    | plateau | obs. 3b | |
| 25-45     |              |                    |             | bloc variable | |
| 45-57     |              |                    |             | voix tierce | |
| 57-61     | Voix off     |                    | insert : __ | callback 1 | |
| 61-64     | Voix off     |                    | insert : __ | callback 2 | |
| 64-69     | Présentateur |                    | plan fixe   | bouton | |
| 69-72     | Présentateur | formule fixe       | plateau     | rituel | |
| 72-75     | Présentateur | formule + teaser : __ | incrustation CTA fixe | rituel + CTA | |

Casting : présentateur (image __, voix __, inchangé) ; __ (image __, voix __, inchangé / nouveau)
Incrustations : titre (0,5-4), DIRECT (0-75), lower third (25-45), CTA (72-75)
Vérification : durée recalculée __ s · mots dits __ / plafond __ · plus long plan d'observation __ s
               · plus longue réplique en caméra __ mots · plus long insert en voix off __ mots
```

## 9. Densité et respiration

- Une blague toutes les 4-5 s au plus (Kalan : le public du Daily Show disait n'avoir pas le temps de digérer chaque blague).
- Le temps après la blague appartient à la blague : 0,4-0,8 s de visage neutre après chaque chute d'observation (ordre de grandeur, non sourcé).
- Après un choc visuel, la respiration est de 2,5-4 s, ambiance seule. L'insert de coupe, lui, fait 0,3-0,5 s (`higgsfield/vocab.md`). Deux objets différents.
- Coût des pauses en synthèse vocale : ~0,7 s par point, ~0,5 s par virgule, ~1 s par balise jouée (faceless-channel) ; une phrase coulante remplit mieux un bloc que trois phrases hachées.
- Un seul fil physique qui évolue à travers les blocs (faceless-channel) : l'horloge du plateau qui avance, la pile de dépêches qui monte, le café qui refroidit. Il porte le *callback*.

## 10. Erreurs de grille les plus fréquentes

| Erreur | Symptôme | Correction |
|---|---|---|
| Générique avant le titre | 3-5 s sans mot | Titre d'abord, générique 1-2 s après |
| Fait réel de 15 s | La crédibilité devient un cours | Deux inserts, deux phrases, un chiffre |
| Observation en un seul plan de 6 s | Diaporama ; et la réplique dépasse le plafond de synchro labiale | Deux plans de 2,5 s : insert en voix off + présentateur en caméra |
| Cinq observations | Pas d'escalade, le public décroche | Trois ; le 4ᵉ cran seulement en 90 s ; garde les autres pour demain |
| Invité de 40 s | Le présentateur disparaît, le segment devient un sketch | 3 échanges + chute, 20 s |
| Micro-trottoir de 6 passants | Répétition, le motif s'use | 3 : normal, absurde, trop sincère (4 au maximum, en 90 s ou en voie B des 60 s) |
| Durée qui flotte d'un soir à l'autre | L'habitude ne se forme pas | 75 s ±5 s ; recalculer la somme du conducteur avant livraison |
| Callback qui répète le titre | Le spectateur l'a déjà entendu | Même objet, sens nouveau |
| Bouton suivi d'un commentaire | Le rire est écrasé | Coupe sur la dernière syllabe |
| CTA dans la blague | Casse le personnage | Incrustation de fin + lien en bio |
| Chiffres en chiffres dans le texte dit | La voix lit « 97,4 % » de trois façons | Tout en toutes lettres dans la colonne « Texte dit » |
