# Anatomie chronométrée — 6 s, 15 s, 30 s, 60 s

À lire quand il faut poser les secondes d'un spot, décider où tombent le produit et la marque, compter les coupes et les mots, ou lire une courbe de rétention. Chaque chiffre porte sa source ; « convention » = règle d'auteur sans mesure publiée ; « non sourcé » = chiffre repris d'un skill qui ne cite rien.

## 1. Règles transversales (concordantes entre quatre sources)

| Règle | Détail | Source |
|---|---|---|
| Marque hors du hook en film | pas de logo, pas de fondu, pas de plan d'installation ; la marque n'arrive pas avant 0:03 | convention nodetool (AGPL, idée reformulée) ; hayesti54 (sans licence, idée reformulée) : un élément de marque posé dans les trois premières secondes figure parmi ses causes de falaise précoce sur TikTok |
| Produit et texte à l'image 1 en conversion | le spectateur sait ce qu'il regarde dès la première image | scenario-labs (MIT) ; vargHQ gabarit B |
| Hook fini à 6 s | la valeur est dite à 3 s, le hook est bouclé à 6 s ; 90 % du rappel publicitaire se joue avant 6 s | TikTok Creative Codes, via vargHQ (MIT) |
| Carton final | 2-3 s (scenario-labs) ; 3-5 s avec lockup (0xzgbot, convention) ; la dernière ligne paie le hook ; en boucle, finir sur l'image 1 | scenario-labs ; 0xzgbot ; iart (MIT) |
| Un silence avant le CTA | une respiration volontaire juste avant l'action demandée | convention nodetool, reformulée |
| Interruptions de motif | changement visuel toutes les 2-4 s en court ; repères à 25/50/75 % | iart ; social-media-skills (MIT) ; convention nodetool |
| Un seul message | « le spectateur attrape un message ; une liste de bénéfices n'en laisse aucun » | scenario-labs ; Google ABCD via vargHQ |
| Preuve collée à la revendication | la preuve suit immédiatement ce qu'elle valide | convention nodetool, reformulée |
| Version muette | 80-85 % regardent sans son ; le texte à l'écran répète la promesse dite | Zebracat via social-media-skills ; Meta via vargHQ |

## 2. Budget de mots et de plans par durée

| Durée | Beats | Générations | Coupes au montage | Mots dits — anglais 2,5 mots/s | Mots dits — français 4,2 mots/s | Inserts |
|---|---|---|---|---|---|---|
| 6 s | 2 (hero shot, beat de marque) | 1-2 | 1-2 | 8-12 | 13-19 | 0 |
| 15 s | 4-6 (hook, montée, preuve produit, marque + CTA) | 3-4 | 4-8 | 30-35 | 45-47 | 1 |
| 30 s | 6-8 (hook, monde, bascule, preuve, payoff, marque) | ~6 | 8-15 | 60-70 (UGC : 60-75) | 90-95 | 2-3 |
| 60 s | 4 mouvements (ouverture, développement, climax, résolution) | 10-14 | 14-20 | ≤ 150 | ≤ 190 | 3-4 |

**Les deux colonnes de mots ne sont pas deux traductions du même chiffre, et le plafond français n'est pas 4,2 × la durée.** 4,2 mots/s est un débit de **parole**, mesuré sur du temps où quelqu'un parle vraiment. Un spot comporte ~25 % de silence et de réactions : sur 30 s, il reste ~22,5 s parlées, soit ~95 mots, pas 126. Le calcul brut (30 × 4,2 = 126) décrit un spot sans une seule respiration, injouable. Les valeurs de la colonne française ci-dessus sont donc **déjà les plafonds** : 19 mots sur 6 s, 47 sur 15 s, 95 sur 30 s, 190 sur 60 s. Tout nombre supérieur annoncé ailleurs est une erreur de méthode, pas une marge.

Second plafond, indépendant du débit : le **lip-sync**. ≤ 6 mots par plan quand la bouche est visible, ≤ 12 en voix off ou sur un plan d'écoute (`mise-en-scene/references/couverture-dialogue.md` §4), un seul parleur par clip. Un budget de 95 mots sur 30 s ne se répartit donc pas en répliques face caméra : il se répartit entre voix off, inserts et quelques répliques courtes.

Sources : scenario-labs brief.md (MIT) pour les beats de 6/15/30 ; vargHQ ad.md pour le plafond UGC ; 2,5 mots/s = vargHQ varg-video-prompting et convention nodetool, **débit de l'anglais** ; 4,2 mots/s avec ~25 % de silence = mesure maison (fiche `methode-video-motion-validee`) ; la ligne 60 s est une extrapolation (non sourcée).

