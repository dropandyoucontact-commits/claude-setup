---
name: scenario-court
description: Écrire le scénario et le script d'une fiction courte verticale générée en IA (30 s à 3 min) qui tient jusqu'au bout — court métrage, micro-drame vertical (duanju) et son épisode 1, sketch comique à deux, scène de ménage, scène d'action. Déclencheurs : « écris-moi un sketch », « une scène de couple qui s'engueule », « un épisode 1 de mini-série », « un court de 60 s », « un cliffhanger », « pourquoi ma scène est plate », « rends ce dialogue moins explicatif ». Ne fait PAS : le découpage caméra (mise-en-scene), le hook des 3 premières secondes (viral-hooks), le prompt du modèle (higgsfield), la direction de jeu (higgsfield-acting), les fiches d'assets (commercial-pipeline), l'angle marketing (creative-strategy), le texte d'annonce et le script UGC parlé (ad-copy), et toute vidéo qui part d'une actualité réelle ou d'un format de journal (jt-satirique).
---

# Scénario court — la scène, le dialogue, la chute

Tu écris **ce qui se passe et ce qui se dit**, seconde par seconde, pour une fiction de 30 s à 3 min en 9:16 qui sera générée par Seedance, Veo ou Kling. Le découpage caméra, le prompt et le hook d'attention sont faits par d'autres skills : tu leur livres un script qu'ils n'ont plus qu'à filmer.

| Ce skill | Skill voisin |
|---|---|
| Le turn de la scène, les beats, le sous-texte, les répliques, la chute, le cliffhanger, la structure en secondes | — |
| Dit *quoi* montrer et *quand* ; une ligne « visuel » par beat | `mise-en-scene` : valeur de plan, axe, mouvement, raccords |
| Ouvre la scène in medias res (une règle de dramaturgie) | `viral-hooks` : les 8 leviers d'attention des 3 premières secondes (témoin, confusion délibérée, réalité brisée…) — à appliquer **sur** l'ouverture écrite ici |
| Livre un script horodaté, répliques au plafond de lip-sync (≤ 6 mots en caméra, ≤ 12 hors champ) | `higgsfield` : transforme chaque beat en prompt (vocabulaire caméra, paramètres, négatifs) |
| Nomme le désir, l'obstacle et la tactique de chaque personnage | `higgsfield-acting` : **comment le corps les joue** — posture, regard, rythme du geste, micro-jeu. Frontière : ici tu écris « elle veut qu'on la croie et elle n'ose pas insister » ; `higgsfield-acting` écrit ce que font les épaules et les mains pendant qu'elle n'insiste pas. Tes crochets `[jeu]` sont des **intentions**, pas une direction d'acteur : s'ils deviennent une liste de gestes datés, tu as débordé |
| Nomme les personnages, lieux, objets dont le script a besoin | `commercial-pipeline` (étape 1) : fiches d'assets — passeports de personnage par images de référence, fiche de lieu, fiche d'objet. **Tu ne décris pas comment on fabrique une fiche** : tu dis de qui et de quoi le script a besoin |
| Fiction, sketch, drame | `creative-strategy` (angle marketing), `ad-copy` (texte de l'annonce), `copychief` (relecture d'une copy) |
| Écrit du neuf | `video-teardown` : décortique une vidéo existante ; `social-platforms` : formats et algorithmes |

## 1. Ordre de pensée imposé

