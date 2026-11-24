# Mécaniques comiques — définition, exemple écrit, mode de panne, timing

Dix mécaniques. Pour chacune : ce que c'est, un exemple écrit pour une vidéo verticale IA à deux personnages (répliques ≤ 6 mots en caméra, plafond de lip-sync — `mise-en-scene/references/couverture-dialogue.md` §4), comment ça rate, et les secondes. **Les sources ne donnent presque aucun timing** (constat des évaluations D et A) : chaque chiffre ci-dessous est soit sourcé, soit marqué « (ordre de grandeur, non sourcé) ».

Chiffres de timing qui tiennent, toutes mécaniques confondues :

| Chiffre | Source |
|---|---|
| Setup < 15 mots | sethmblack / misdirection-architecture (MIT) |
| `[beat]` 0,5-1 s · `[pause]` 1-2 s · `[long pause]` 2-3 s ; la pause se place AVANT la chute, jamais après | sethmblack / timing-architecture (MIT) |
| Une seconde de silence tenue sur les visages avant le retournement ; chute = objet visible ; payoff dans le créneau 26-30 s d'un sketch de 30 s | TapCanvas / seedance-meme-comedy (22 cas goodcase.ai) |
| Sketch 15 s : 6 plans, 6 répliques, chute de deux mots à 6,8 s ; parodie 42 s : beat attendu à 32 s, second retournement 38-42 s en deux mots ; 2-3 s par plan, 2,5 mots/s (débit anglais mesuré par la source ; en français, 4,2 mots/s) | vargHQ / ai-parody-video (MIT, 9 clips mesurés) |
| Topper : 2 surenchères maximum ; running gag : 2-3 retours, le dernier retourné ; 2-4 vraies blagues par page de sitcom | jtydhr88 / sw-sitcom-comedy (MIT), d'après Smith |
| Rappel : minimum 2-3 segments entre la plante et le retour | sethmblack / callback-setup (MIT) |
| Escalade : 2-3 crans en phase 4, règle de trois | sethmblack / escalation-architecture (MIT) |
| Le public donne ~30 s à un sketch de scène avant de décider ; en flux vertical ce délai est de 3 s | FerroxLabs (AGPL, idée reformulée) ; 3 s : vargHQ video-script |

---

## 1. Misdirection (fausse piste en trois temps)

**Définition.** Normal → espoir → pire. Le setup doit laisser croire *sincèrement* à une issue positive ; la chute livre un résultat **pire que s'il n'y avait pas eu d'espoir**, concret et visible. Cinq façons de subvertir (sethmblack) : réponse du mauvais domaine (violation de catégorie), mot positif à sens négatif, solution pire que le problème, rejet par celui qui devait aider, lecture littérale.

**Exemple écrit (duo, cuisine, 12 s).**
```
ELLE  (tend un gâteau)        « J'ai suivi ta recette. »           [normal, 4 mots]
LUI   (sourit, prend)          « Enfin un truc mangeable. »         [espoir]
      [beat 0,8 s — il mord. Visage neutre.]
LUI                            « Tu l'as suivie de loin. »          [pire : lecture littérale]
```
Le setup fait 9 mots. L'espoir est joué (il sourit vraiment). La chute est pire que « c'est raté ».