**Générations contre coupes — ne pas confondre les deux comptes.** Un 30 s se fabrique avec **~6 générations** (4-6 s de moyenne, un plan héros tenu 6-8 s) et se monte en **8-15 coupes** : certains clips sont utilisés deux fois, recadrés, ou coupés en deux. Les comptes très élevés qu'on lit ailleurs (15 à 38 plans sur 30 s) décrivent un **re-découpage dans des rushes déjà générés**, pas un nombre de générations à commander — c'est un chiffre de montage de performance, jamais de film. Cadence visée : un plan toutes les 2-3 s en performance, une coupe toutes les 1-2 s dans le hook, plus lent sur la démo (scenario-labs, vargHQ) ; un film de marque tient moins de plans, plus longs ; sur un 30 s TV la densité est maximale sur les 5 premières secondes, avec une respiration au milieu et un récapitulatif ou une animation de logo sur les 5 dernières (0xzgbot, non sourcé mais cohérent avec les autres).

Génération IA : la longueur générée n'est pas le rythme du montage. Générer 3-5 s pour les plans produit critiques, 5-10 s pour la couverture, une seconde de marge de chaque côté, puis couper plus serré au montage (scenario-labs). Les coupes tombent sur une action ou une occultation : les artefacts de bord de clip disparaissent.

## 3. Le 6 s (bumper)

| Temps | Beat | Contenu |
|---|---|---|
| 0-1 s | image qui pose la question | produit déjà en mouvement ou visage, jamais de fondu |
| 1-4 s | hero shot | le produit à son plus désirable, un seul mouvement caméra |
| 4-6 s | beat de marque | logo + ligne ; le son porte le nom |

8-12 mots au total en anglais, 13-19 en français (plafond). Un 6 s ne raconte pas : il rappelle. Il suppose une notoriété existante ou un spot long déjà vu (convention, non sourcée).

## 4. Le 15 s

| Temps | Beat | Détail | Source |
|---|---|---|---|
| 0-1,5 s | interruption de motif | produit ou visage déjà en mouvement, visuel inattendu | vargHQ (MIT) |
| 0-3 s | promesse | dite + écrite ; pour qui et ce qu'on obtient | vargHQ ; TikTok |
| 3-6 s | pont vers le produit | aucune cascade sans lien ; le hook se termine ici | vargHQ |
| 3-10 s | une ou deux fonctions montrées | démo, texture, résultat | Ethanxwang (MIT) ; scenario-labs |
| 10-13 s | hero shot | produit seul, plus beau plan | Ethanxwang |
| 13-15 s | carton | logo + ligne + CTA dit et écrit | Ethanxwang ; scenario-labs |

Un 15 s ne porte qu'**un seul point de mémoire** (Ethanxwang, « règle de fer du 15 s »). Le bloc « problème » se replie dans le hook comme moitié « avant » (fal-ai `storytelling/shot-planning.md`, MIT). Variante UGC réaliste en 4 temps (vargHQ gabarit C) : 0-4 déjà en mouvement, produit à côté du visage, phrase jetée ; 4-7 macro texture ou étiquette ; 7-11 usage et vraie réaction ; 11-15 cadre le plus serré, la main coupe l'enregistrement.

Variante TikTok Shop bas de tunnel, 18 s (vargHQ gabarit B) : produit visible à l'image 1 + hook d'appel (« si tu as plus de 50 ans et que tes genoux craquent… ») ; 3-13 démo avec **un chiffre précis** ; 13-18 CTA vers le panier.

## 5. Le 30 s

### 5a. Film / TV (problème → solution)

| Temps | Beat | Émotion | Densité visuelle | Source |
|---|---|---|---|---|
| 0-3 s | hook : image qui définit le monde, mi-action | arrêt, curiosité | maximale | 0xzgbot ; scenario-labs |
| 4-8 s | problème ou monde posé | frustration ou désir | haute | 0xzgbot |
| 9-15 s | escalade : le problème empire, ou la bascule | tension | moyenne-haute | 0xzgbot ; scenario-labs (« turn ») |
| 16-22 s | solution : le produit entre comme réponse | espoir, soulagement | moyenne | 0xzgbot |
| 23-27 s | payoff : transformation, preuve, le plus beau plan | satisfaction | haute | 0xzgbot ; scenario-labs |
| 28-30 s | verrou de marque : logo, ligne, pack | ancrage | nette | 0xzgbot ; Ogilvy règle 2 via HunterHewitt |