1. **Durée et format.** Court unitaire (30 / 60 / 90 s), épisode de série (60-120 s, avec cliffhanger), sketch (12-20 s), scène (45-60 s). La durée fixe le budget de mots, et il y a **deux débits, pas un** : **2,5 mots/s en anglais** (varg, DirectorSKILL — la valeur à garder quand le texte part vers un modèle anglophone), **4,2 mots/s en français parlé vite** (mesure maison, fiche `methode-video-motion-validee`). Attention au calcul : 4,2 mots/s est un débit de **parole**, et environ 25 % d'une vidéo est du silence (pauses de 0,18 s entre phrases, réactions). Le budget est donc `durée × 0,75 × 4,2` : **~95 mots pour 30 s, ~190 pour 60 s** (130-160 quand il faut regarder quelque chose). 4,2 × 60 = 252 mots est un script indisible. En caméra, ce n'est pas le débit qui plafonne mais le lip-sync : ≤ 6 mots par plan synchrone, ≤ 12 hors champ (`mise-en-scene/references/couverture-dialogue.md` §4).
2. **La valeur en jeu et sa charge.** Une seule : confiance, sécurité, statut, amour, liberté. Noter son signe à l'ouverture (+ ou −). Si tu ne sais pas la nommer, tu n'as pas de scène.
3. **Désir, obstacle, tactique — pour chaque personnage.** Qui veut quoi, maintenant, de concret (« récupérer le sac », pas « s'en sortir ») ; qu'est-ce qui l'en empêche ; que fait-il pour y arriver ; que se passe-t-il s'il échoue ; pourquoi maintenant. Deux personnages = deux désirs qui s'opposent **de front**, pas de biais.
4. **La dernière image d'abord.** La chute visible (un objet, un geste) ou le cliffhanger (un regard, une porte, un écran). Puis la première image : son inverse, ou le problème déjà en cours.
5. **Le turn.** Par quelle **action** ou quelle **révélation** la valeur change-t-elle de signe ? À quelle seconde ? (court de 60 s : vers 46-55 s ; épisode : 55-85 % de la durée). Si rien ne bascule, la scène saute.
6. **Les beats entre les deux — et ne pas confondre « beat » et « nouveauté ».** Un **beat** est un **changement de tactique** : le personnage a essayé une chose, elle a échoué, il en essaie une autre. C'est une unité de dramaturgie, et il y en a **2 à 4 par scène** (ce sont les cinq piliers de `higgsfield-acting` : désir, obstacle, tactique, beat, sous-texte ; tu les nommes, il les joue). Nouveau beat seulement si le **comportement** change ; entre deux beats, MAIS ou DONC, jamais « et puis ». La **nouveauté**, c'est autre chose : un élément neuf à l'écran ou à l'oreille **toutes les 2-3 s** (vargHQ), ce qui est une règle de rétention, pas de dramaturgie. Un seul beat peut contenir cinq nouveautés, et cinq nouveautés sans changement de tactique font une scène plate. Le mot `[beat]` entre crochets dans un script de comédie est un troisième usage encore : une pause de 0,5-1 s.
7. **La colonne « public sait / ne sait pas ».** À chaque beat, qui sait quoi. Le gap entre le public et un personnage est le moteur du suspense et du rire.
8. **La version muette.** Écrire la scène sans une réplique. Si elle se comprend, ajouter seulement ce que l'image ne peut pas dire. Le silence est un beat.
9. **Les répliques.** Plafond de lip-sync — ≤ 6 mots en caméra, ≤ 12 hors champ (`mise-en-scene/references/couverture-dialogue.md` §4) —, un locuteur par plan, le mot-clé en dernier, aucune qui dise ce que le personnage veut, aucune qui dise ce que le public sait déjà. La réaction compte plus que la réplique.
10. **Couper.** Entrer plus tard, sortir plus tôt. Couper la première réplique et la dernière ; si ça tient, recommencer.

## 2. La scène

**Le test du turn** (McKee via jtydhr88) : noter la valeur avec son signe à l'ouverture, la renoter à la fermeture. Identique = non-événement = scène d'exposition → couper et tisser l'information ailleurs. Snyder : sur chaque carte, **+/−** (le changement émotionnel) et **><** (qui veut, qui bloque, qui gagne ; un seul conflit). rondoflow : l'issue est **oui-mais / non-et / non-mais / oui-et** ; un oui ou un non sec = la scène n'a pas travaillé. Test de suppression : si on retire la scène, l'histoire le remarque-t-elle ?

**Les cinq étapes de McKee, compressées** (incident déclencheur → complication progressive → crise → climax → résolution) :

| Étape | Ce que c'est | Court 60 s | Épisode 90 s | Sketch 15 s |
|---|---|---|---|---|
| Incident déclencheur | le fait qui déséquilibre la valeur | 3-7 s | 3-10 s | la réplique 1 |
| Complication progressive | les tactiques échouent, l'obstacle grandit | 7-41 s | 10-61 s | la réplique 2 |
| Crise | le pire moment ; le dilemme | 41-46 s | 61-69 s | le `[beat]` |
| Climax | l'action qui tranche ; le turn | 46-55 s | 69-85 s | la chute |
| Résolution | une image, pas une explication | 55-60 s | 85-90 s ou cliffhanger | la réaction |

McKee : incident déclencheur dans le premier quart ; dernier acte le plus court ; les scènes raccourcissent en montant vers le climax. Les quatre maladies d'une scène (jtydhr88) : désir sans opposition ; boucle (même tactique répétée) ; turn trop tôt ou trop tard ; écrit sur le nez. Premier symptôme : trop de beats qui se répètent.

**Entrer tard, sortir tôt** (*late in / early out*). Goldman : on n'entre dans une scène qu'au dernier moment. Hicks : on sort **avant** que le conflit soit résolu. Walter : vaut aussi pour une réplique — sauter au plat principal. Calvisi : entrer le plus tard possible dans le monde, le plus tôt possible dans le script (*Scandal* : page 12 → minute 6). En vidéo courte : la première image est déjà la collision ; la dernière image précède la réconciliation ou la rupture jouée.

**L'exposition par le conflit.** Jamais un personnage ne dit à un autre ce que le public sait déjà. L'information se joue ou sert d'arme. Avant : « On se connaît depuis vingt ans, depuis l'école. » Après : « T'as pas changé depuis le petit con que t'étais à l'école. Sens-moi cette veste. » Le public apprend « vingt ans » et « école » sans s'en apercevoir. Exposition légitime seulement par conflit (deux versions du même fait), curiosité (quelqu'un ne sait vraiment pas) ou révélation sous pression (rondoflow). Microck : n'est pas une scène — exposé, passé, voyage, temps qui passe ; est une scène — dispute, négociation, poursuite, révélation.

**Le sous-texte.** But de surface ≠ but réel ; s'ils coïncident, pas de scène. Les personnages ne disent jamais ce qu'ils veulent : la jalousie devient une remarque sur le « joli bureau d'angle » ; la dispute sur la vaisselle parle de respect ; « Tu m'aimes ? » — « Je suis encore là, non ? » : la réponse évite la question, et c'est la réponse. Le sous-texte écrit en texte est injouable (dîner aux chandelles « je t'aime, je t'aime » sincère = « mort comme un chien sur la route »). Clarté et sous-texte ne s'opposent pas : le spectateur doit sentir ce qu'il y a dessous.

Détail, procédure en 5 étapes, six formes de scène de dialogue, huit ouvertures de Lu Jun : lire `references/scene-et-dialogue.md`.

## 3. Dialogue — douze règles, en bref

| # | Règle | Avant → après |
|---|---|---|
| 1 | Le dialogue est une action : que veut-il **maintenant**, quelle action, quels mots l'exécutent | « Je suis en colère contre toi. » → « Tu devrais l'appeler. Demain. » |
| 2 | But de surface ≠ but réel | « Je t'aime encore. » → « Elle a changé de coiffure. Mal. » |
| 3 | Personne ne dit ce que le public sait ; l'exposition est une arme | « Tu es mon frère depuis toujours. » → « Maman t'a toujours préféré. Même mort. » |
| 4 | Pas d'écrit sur le nez (*on-the-nose*) ; exceptions : « qu'est-ce que tu veux ? », « ça va ? » | « J'ai peur de te perdre. » → « T'as mis ta ceinture ? » |
| 5 | Jamais deux personnages d'accord ; chaque réplique défie la suivante | « Oui. » / « Oui. » → « Oui. » / « Tu dis ça. » |
| 6 | Pas de beat répété : même tactique avec d'autres mots = couper (supplier trois fois = comédie involontaire) | trois « s'il te plaît » → un « s'il te plaît », puis elle sort les clés |
| 7 | Le dernier mot de la réplique est le mot-clé qui déclenche la réaction | « Le sac, il l'a pris pour l'enveloppe. » → « Il voulait pas le sac. L'enveloppe. » |
| 8 | Économie : on n'est pas payé au mot (« Ton enfance ? » — « Courte. ») ; interdits : « je pense », « tu sais », « écoute », les « ! », la parenthèse de jeu presque jamais | « Écoute, je pense que tu devrais… » → « Pars. » |
| 9 | Cache les noms : si on ne sait plus qui parle, les personnages n'existent pas ; test inverse : si la tirade tient dans une autre bouche, c'est un discours | donner à chacun un rythme, un registre, une façon d'esquiver, un rapport au silence |
| 10 | Duologue raide → trialogue : les deux se battent à travers un troisième objet (le thermostat, le chien, le vin) | « Tu m'écoutes pas. » / « Si. » → « Il fait dix-neuf. » / « Il fait chaud. » |
| 11 | Pas de match de tennis : quelqu'un domine, quelqu'un coupe, quelqu'un se tait | répliques de même longueur en alternance → une longue, une de deux mots, un silence |
| 12 | D'abord demander si la scène peut se passer de dialogue ; le silence est un beat (Bergman : la serveuse ramasse la serviette, inspire — le tournant est dans l'inspiration) | la réplique de pardon → il remonte le thermostat et sort |

Trois figures qui font plus que les répliques : l'**interruption** (une réplique coupée par une action ou un son — la réplique n'est jamais finie), la **non-réponse** (la question reste en l'air 1,5 s, l'autre parle d'autre chose), la **répétition déformée** (« Tu l'as lu. » — « Je l'ai vu. »). Pour l'IA : **≤ 6 mots par réplique en caméra** (≤ 12 hors champ), un locuteur par plan, visage de face ou trois quarts, une réplique qui bascule (chuchoté → crié) coupée en deux plans, les réactions écrites comme des beats à part entière (le modèle les joue mieux que les mots).

## 4. Ouvrir sans présentation — huit façons

Règle-cadre (Lu Jun) : près du climax plutôt que loin, simple plutôt que touffu, en mouvement plutôt qu'immobile — **« le théâtre craint l'explication par-dessus tout »**. August : imaginer trois ouvertures avant d'en écrire une.

| Façon | Mécanique | Exemple (première image + première réplique) |
|---|---|---|
| Action en cours | la collision a déjà eu lieu | Une main arrache un sac ; elle se retourne. |
| Dialogue en cours sur un conflit | la première réplique est un refus ou une accusation | « T'as encore baissé. » (le thermostat est déjà à 19) |
| Question posée par l'image | un détail anormal, sans commentaire | Un téléphone s'allume sur un tableau de bord : IL SAIT. PARS CE SOIR. |
| Contradiction / contre-pied | le personnage fait l'inverse de ce qu'on attend de lui | Le livreur à la table d'honneur regarde un virement de 5 milliards et éteint l'écran. |
| Objet incongru | une chose qui n'a rien à faire là | Un fauteuil de dentiste au milieu d'un rond-point, à l'heure de pointe ; quelqu'un y est assis, bouche ouverte. |
| Résultat avant la cause | la scène-conséquence d'abord, puis « trois ans plus tôt » | Tribunal. « Coupable. Mais avant, je veux que tout le monde sache. » |
| Coup de massue / ultimatum | la règle tombe à la première phrase | « Trois paniers par soir. Point. » |
| Pris au piège | le personnage est déjà coincé et interrogé | Surpris à califourchon sur le mur, le lapin volé sous le bras. |

Interdits : voix off de contexte, paysage vide, réveil-brosse à dents-petit déjeuner, « il était une fois », plus de 3 personnages dans la première scène. Le spectateur reste pour le suspense, pas pour l'univers (Nomi). Le levier d'attention à poser sur cette ouverture (témoin, confusion délibérée, réalité brisée) : `viral-hooks`.

## 5. Les chiffres qui structurent

| Repère | Valeur | Source |
|---|---|---|
| Crochet posé | avant 3 s en flux ; premier mot avant 0,5 s ; ≤ 7 mots **écrits** à l'écran dès l'image 0 (longueur de texte à l'écran, pas un plafond de lip-sync) | vargHQ, picsart |
| Catalyseur / décision / point médian / pire moment | ≈ 10 % / 20-23 % / 50 % / 68 % | Save the Cat et Field via jtydhr88 |
| Épisode : rappel ou plein conflit / escalade / turn / cliffhanger | 0-10 % / 10-55 % / 55-85 % / 3-8 dernières s | majiayu |
| Épisode suivant : réponse au suspense précédent | ≤ 5 s, puis nouvelle tension | 0xsline |
| Épisode 1 : accrocher | seconde 1 choc, seconde 3 conflit, seconde 5 « et ensuite ? » ; tout établi en 30 s | 0xsline |
| Nouveauté | toutes les 2-3 s ; pic émotionnel toutes les 20-30 s | vargHQ |
| Plan moyen en dialogue / réaction tenue / pause de dialogue | 1,5-3,5 s / 1-2 s / 0,6 s sauf émotion | majiayu |
| Boucles de rétention | crochet < 2 s ; intensificateur < 15 s ; relance à 35-60 % | picsart |
| Fin | coupe ≤ 1,5 s après le dernier mot ; jamais de récapitulatif ni de fondu | picsart, vargHQ, majiayu |
| Pause **avant** la chute | 0,5-2 s de silence : `[beat]` 0,5-1 s, `[pause]` 1-2 s. Jamais après la chute | sethmblack, TapCanvas |
| Respiration **après** un choc ou un rire | 2,5-4 s d'un plan presque vide, ambiance seule, sans coupe dedans — ce n'est pas la même chose que la pause ci-dessus et ça ne se joue pas au même endroit | règle de parc, voir `mise-en-scene` § 8 |
| Retournement comme cliffhanger | 5-7 fois maximum par série ; jamais le même type 3 épisodes de suite | 0xsline |

Grilles complètes de 30 s, 60 s, 90 s, 2 min et 3 min, conversion Save the Cat sur cinq durées, gabarit de sketch à deux, gabarit d'épisode, épisode de 70 s écrit : `references/beat-sheets.md`. Épisode en secondes, courbe de rythme, 6 modèles d'ouverture, 6 cliffhangers avec un exemple écrit chacun, matrice de satisfaction, antagoniste, paliers payants chiffrés, saison : `references/micro-drame.md`.

## 6. Comédie — choisir la mécanique avant d'écrire

| Tu veux… | Mécanique | Règle chiffrée |
|---|---|---|
| Une chute unique | Misdirection normal → espoir → pire | setup < 15 mots |
| Une dispute qui monte sans crier | Escalade en 6 phases, une seule chose folle, ton plat | 2-3 crans en phase 4, règle de trois |
| Un personnage calme qui fait rire | Faire-valoir qui ne craque jamais ; le gap tenu des deux côtés | il répond en ≤ 5 mots |
| Casser une attente | Déflation : grosse montée, chute minuscule | pause 1-2 s avant |
| Récompenser qui a tout regardé | Rappel : planté comme blague seule, 2-3 retours, le dernier retourné | ≥ 2-3 segments entre plante et retour |
| Dire une chose vraie sans drame | Vérité → vacherie → vérité | 1-2 s sur le visage avant la vacherie |
| Finir fort | Bouton : objet visible puis un plan de deux mots | 1 s de silence avant ; coupe ≤ 1,5 s après |

Définitions, exemples écrits, modes de panne et les timings que les sources ne donnent pas : `references/mecaniques-comiques.md`. Un adjectif « drôle » dans une didascalie ou un prompt ne se joue pas : remplacer par une action ou un objet. La caméra et la physique restent sérieuses.

## 7. Contraintes de la génération IA qui changent l'écriture

- **Une génération dure 4 à 15 s selon le modèle**, et on découpe sur des blocs de 8-12 s. Faire tomber chaque bloc sur une coupe du script ; raccorder par une image du plan précédent (continuité lumière/lieu seulement).
- **≤ 6 mots par réplique en caméra** (≤ 12 hors champ, plafond de lip-sync), un locuteur par plan, bouche fermée avant et après ; pas de chevauchement de voix. Une tirade se découpe en plans de réaction.
- **Un seul déplacement du sujet et un seul de la caméra par plan ; jamais deux actions simultanées** (*One-Move Rule* de `higgsfield-camera` ; formulation d'origine vargHQ `varg-video-prompting`, MIT — « one move per shot, never blend two moves »). Écrire l'action que le modèle sait rendre : courir, tomber, ouvrir, lâcher ; pas de corps à corps.
- **Personnages tenus par des images de référence** : la fabrication des fiches (ce qu'une référence copie, combien d'images par personnage, comment on les verrouille) est l'**étape 1 de `commercial-pipeline`** — ne la redécris pas. Ce que le scénario décide : un **marqueur d'identité unique** par personnage, visible dans chaque plan (veste rouge, bandeau noir), et **≤ 3 personnages par scène, 2 de préférence**.
- **Pas de texte lisible dans le décor** ; les cartons (« 19 », « IL SAIT ») s'ajoutent au montage.
- **Son diégétique** : écrire les bruits qui jouent (bouilloire, clignotant, grille) ; pas de musique dans le script, elle arrive au montage. Silence écrit comme un beat (« 4,0-4,8 s : elle ne dit rien et ne bouge pas »).
- **Statut par le silence** : le personnage qui a le pouvoir est celui qui parle le moins. Écris-le comme une **note d'intention** en tête de script (« le pouvoir est chez B, qui dit 9 mots sur 40 ») et non comme un choix de plan : décider qu'il n'aura pas de plan héroïque est une décision de `mise-en-scene`, pas la tienne (idée reformulée, même source).
- **Demander 2 s de moins** que ce que le dialogue semble exiger : les répliques finissent tôt et le dernier plan traîne (vargHQ).
- Le personnage ne dit jamais son nom ; aucun nom propre dans la description du mouvement ; pas de « regarde vers » si on veut un plan de dos (Nomi).

## 8. Exemple travaillé — sketch à deux de 15 s, « La facture »

**Brief.** Deux colocataires IA d'une marque de plaids, hiver, 15 s, chute puis appel à l'action.

**Raisonnement.** 1) 15 s → 47 mots de budget (15 × 0,75 × 4,2), mais le plafond qui mord ici est le lip-sync : 4 répliques de ≤ 6 mots, soit une vingtaine de mots dits. 2) Valeur : la complicité (− → +). 3) A veut qu'on la croie frileuse ; B veut la prendre en faute ; tactiques : affirmer / démasquer. 4) Dernière image : les deux rient sous le même plaid. Première image : A seule sous le plaid, B debout. 5) Turn : A avoue au lieu de se défendre — B n'a plus rien à gagner, la valeur bascule par l'aveu. 6) Beats : affirmation → démasquage (méta) → `[beat]` → aveu → rire → CTA par A. 7) Public sait dès l'image 1 que ce sont des IA (le rendu le dit) ; B le nomme : surprise par franchise. 8) Muette : A grelotte, B montre l'écran, A hausse les épaules, les deux rient — ça tient. 9) Répliques ≤ 6 mots. 10) Coupé : la réplique « non mais sérieusement » qui justifiait.