**Modes de panne.**
- Setup déjà négatif (« j'ai encore tout raté ») : plus d'espoir à trahir.
- Chute abstraite (« et ça s'est mal passé ») : rien à voir. Remplacer par un objet ou un geste.
- Chute qui prend le même chemin que le setup (elle dit qu'elle cuisine mal, il dit qu'elle cuisine mal).
- Setup > 15 mots : le public a oublié l'espoir.

**Quatre tests** (sethmblack) : l'anticipation existe-t-elle ? le résultat est-il *pire* que sans espoir ? est-ce une surprise ? est-ce spécifique ?

**Timing.** Setup 2-4 s, espoir 1-2 s, `[beat]` 0,5-1 s, chute ≤ 1,5 s (ordre de grandeur, non sourcé, dérivé des 2,5 mots/s de vargHQ ; en français à 4,2 mots/s, la chute tient en 1 s).

---

## 2. Escalade en six phases et « 2-3 crans »

**Définition** (sethmblack, d'après Cleese). Prémisse banale → un seul décalage plausible → extension par logique rigoureuse → 2-3 crans parallèles (règle de trois) → pic livré avec le plus grand sérieux → fin sèche, rappel, ou confiance obstinée. **Ne jamais rompre le ton.** Variante en trois paliers (sethmblack / tim-robinson) : reconnaissable → gênant → surréaliste. Variante dramatique à quatre scènes (idée reformulée, FerroxLabs) : petit mensonge → mensonge plus gros pour le couvrir → dispositif absurde → effondrement.

**Exemple écrit (duo, voiture à l'arrêt, 40 s).**
```
P1 normal     LUI   « Le GPS dit à gauche. »
P2 décalage   ELLE  « Le GPS ne connaît pas Bernard. »
P3 extension  LUI   « Bernard, c'est… une rue ? »
              ELLE  « Bernard est un rond-point. Il m'en veut. »
P4 crans ×3   ELLE  « Deuxième sortie, il m'a calée. »
              ELLE  « Troisième, crevaison. »
              ELLE  « Quatrième, j'ai pleuré dans un Buffalo Grill. »
P5 pic        ELLE  (très sérieuse) « On passe par l'Espagne. »
P6 fin        LUI   (regarde le GPS, puis elle)  « …D'accord. »   [confiance obstinée acceptée]
```
Le monde reste réel ; une seule chose est folle (le rond-point a une rancune). Les trois crans sont parallèles (sortie → conséquence).

**Modes de panne** (sethmblack, six anti-patterns) :
- Briser le personnage (« je sais que c'est ridicule mais… »).
- Sauter de la prémisse au pic en un saut.
- Prémisse déjà bizarre au départ (il faut du banal).
- Fin qui désamorce (« je rigole »).
- Escalade qui change de lieu ou d'insulte sans changer d'enjeu, de coût ou d'information (majiayu, règle d'escalade).
- Deux éléments absurdes à la fois : c'est le chaos, pas la comédie (une seule chose anormale par sketch).

**Timing.** Aucune source ne donne la durée des phases. Ordre de grandeur, non sourcé, pour 40 s : P1-P2 = 0-8 s, P3 = 8-15 s, P4 = 15-30 s (un cran toutes les 4-5 s), P5 = 30-36 s, P6 = 36-40 s. Pour un 60 s, étirer P4, jamais P1.

---

## 3. Règle de trois (et le quatrième temps retourné par l'autre)

**Définition.** Deux éléments installent un motif, le troisième le casse. Variante Fleabag (jtydhr88, d'après Waller-Bridge) : adjectif → preuve toujours un cran *sous* l'adjectif → et c'est **l'adversaire** qui retourne, pas le héros : « He's a feminist. » / « I have a sister. »

**Exemple écrit (duo, 10 s).**
```
LUI   « Il est fiable. Ponctuel. »
LUI   « Et il a une Twingo. »
ELLE  (sans lever les yeux)  « Donc il est seul. »      [4e temps, retourné par l'autre]
```

**Modes de panne.** Le troisième élément est juste « plus gros » au lieu d'être *ailleurs* ; quatre éléments au lieu de trois (le motif s'use) ; le héros se retourne lui-même (perte du jeu de statut).

**Timing.** Les trois éléments en 3-5 s, un par plan ou un seul plan fixe ; le quatrième temps après `[beat]` 0,5 s (ordre de grandeur, non sourcé).

---

## 4. Faire-valoir (*straight man*) et le gap sincère

**Définition** (sethmblack / collaborative-straight-man, d'après Chapman). Une ancre digne qui pose les questions droites, réagit avec mesure, **ne craque jamais** ; ses réactions mesurées sont elles-mêmes drôles. Version faux-documentaire (pantheon-org / tekhne, idée reformulée) : le gap entre autorité et ignorance est tenu **des deux côtés** — le confiant ne cille pas, le sincère ne s'énerve jamais ; dès qu'un des deux reconnaît la situation, c'est de la moquerie, plus de la comédie. **L'escalade passe par le contenu, jamais par le volume.**

**Exemple écrit (duo, accueil d'un salon de coiffure, 15 s).**
```
CLIENT   « Je veux la coupe de Napoléon. »
COIFFEUSE (calme)  « Le gâteau ou l'empereur ? »
CLIENT   « Le cheval. »
COIFFEUSE (note)   « Marengo. Dégradé bas. Asseyez-vous. »
```
La coiffeuse ne juge jamais ; elle traite la demande. C'est son sérieux qui fait rire.

**Modes de panne.** Le faire-valoir lève les yeux au ciel ou regarde la caméra à chaque réplique (sympathie perdue, rythme cassé) ; le faire-valoir finit par « avoir raison » et le révèle (toute sa sincérité devient un numéro) ; il crie.

**Ratio.** Aucune source ne donne un ratio de répliques. Ordre de grandeur, non sourcé : l'excentrique parle 60-70 % du temps, le faire-valoir répond en ≤ 5 mots.

---

## 5. Déflation / anticlimax

**Définition.** Grosse attente construite → chute minuscule, triviale ou administrative. **Aucune des sources du lot ne définit cette mécanique** (constat D-SYNTHESE) ; la « déflation comique » de sethmblack est autre chose (auto-incrimination d'un discours pompeux par des chiffres qui le contredisent, clôture faussement approbatrice : « Everyone agreed it was a great success »). Les deux se combinent : laisser le personnage monter seul, puis une phrase d'apparence neutre qui achève.

**Exemple écrit (duo, 12 s).**
```
LUI   (essoufflé, grave)  « Il faut qu'on parle. Assieds-toi. »
ELLE  (s'assoit lentement)
      [pause 1,5 s]
LUI                       « Ta mère a aimé ma story. »
```

**Modes de panne.** La montée n'est pas assez haute (sans gravité pas de chute) ; la chute explique (« c'est rien en fait ») ; on reste trop longtemps après la chute : couper dans la 1,5 s qui suit le dernier mot (picsart / retention-hooks, « end on the peak »).

**Timing.** Montée 60-70 % du gag, pause 1-2 s, chute ≤ 4 mots (ordre de grandeur, non sourcé sauf la pause).

---

## 6. Comique de répétition et rappel (*running gag*, *callback*)

**Définition.** Un détail planté tôt **comme blague autonome** revient 2-3 fois avec un sens nouveau ; le dernier retour se retourne en ironie ou inversion (jtydhr88, d'après Smith). La plante est désinvolte, ne se signale pas, sert une blague immédiate et tient même si le rappel ne vient jamais (sethmblack / callback-setup). Trois signaux de rappel : direct (« tu te souviens des… »), subtil (le détail réapparaît sans commentaire — le plus drôle), recontextualisé (le détail dans un contexte totalement autre). En comédie : subtil, presque toujours. Rappel entre deux vidéos d'une série : la dernière réplique de la vidéo 1 devient la première de la vidéo 2 (idée reformulée, digitalsamba / parody-short).

**Exemple écrit (duo, 45 s, trois retours).**
```
0:04  ELLE pose un mug « MEILLEUR PAPA » devant LUI. Il n'a pas d'enfant.     [plante : blague seule]
0:18  LUI, pour marquer un point : lève le mug.                                [retour 1, subtil]
0:31  ELLE lui reprend le mug, boit dedans.                                    [retour 2, le pouvoir change]
0:43  Plan final : le mug dans l'évier, cassé. Personne ne commente.           [retour 3, retourné]
```

**Modes de panne.** Plante signalée (« retiens bien ça ») ; retour trop proche (< 2-3 segments) ; retour qui répète sans ajouter ; rappel forcé — un rappel forcé est pire que pas de rappel (sethmblack).

**Timing.** Minimum 2-3 segments entre plante et retour (sourcé) ; dans un 45 s, ≥ 10 s d'écart (ordre de grandeur, non sourcé).

---

## 7. Réponse follement inappropriée

**Définition.** La réaction est d'un registre, d'une échelle ou d'un domaine qui n'a rien à voir avec le stimulus : réponse sous-jouée face à l'énorme (*understated response*), sur-jouée face au minuscule (*exaggerated response*), ou lecture littérale (« Appelle-moi un taxi. » / « D'accord, t'es un taxi. ») (jtydhr88, d'après Smith). Ces « nuances » sont **la façon fixe de rire d'un personnage**, pas une boîte à outils d'auteur : décider avant d'écrire laquelle (une ou deux) appartient à ce personnage et ne lui en donner aucune autre. Le littéral sort d'un personnage très bête ou très malin, jamais d'un personnage moyen.

**Exemple écrit (duo, 8 s).**
```
ELLE  (hurle)  « Il y a le feu dans la cuisine ! »
LUI   (ne bouge pas, regarde l'heure)  « À 19 h ? »        [sous-joué]
```

**Modes de panne.** Le personnage change de « nuance » d'une réplique à l'autre (il devient incohérent) ; la réponse est juste aléatoire — elle doit rester logique *pour lui* (le personnage applique une vraie logique à une prémisse absurde, sethmblack / tim-robinson).

---

## 8. Vérité + douleur (*peine – rire – peine*)

**Définition** (jtydhr88, d'après Waller-Bridge et Armstrong). Le rythme standard d'une scène émotionnelle comique : vraie phrase → un gag visuel ou une vacherie → retour à la vraie phrase. Et : **la blague reçoit l'aveu le plus noir** — dans *Succession*, après l'aveu de Kendall, Roman « négocie » le chef d'accusation à la baisse. Le rire ne nie pas la douleur, il la rend regardable. Condition Reiss (Smith) : chaque blague doit être à la fois drôle, utile à l'intrigue, **et ne pas rendre le personnage détestable**.

**Exemple écrit (duo, 20 s).**
```
LUI   « Je crois que je l'aime encore. »                                [vrai]
ELLE  (lui tend son téléphone)  « Elle a changé de coiffure. Mal. »     [vacherie]
LUI   (regarde, petit rire, puis)  « Ouais. Je l'aime encore. »        [vrai, et pire]
```

**Modes de panne.** Blague qui arrive avant que la vérité ait eu sa seconde de silence ; blague qui *moque* le personnage qui souffre (sympathie perdue) ; pas de retour au vrai (le sketch finit en blague, l'émotion est jetée).

**Timing.** Tenir 1-2 s sur le visage après la vraie phrase avant la vacherie (majiayu : « hold 1-2 s on the key reaction »).

---

## 9. Le gap : ce que le personnage croit vs ce que le public sait

**Définition.** Le public détient une information que le personnage n'a pas (ou l'inverse) ; chaque réplique du personnage est drôle **parce que** nous savons. Aveuglement sincère (sethmblack / tim-robinson) : le personnage ne voit pas qu'il a tort et ne le verra jamais. « Accrocher une lanterne » (jtydhr88, d'après Smith) : faire dire « c'est dingue » à un personnage pour faire passer un postulat invraisemblable — et **tout ce qui est planté doit être récolté**. La colonne « ce que le public sait / ne sait pas » du script sert exactement à écrire ce gap.

**Exemple écrit (duo, 25 s).**
```
Public sait : le cadeau dans le sac est pour ELLE. LUI croit que c'est pour sa mère.
LUI   « Ma mère va détester. »
ELLE  (voit le sac, sourit)  « Elle a des goûts bizarres ? »
LUI   « Elle ne porte jamais de rouge. »
ELLE  « Moi si. »
LUI   (enfin)  « …Oui, c'est ce que je disais. »          [il ne comprend toujours pas]
```

**Modes de panne.** Le personnage comprend trop tôt (le gap se ferme, plus de jeu) ; le public ne sait pas plus que lui (la scène est juste confuse) ; un troisième personnage explique.

---

## 10. Le bouton de fin (*button*) et le second retournement

**Définition.** La dernière blague d'une scène doit être **la plus forte** de la séquence (idée reformulée, FerroxLabs ; Smith : « don't go past the joke »). En vidéo courte : la chute atterrit sur un **objet visible** (une basket noire et une grise), puis **un plan de plus, deux mots**, qui tord encore (vargHQ : second retournement à 38-42 s d'un 42 s). Le texte à l'écran ne porte pas la chute si le modèle doit le rendre : le modèle le brouille — garder une image de fin propre et l'ajouter au montage (TapCanvas). Quatre règles de l'ai-parody-video : setup par l'image dans les deux premières secondes ; le « swap » est la prémisse, pas la blague ; garder le beat que le public attend et le tordre ; garder un second retournement pour la fin.

**Exemple écrit (fin d'une scène de ménage, 6 s).**
```
0:52  Gros plan : la valise fermée sur le lit. Elle part.                 [chute visible]
0:55  Plan de plus : lui, seul, ouvre la valise. Elle est vide.
      LUI (à personne)  « …Forcément. »                                    [deux mots, second retournement]
```

**Modes de panne.** Un plan de réaction après le bouton qui explique ; une musique qui souligne ; la dernière réplique plus faible que l'avant-dernière (couper la dernière) ; un carton texte généré par le modèle.

**Timing.** Une seconde de silence avant le retournement (TapCanvas) ; coupe ≤ 1,5 s après le dernier mot (picsart / retention-hooks) ; second retournement de 2-4 s en fin de vidéo (vargHQ).

---

## Table de choix : situation → mécanique

| Tu veux… | Mécanique | Longueur typique |
|---|---|---|
| Une chute unique sur une image fixe (one-shot IA de 10-15 s) | Misdirection (1) ou réponse inappropriée (7) | 8-15 s |
| Faire monter une dispute sans crier | Escalade (2), par le contenu, ton plat | 30-60 s |
| Donner de la voix à un personnage calme | Faire-valoir (4) | tout format |
| Dire quelque chose de vrai sans faire un drame | Vérité + douleur (8) | 20-45 s |
| Récompenser le spectateur qui a tout regardé | Rappel (6) ; 2-3 segments d'écart | ≥ 30 s |
| Une fin qui déclenche le partage | Bouton (10) : objet visible + deux mots | 4-6 dernières s |
| Faire rire d'un ignorant sans le mépriser | Gap sincère (9) tenu des deux côtés | 20-40 s |
| Casser une attente que tu as toi-même gonflée | Déflation (5) | 10-15 s |

## Règles transversales

- **Pas d'adjectif « drôle » dans un prompt ni dans une didascalie** : le modèle n'a rien à jouer ; remplacer par une action ou un objet (TapCanvas).
- **Chaque changement d'humeur a un déclencheur écrit** à l'image (TapCanvas) — pas de bascule « soudain il rit ».
- **Les témoins ont leur propre beat** : un passager rit d'abord, puis tout le wagon (TapCanvas).
- **Demander au modèle 2 s de moins** que ce que le dialogue semble exiger : les répliques finissent tôt et le dernier plan traîne (vargHQ, erreur mesurée).
- **La caméra et la physique restent sérieuses** ; le rire vient de l'écart, pas de la mise en scène (TapCanvas, sethmblack).
- **Coincé ? Change le setup, pas la chute** (Smith via jtydhr88) : prendre les trois chutes les plus faibles et réécrire leur setup seulement.
- **Spécificité** : « il fait un truc bizarre » n'est pas une blague ; « il range les chips par ordre alphabétique » en est une (idée reformulée, FerroxLabs).