Une seule trajectoire émotionnelle (frustration → soulagement, désir → satisfaction), pas de sous-intrigue (0xzgbot). Une émotion forte doit apparaître avant 5 s ; passé 15 s, l'attention chute si rien n'a engagé (0xzgbot, non sourcé).

### 5b. Révélation de la marque sur 30 s

| Moment | Fenêtre | Pour qui | Risque |
|---|---|---|---|
| Tôt | 0-5 s | marque connue, performance, 6-15 s | ennui si le hook n'est que le logo |
| Milieu | 12-18 s | récit, la marque émerge comme solution | la bascule doit être visible |
| Tard | 20-25 s | suspense, émotion, chute d'humour | **tard sans accroche émotionnelle précoce = rappel nul** |
| Dernière image | 28-30 s | film de marque (Gorilla, Kenzo, Surfer) | exige que le film vaille d'être vu sans la marque |

Source : 0xzgbot (convention), concordant avec les fiches de campagnes de Serge Shima (CC BY 4.0).

### 5c. Performance 30 s (vargHQ gabarit A, MIT)

0-1,5 s interruption + produit ou visage · 0-3 s promesse dite et écrite · 3-6 s pont · 6-20 s démo + 1-3 bénéfices, décor réel, produit montré plusieurs fois, **un chiffre précis** · 20-26 s preuve réelle (avis, résultat, compteur) · 3-4 dernières s CTA dit et écrit, l'offre = celle de la page.

### 5d. Deux mondes, spot produit (Ethanxwang, MIT, convention)

| Temps | Monde | Contenu | Émotion |
|---|---|---|---|
| 0-5 s | marque | hook : scène extrême ou instant de vie | adrénaline ou résonance |
| 5-10 s | croisé | alternance monde-marque ↔ gros plan produit par **match cut** (forme, mouvement, couleur) | étonnement |
| 10-20 s | produit | démontage, visualisation de la fonction, matière, lumière | concentration |
| 20-25 s | marque | retour à l'usage, produit intégré | désir |
| 25-30 s | produit | hero shot + image finale | ancrage |

Le changement de monde se fait **entre** les phases, jamais dedans. Trois porteurs du monde-marque : l'environnement (produit fonctionnel : caméra d'action → parachute), la personne (produit identitaire : bijou, mode), l'expérience (produit sensoriel : café, soin, parfum). Casting : identitaire → une personne par défaut (mains, poignet, cou) ; fonctionnel → optionnel ; sensoriel → mains et visage partiel.

Règle de visibilité : ≥ 70 % des plans avec le produit, jamais 3 plans consécutifs sans lui, 10-25 % du cadre dans les plans de vie (convention d'auteur).

### 5e. Boucles narratives sur 30 s

Question centrale + une boucle imbriquée ; premier payoff vers 45 % (≈ 13 s). Jamais plus de deux boucles ouvertes ; aucune boucle ouverte dans les derniers 15 % sauf hook de série. L'appât qui retient le sujet lui-même (« vous n'allez pas y croire », produit flouté) n'est pas une boucle (convention nodetool, reformulée ; base Loewenstein 1994).

## 6. Le 60 s

| Temps | Mouvement | Contenu | Source |
|---|---|---|---|
| 0-15 s | ouverture | monde, ton, promesse de spectacle ; pas de marque | Ethanxwang ; convention nodetool |
| 15-30 s | développement | le conflit, la fonction ou le personnage se déploie | Ethanxwang |
| 30-45 s | climax | montage le plus rapide ou le plan le plus tendu — c'est le **pic** de la règle pic-fin | Ethanxwang ; Kahneman via jamon8888 |
| 45-60 s | résolution | l'émotion atterrit, hero shot, idée de marque, carton | Ethanxwang |

Boucles : question centrale + deux boucles, premier payoff vers 40 % (convention nodetool). Au-delà de 60 s (Gorilla 90 s, Dollar Shave Club 120 s, Cog 120 s) : « l'histoire doit justifier la longueur ; si elle tient en 90 s sans perte, elle fait 90 s » (Serge Shima, patron P16). Ce qui paie chaque seconde : la densité de rires (DSC : chaque phrase gagne sa place) ou la montée de tension (Gorilla : raccourcir aurait perdu la tension).

### 6a. Le 50-60 s face caméra, en cinq fenêtres

Format d'un seul décor, une seule personne, qui parle à l'objectif. Il ne se découpe pas en plans : il se découpe en **fenêtres de temps**, chacune avec un travail à faire. Les fenêtres ci-dessous sont une synthèse de scripts longs observés (notes de formation, non redistribuables — reformulées en règles).