```
INT. SALON — SOIR. Neige derrière la fenêtre. A (brune, pull vert) sous un plaid, serrée. B (blonde, pull crème) debout, une facture à la main.

#  t        Réplique / action                                     [jeu]                   Public sait / ne sait pas
1  0:00-02  A : « J'ai trop froid. »                              [grelotte vraiment]      sait : elles sont IA ; A joue la frileuse
2  0:02-05  B : « Tu mens. T'es une IA. »                         [plate, montre la facture : 0 € de chauffage]
3  0:05-06  [beat 0,8 s] A regarde la facture. Rien ne bouge.                               espoir de B : la prendre en faute
4  0:06-08  A : « Ouais. Je suis une mytho. »                     [sans se défendre]       turn : l'aveu retire le pouvoir à B
5  0:08-11  B s'assoit, tire le plaid sur elle. Les deux rient.   [la réaction est le bouton]
6  0:11-15  A (à la caméra, toujours sous le plaid) : « Le plaid, lui, il est vrai. »  [même ton]   CTA après le rire, par celle qui a avoué
```

**Comptes recalculés.** Mots parlés : 3 + 5 + 5 + 6 = **19**, soit 40 % du budget de 47 : le reste du temps est du jeu et du silence, ce qui est voulu sur un sketch. Durées : 2 + 3 + 1 + 2 + 3 + 4 = **15 s**. Répliques en caméra : 3, 5, 5 et 6 mots — toutes ≤ 6, la dernière pile au plafond. Changements de tactique (beats au sens dramaturgique) : 3 — affirmer, démasquer, avouer, dans la fourchette 2-4. Nouveautés à l'écran : 6 en 15 s, soit une toutes les 2,5 s. Générations : 2 blocs (0-8 s et 8-15 s), dans la fenêtre 4-15 s et proches de la cible 8-12 s.