**0 à 5 s — s'adresser à quelqu'un de précis.** Une phrase, pas deux. Elle nomme à qui le spot parle, et elle s'appuie sur un repère vérifiable — une quantité, ou un groupe que le spectateur sait reconnaître. Le hook en registre brut descend à 3 s ; les formats avant/après et pédagogique montent à 8 s parce qu'ils ont une situation à installer.

**5 à 18 s — faire reconnaître le problème.** La partie la plus souvent ratée. Ce qui la fait tenir n'est pas la description de la douleur mais l'**inventaire des tentatives** : dire ce qui a déjà été essayé et n'a pas marché, chaque tentative nommée, pas « j'ai tout essayé ». Trois tentatives suffisent ; au-delà le spectateur décroche, en dessous il ne se reconnaît pas.

**18 à 30 s — expliquer par une image physique.** Le produit entre ici, mais ce qui le fait croire c'est le mécanisme, et ce qui fait passer le mécanisme c'est une **comparaison avec un objet qu'on peut se représenter**. Trois exemples pour fixer le registre : un radiateur qu'on alimente pendant qu'une fenêtre reste ouverte (le corps qui dépense ce qu'on lui donne), une roue mal équilibrée qui vibre à grande vitesse (un déséquilibre qu'on ne sent qu'à l'effort), une bougie allumée par les deux bouts (une réserve consommée deux fois plus vite). La règle : l'image doit être **mécanique**, pas poétique, et se générer en un plan. En vidéo, l'image choisie devient un vrai plan — c'est le seul endroit du script où une métaphore se tourne au lieu de se dire.

**30 à 45 s — poser la preuve.** De trois à quatre valeurs chiffrées, exactes, et une instance identifiable derrière elles : un organisme, une fonction, un protocole de mesure. En vidéo ces nombres sont **montrés** (compteur, étiquette, écran, résultat côte à côte) et non lus : un nombre dit à l'oral ne s'encode pas sous attention faible (voir `psychologie-sourcee.md` n° 2).

**45 à 55 s — fermer sur le hook, pas sur l'injonction.** La dernière fenêtre revient sur la phrase d'ouverture et la vérifie, puis lève ce que l'achat fait risquer : garantie, essai, reprise. Formuler l'action attendue autrement qu'en injonction d'achat.

**Les deux pièges du format.** D'abord, ce type de script est écrit pour une personne réelle dans sa cuisine : transposé à un avatar généré, il devient un faux témoignage dès qu'il dit « j'ai essayé » ou « je suis fondateur » — un porte-parole généré s'assume comme personnage, jamais comme témoin (vargHQ). Ensuite, le rythme de coupe n'est pas le même : un monteur coupe sur un clignement, une génération coupe sur la pause. Sur un format long de 30 à 90 s, ne pas nommer le produit comme solution avant ~35 s (vargHQ gabarit D).

Le **texte** de ces fenêtres appartient à `ad-copy` (formats A et C). Ce qui se décide ici, c'est ce qui est **à l'image** dans chaque fenêtre : le plan de l'inventaire des tentatives, le plan de l'analogie, les plans de preuve, l'image finale.

## 7. Lire la courbe d'attention

### 7a. Définitions

| Métrique | Calcul | Seuil | Source |
|---|---|---|---|
| Hook rate (thumbstop) | vues 2 s (TikTok) ou 3 s (Meta) / impressions | **seuil : voir `media-buying`**. Seule valeur mesurée du corpus : moyenne 25,4 % (Billo, H1 2026). Les fourchettes « saines » de 25-33 % viennent de hayesti54 (dépôt **sans licence**, qui ne cite aucune source) et de scenario-labs, sans mesure publiée. | Billo H1 2026 via vargHQ (mesure) ; scenario-labs et hayesti54 (convention, non sourcée) |
| Hold-X | vues à X % / vues 2 s | seuils de `media-buying` ; les valeurs qui circulent (Hold-100 ≥ 45 % en 9-15 s, Hold-75 ≥ 25 % en 30-45 s) viennent de hayesti54, sans licence et sans source | hayesti54, sans licence, non sourcé |
| Hold-6 / Hold-2 | vues à 6 s / vues à 2 s | < 50 % lu comme une transition hook → corps cassée | hayesti54, sans licence, non sourcé |
| Ratio de visionnage | durée moyenne vue / durée | seuil de `media-buying` | hayesti54, sans licence, non sourcé |
| Hook rate haut, CTR bas | lecture croisée, pas un calcul | le hook arrête, le corps ne crée pas le désir : c'est la métrique qui tranche sur le **corps** du spot | hayesti54, sans licence, reformulé |
| Hook rate haut, CPA mauvais | lecture croisée, pas un calcul | problème de message ou de page, pas de hook : rien à corriger dans le découpage | hayesti54, sans licence, reformulé |

Les définitions de ces métriques et l'ordre dans lequel on descend l'entonnoir sont dans `media-buying` § Diagnostic d'une créa qui ne performe pas : n'en refais pas la table. Ce fichier ne retient que **quelle fenêtre du découpage** chaque étage accuse — hook rate = 0-3 s · Hold-50 = la transition hook → corps · CTR = le corps · CPA = le message ou la page. Seule précision propre à l'écriture : TikTok compte la vue à 2 s, Meta à 3 s. Les seuils publiés se contredisent (18 % à 40 % pour « bon » hook rate selon le vendeur) : comparer au médian du compte sur le même placement, jamais à un chiffre externe (mbfinotti, MIT). **Ce fichier ne fixe aucun seuil sain.** Ne jamais scaler sur le hook rate seul : deux pubs au même hook rate peuvent différer de plusieurs fois en retour selon qu'elles tiennent jusqu'au CTA ou non.

### 7b. Les falaises

| Falaise | Fenêtre | Cause probable | Réparation |
|---|---|---|---|
| Précoce | 2 s → 25 % | rien ne bouge à l'image 1 ; un élément de marque occupe la place du sujet ; un décor de catalogue sans personne concernée ; un visage qui parle alors que rien n'est en jeu dans le cadre | réécrire les 3 premières secondes ; test de l'image fixe |
| Médiane | 25 → 50 % | transition hook → offre molle, rythme perdu, monotonie, aucune relance à 6-8 s | second hook à 7-10 s (pivot « mais voilà… », interruption visuelle) ; resserrer, ne jamais rallonger |
| Tardive | 50 → 75 % | l'offre ou le CTA est faible, pas le récit | repositionner le CTA, clarifier l'offre |
| Chute finale | 75 → 100 % | carton trop long ou CTA sans image | CTA plus tôt, image qui boucle |

Source : hayesti54 (**sans licence**, idées reformulées) ; seuil « falaise » = perte > 30 % des spectateurs restants à un point de contrôle (non sourcé). Placement du CTA à tester : 70-80 % de la durée sous 20 s, 60 % dès 30 s (hayesti54, sans licence, non sourcé).

### 7c. Ce que les mesures d'attention disent vraiment

- 1,4 s d'attention suffit pour +10 pts de notoriété, 3,9 s pour le rappel assisté (Lumen Research via WARC, cité par mbfinotti — non vérifié à la source). Le « 3 secondes » est une convention née du seuil de comptage des plateformes, pas une loi du comportement.
- Le « 8 secondes d'attention humaine » est un mythe (rapport 2015 sans source) : ne jamais le citer (mbfinotti).
- 50-60 % des pertes se font dans les 3 premières secondes (OpusClip via social-media-skills). Une interruption visuelle toutes les ~4 s tient ~58 % contre ~41 % pour une tête parlante fixe (iart, non sourcé).
- Moins de 14 s d'attention engagée sur un 30 s (0xzgbot, source perdue — ordre de grandeur TVision).
- 15 s contre 30 s à hook égal : 15 s +46 % de visites, 30 s +24 % de conversions (MNTN, 1 800 pubs TV, via vargHQ). Toujours tester les deux montages.
- Une boucle propre de 8 s vue 3 fois = 300 % de visionnage (iart, convention de plateforme) : finir sur l'image 1 quand le placement boucle.

## 8. Procédure de pose des secondes

1. Choisir la durée depuis l'objectif (conversion 6-15 s, considération 15-30 s, notoriété 15-30 s, 60 s seulement si l'histoire le justifie).
2. Écrire la révélation et l'attente qu'elle renverse ; placer la révélation à la seconde que le registre impose (§ 5b).
3. Placer le hero shot ; il tombe toujours après la révélation, jamais avant.
4. Remplir la table de la durée ; marquer 25/50/75 % et chaque frontière de 5 s comme points d'interruption.
5. Compter les mots ; au-dessus du budget, couper des lignes dites qu'un plan montre déjà.
6. Poser le silence avant le CTA, le second hook à 7-10 s si > 15 s.
7. Vérifier la visibilité produit (image 1 ou ≥ 70 % selon le registre) et la marque (jamais dans le hook en film).
8. Écrire la ligne finale pour qu'elle réponde au hook ; décider l'image de boucle.
9. Désigner la métrique qui tranchera (hook rate, Hold-50, CTR) et la variante qui la testera.