Mécaniques : misdirection (normal → B croit gagner → A avoue), déflation (l'aveu minuscule), gap fermé par le personnage (méta), bouton = réaction partagée, second retournement en 6 mots (« lui, il est vrai »). Pour la génération : 1 lieu, 2 personnages de référence, 2 générations (0-8, 8-15), la facture est un accessoire sans texte lisible.

## 9. Exemple travaillé — épisode 1 d'un micro-drame vertical de 75 s, « Le hall »

**Brief.** Micro-drame vertical, saison de 60 épisodes, épisode 1 gratuit, 75 s, un lieu, deux personnages. Genre : revanche en milieu de travail. Modèle d'ouverture : la gifle directe (`references/micro-drame.md` § 5).

**Raisonnement, dans l'ordre imposé.**

1. **Durée et débit.** 75 s en français → budget `75 × 0,75 × 4,2` = **236 mots dits**. Mais le plafond qui mord est le lip-sync : toutes les répliques sont en caméra, donc ≤ 6 mots chacune. On visera cinq répliques, soit une vingtaine de mots : l'épisode se joue à l'image, ce qui est l'intérêt du modèle « gifle directe » — le héros ne se défend pas.
2. **Valeur en jeu.** La dignité. Signe à l'ouverture : **−** (elle est à genoux et on la chasse). Signe à la fermeture : **+** (elle ouvre une porte que l'autre ne peut pas ouvrir).
3. **Désirs opposés de front.** Ils portent sur le même objet : la présence de Solène dans le hall. MME BRACHET veut qu'elle disparaisse **avant que la visite arrive** ; SOLÈNE veut rester jusqu'à la fin de son service, parce qu'elle a besoin de sa couverture jusqu'au matin. Tactiques de Brachet : écarter → humilier → exclure. Tactiques de Solène : négocier → obéir en silence → agir.
4. **Dernière image d'abord.** Un pouce qui bloque une porte d'ascenseur, et une heure qui vient de changer. Première image : son inverse exact — une main au sol, une serpillière, des talons qui approchent par le haut du cadre.
5. **Le turn.** Par une **action**, pas une phrase : Solène sort une seconde carte d'une poche intérieure et ouvre l'ascenseur de direction. À 0:43-0:52, soit **57-69 %** de la durée : dans la fenêtre 55-85 % du micro-drame. L'identité est **suggérée, pas révélée** — règle d'épisode 1 : le public peut savoir qu'elle n'est pas femme de ménage, pas qui elle est.
6. **Choix du cliffhanger : Péril à horloge.** Pourquoi celui-là et pas un autre — le **Retournement** est un capital limité à 5-7 par série, on ne le dépense pas à l'épisode 1 ; l'**Émotion coupée** exige au moins une demi-épisode de préparation affective, qu'un épisode 1 n'a pas ; la **Révélation** est déjà consommée par le turn à 0:52, et deux révélations dans un même épisode font de la surcharge (0xsline). Reste une horloge qui se raccourcit : le conseil passe de 9 h à 7 h, et elle a encore cinq heures de service.
7. **Le détail qui trahit est unique et muet** (contrainte du modèle d'ouverture) : au temps 6, sous la blouse, le col d'une chemise repassée. Un seul, jamais commenté.
8. **Version muette.** Elle frotte, on la chasse, on renverse son seau, on jette son badge dedans, elle se relève, elle ouvre la porte interdite, l'heure change. Ça tient entièrement sans une réplique : le dialogue n'ajoute que ce que l'image ne peut pas dire.

```
TITRE — « Le hall », épisode 1 — 75 s — micro-drame vertical 9:16 — 1 lieu — 2 personnages
Valeur en jeu : la dignité (− → +)
Désirs : BRACHET veut qu'elle disparaisse avant la visite ; SOLÈNE veut finir son service
Turn : à 0:43-0:52, par une action (la seconde carte ouvre l'ascenseur de direction)
Cliffhanger : Péril à horloge, 4 dernières secondes
Dernière image : un pouce bloque la porte.   Première image : une main au sol, des talons qui approchent.

INT. HALL D'UNE TOUR DE BUREAUX — NUIT. Sol en pierre clair, une seule rangée de lampes allumée. Un seau, une serpillière, une tache sombre près de l'accueil.

#   t          Réplique / action (≤ 6 mots en caméra)                      [jeu]                        Public sait / ne sait pas
1   0:00-0:04  Solène à genoux frotte la tache. Des talons entrent par le haut du cadre.  [elle ne lève pas la tête]   sait : elle est au sol ; ignore : pourquoi
2   0:04-0:09  BRACHET : « Pas pendant la visite. »                        [sans s'arrêter de marcher]   une visite est attendue, on ne sait pas de qui
3   0:09-0:14  SOLÈNE : « J'ai fini dans dix minutes. »                    [elle négocie, calme]         elle veut rester : premier indice
4   0:14-0:21  Brachet renverse le seau d'un pied. L'eau gagne la tache.   [geste bref, économe]         MAIS la négociation est refusée
5   0:21-0:27  BRACHET : « Tu recommences. Tout. »                         [elle regarde sa montre]      l'horloge entre dans l'épisode
6   0:27-0:33  Solène recommence, sans un mot. Sous la blouse, le col d'une chemise repassée.  [obéir est une tactique]   détail qui trahit, non commenté
7   0:33-0:39  Brachet arrache le badge de sa poche, le jette dans le seau. BRACHET : « Demain, tu rentres pas. »   [satisfaite]   DONC elle est exclue
8   0:39-0:43  [beat 1,5 s] Solène regarde le seau. Rien ne bouge.         [le silence est le beat]      le public attend une réplique : il n'y en a pas
9   0:43-0:48  Elle se relève. Une seconde carte sort d'une poche intérieure.   [aucun triomphe]         sait : elle a autre chose ; ignore : quoi
10  0:48-0:52  Elle la passe au lecteur de l'ascenseur de direction. Les portes s'ouvrent.   [elle ne regarde pas Brachet]   TURN : la valeur change de signe
11  0:52-0:57  SOLÈNE : « Vous, demain, restez chez vous. »                [même ton qu'au temps 3]      la riposte, avec ses propres mots
12  0:57-1:03  Elle entre. Son téléphone s'allume dans sa main.            [elle lit en montant]         nouvelle information en route
13  1:03-1:11  CARTON : CONSEIL AVANCÉ — 7 H. Gros plan sur son œil.       [elle calcule]                péril : l'horloge se raccourcit
14  1:11-1:15  Son pouce bloque la porte. Smash cut : ÉPISODE 2 →          [immobile]                    coupe sur la question
```

**Vérification chiffrée, recalculée à la main.**

- **Mots dits par réplique** : temps 2 = 4 (« Pas / pendant / la / visite ») · temps 3 = 5 (« J'ai / fini / dans / dix / minutes ») · temps 5 = 3 (« Tu / recommences / Tout ») · temps 7 = 4 (« Demain / tu / rentres / pas ») · temps 11 = 5 (« Vous / demain / restez / chez / vous »). **Somme = 21 mots** pour un budget de 236 : 9 % du budget, le reste est du jeu, du silence et de l'image. Toutes les répliques sont en caméra et **toutes ≤ 6 mots**, la plus longue à 5.
- **Somme des durées** : 4+5+5+7+6+6+6+4+5+4+5+6+8+4 = **75 s**. Vérification par paliers : 9 à la fin du temps 2, 21 au temps 4, 33 au temps 6, 43 au temps 8, 52 au temps 10, 63 au temps 12, 75 au temps 14.
- **Générations à 8-12 s** : 7 blocs qui tombent tous sur une coupe du script — 0:00-0:09 (9 s) · 0:09-0:21 (12) · 0:21-0:33 (12) · 0:33-0:43 (10) · 0:43-0:52 (9) · 0:52-1:03 (11) · 1:03-1:15 (12). Somme 9+12+12+10+9+11+12 = **75 s**. Tous dans la fenêtre 4-15 s et dans la cible 8-12 s.
- **Positions.** Catalyseur à 0:04-0:09 (5-12 %, la cible est ≈ 10 %) · turn à 0:43-0:52 (57-69 %, fenêtre 55-85 %) · information du cliffhanger à 1:03 (84 %) · coupe sur la question à 1:11 (95 %) · carte d'épisode sur les 4 dernières secondes (fourchette 3-8 s). **Écart assumé** : Save the Cat place une décision du héros à 20-23 %, soit 15-17 s ; ici Solène décide d'obéir au temps 6 (36-44 %). La grille du micro-drame n'a pas de repère « décision » — elle a une escalade de 10 à 55 % — et c'est elle qui prime sur un épisode.
- **Beats dramaturgiques** (changements de tactique) : 3 pour Brachet (écarter, humilier, exclure), 3 pour Solène (négocier, obéir, agir) — chacun dans la fourchette 2-4 par scène.
- **Nouveautés** : les 14 temps se découpent en 28 plans au montage (plan moyen 2,7 s, dans la fourchette 1,5-3,5 s de majiayu), soit **une nouveauté toutes les 2,7 s**, dans la cible 2-3 s.
- **Production** : 1 lieu, 2 personnages de référence, marqueurs d'identité — blouse grise pour Solène, manteau clair et montre pour Brachet. Aucun texte lisible dans le décor : l'heure et le carton d'épisode s'ajoutent au montage. Son diégétique : serpillière, eau renversée, bip du lecteur, porte d'ascenseur.
- **Satisfaction et antagoniste** : point de satisfaction de type « écrasement par l'identité », intensité ★★ (révélation devant une seule personne — l'épisode 1 ne dépense pas plus) ; Brachet est un antagoniste de palier **moyen** et non petit, puisqu'elle gagne deux fois sur trois dans l'épisode, et son mobile tient en une phrase : la visite du lendemain décide de son poste.

## 10. Standard de sortie

```
TITRE — durée — format (court / épisode n / sketch / scène) — lieux (n) — personnages (n)
Valeur en jeu : X (signe ouverture → signe fermeture)
Désirs : A veut … ; B veut … (opposés de front)
Turn : à 0:xx, par [action / révélation]
Dernière image : …   Première image : …

INT./EXT. LIEU — MOMENT. Action au présent, deux phrases, objets nommés.

#  t          Réplique / action (≤ 6 mots en caméra)          [jeu : une action, pas un adverbe]    Public sait / ne sait pas
1  0:00-0:03  …
…
Blocs de génération : 0:00-0:08 / 0:08-0:16 / … (une coupe entre chaque)
Accessoires de référence : …   Marqueur d'identité par personnage : …
Mécaniques utilisées : …
```

Durée d'une réplique = mots ÷ débit de **sa** langue (4,2 en français, 2,5 en anglais) + pauses de 0,18 s entre phrases. La ligne « visuel » dit *quoi* voir, pas depuis quelle place ni avec quelle optique : ça, c'est `mise-en-scene`.

## 11. Checklist avant livraison

- [ ] Un turn par scène ; la valeur a changé de signe ; l'issue est oui-mais / non-et / non-mais / oui-et.
- [ ] Chaque personnage veut quelque chose de concret, maintenant ; les désirs s'opposent de front.
- [ ] Ouverture sans présentation : première image = collision ; aucun nom, aucun « bonjour », ≤ 3 personnages.
- [ ] Aucune réplique explicative ; aucun personnage ne dit ce que le public sait ou ce qu'il veut.
- [ ] Toutes les répliques en caméra ≤ 6 mots (≤ 12 hors champ, `mise-en-scene/references/couverture-dialogue.md` §4) ; le mot-clé en dernier ; un locuteur par plan.
- [ ] Une nouveauté à l'écran ou à l'oreille toutes les 2-3 s ; 2 à 4 **beats** (changements de tactique) dans la scène ; entre deux beats, MAIS ou DONC.
- [ ] La version muette se comprend.
- [ ] Au moins une interruption, une non-réponse ou une répétition déformée.
- [ ] Chute visible (objet ou geste) ou cliffhanger dans les 5 dernières secondes ; coupe ≤ 1,5 s après le dernier mot.
- [ ] Colonne « public sait / ne sait pas » remplie ; le gap est exploité au moins une fois.
- [ ] Budget de mots respecté au débit de la langue du script (4,2 mots/s en français, 2,5 en anglais) ; durée de chaque réplique estimée.
- [ ] Blocs de génération de 4-15 s (viser 8-12 s) qui tombent sur des coupes ; accessoires et marqueurs d'identité listés.
- [ ] Épisode : type de cliffhanger nommé, différent des deux précédents ; l'épisode suivant s'ouvre sur sa conséquence.

## 12. Anti-patterns

- **La présentation** : « Bonjour, je m'appelle Léa, j'ai 28 ans et… » — personne n'a de nom à l'écran avant qu'un autre le prononce dans un conflit.
- **Le dialogue d'exposition** : « Comme tu le sais, on est mariés depuis quinze ans. »
- **Le sous-texte dit à voix haute** : « Je suis en colère parce que tu ne me respectes pas. »
- **La fin qui explique la blague** ou le retournement ; le plan de réaction de trop ; la musique qui souligne.
- **Le match de tennis** : répliques de longueur égale en alternance parfaite.
- **Trois fois la même tactique** (supplier, supplier, supplier).
- **Le turn par une phrase** (« c'est fini ») au lieu d'une action.
- **L'escalade par le volume** : trois cris de plus en plus forts qui ne changent ni l'enjeu ni l'information.
- **Le faux suspense** résolu dans les 10 premières secondes de l'épisode suivant.
- **Le récapitulatif** en ouverture d'épisode, le fondu en fin d'épisode.
- **L'adjectif dans la didascalie** (« drôle », « ironique », « ému ») au lieu d'une action.
- **Le corps à corps de 6 s à générer**, le texte lisible dans le décor, trois personnages qui parlent dans le même plan.

## Quand lire quelle référence

| Situation | Fichier |
|---|---|
| La scène est plate, le dialogue explique, besoin de la procédure McKee en 5 étapes, des 6 formes de scène de dialogue, des 8 ouvertures de Lu Jun avec exemples | `references/scene-et-dialogue.md` |
| Court de 30 s, 60 s, 90 s, 2 min ou 3 min à structurer en secondes ; budget de mots ; les trois boucles ; gabarit de sketch à deux ; gabarit d'épisode de micro-drame ; l'épisode de 70 s écrit | `references/beat-sheets.md` |
| Épisode de micro-drame, épisode 1, courbe de rythme et outils d'accélération, 6 modèles d'ouverture, 6 cliffhangers avec exemples écrits et rotation, matrice de satisfaction par besoin du spectateur, conception de l'antagoniste, paliers payants chiffrés, saison, erreurs qui tuent un épisode | `references/micro-drame.md` |
| Sketch, scène comique, chute, escalade, rappel, bouton | `references/mecaniques-comiques.md` |
| Scène de ménage, sketch à deux « vidéo neige », scène d'action de 30 s, épisode 1 — gabarits et exemples complets | `references/gabarits.md` |
