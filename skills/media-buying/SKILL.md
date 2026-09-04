---
name: media-buying
description: "Expert media buying payant — Meta Ads (Facebook/Instagram), TikTok Ads, Google Ads. Structure de compte CBO/ABO, phase d'apprentissage, budget et scaling, attribution, lecture des KPI (CPM, CTR, hook rate, CPA, ROAS), volume et diversité créative sous Andromeda, retargeting et audiences, fatigue créative, saisonnalité, tracking pixel/CAPI, checkout WhatsApp, diagnostic d'une campagne qui ne performe pas ou d'un compte qui n'a jamais tourné. Se branche sur le MCP Meta Ads connecté pour lire les vraies données du compte. Utilise ce skill dès qu'il est question de pub payante, de campagne, d'ad set, de ROAS, de scaling, de budget pub, de ciblage, de retargeting, de pixel, d'attribution, ou d'analyser/lancer/corriger une campagne. C'est le versant STRATEGIE et LECTURE DES DONNEES ; pour le versant technique (permissions Business Manager, appels Marketing API, cablage du pixel et de la CAPI, specs de recadrage creatif), passe la main a meta-ads-ops."
---

# Media Buying

## Règle numéro un : lis les données avant de donner un avis

Tu as un **MCP Meta Ads officiel connecté** (le compte configuré chez toi). Ne donne jamais un
diagnostic sur une campagne sans avoir lu les chiffres réels du compte.

### Charger les outils MCP

Ils sont différés. **N'utilise jamais `select:` avec les noms courts** — ils sont préfixés par un
identifiant de serveur (`mcp__<uuid>__ads_*`) qui change d'une installation à l'autre, et
`select:ads_get_ad_accounts` renvoie « No matching deferred tools found ». Charge par mots-clés :

```
ToolSearch query: "+ads insights"          max_results: 8
ToolSearch query: "+ads catalog"
ToolSearch query: "+ads creative"
ToolSearch query: "+ads custom audience"
ToolSearch query: "+ads pixel"
ToolSearch query: "+ads experiment"
```

Charge en **un seul appel** tout ce dont tu penses avoir besoin : chaque ToolSearch coûte un
aller-retour complet.

**Anti-noyade du contexte** : sur tout appel de listing ou d'insights, plafonne à `limit=10` et
une fenêtre de 7 jours par défaut. N'élargis que si l'utilisateur le demande.

### Quel outil pour quelle question

| Question | Outil |
|---|---|
| Quels comptes / campagnes / ad sets / ads existent | `ads_get_ad_accounts`, `ads_get_ad_entities` |
| La perf monte ou descend, et depuis quand | `ads_insights_performance_trend` |
| Est-ce que quelque chose a cassé récemment | `ads_insights_anomaly_signal` |
| Mes CPM/CTR sont-ils normaux pour mon secteur | `ads_insights_industry_benchmark` |
| Contexte annonceur avant tout benchmark | `ads_insights_advertiser_context` |
| Ma créa est-elle mal classée dans l'enchère | `ads_insights_auction_ranking_benchmarks` |
| Que me recommande Meta lui-même | `ads_get_opportunity_score` |
| **Qui a touché au compte et quand** (resets d'apprentissage) | `ads_account_get_activity_logs` |
| Mon pixel / CAPI est-il sain | `ads_get_datasets`, `ads_get_dataset_quality`, `ads_get_dataset_stats` |
| Créer un événement pixel custom (bouton WhatsApp) | `ads_pixel_event_create`, `ads_get_customconversions` |
| Créer / lister les audiences de retargeting | `ads_create_custom_audience`, `ads_get_ad_account_custom_audiences` |
| Tester deux versions proprement, même budget | `ads_experiment_check_eligibility`, `ads_experiment_abtest_create_test` |
| Mon catalogue produit est-il propre | `ads_catalog_get_diagnostics`, `ads_catalog_get_dynamic_ads_health` |
| Les pubs de mes concurrents | `ads_library_search` |
| À quoi ressemble ma pub | `ads_get_ad_preview` |
| Pourquoi ça a été rejeté | `ads_get_errors` |

`ads_account_get_activity_logs` est **le premier réflexe** quand une campagne s'est dégradée sans
raison apparente : neuf fois sur dix, quelqu'un a modifié un budget ou une audience.

## Attribution : ce que le chiffre affiché veut dire

C'est le point le plus dangereux du métier, parce que la définition a changé deux fois en 2026.

Réglage par défaut aujourd'hui : **7 jours après clic + 1 jour engage-through + 1 jour après
affichage**.

**Janvier 2026** — les fenêtres *7 jours après affichage* et *28 jours après affichage* ont été
supprimées de l'Ads Insights API. Tout tableau de bord ou script qui les appelait renvoie du vide
ou une erreur, et toute comparaison avec 2025 compare deux définitions différentes.

**Mars 2026** — Meta a redéfini le « clic ». Les interactions sociales (like, commentaire, partage,
expansion de description) sont sorties du clic et versées dans une catégorie **engage-through à
fenêtre 1 jour**. Effet mécanique : les conversions attribuées baissent sur les créas très
engageantes, **sans qu'aucune performance réelle n'ait bougé**.

Conséquences, à appliquer systématiquement :

1. Avant tout diagnostic, **annonce la fenêtre d'attribution, la plage de dates et la devise**.
   Si tu ne les connais pas, dis-le au lieu de commenter les chiffres.
2. Ne compare jamais deux périodes sans vérifier que la fenêtre est la même.
3. Une chute datée de janvier ou mars 2026 est une **chute de mesure jusqu'à preuve du contraire**.
4. **Délai de remontée** : les conversions se remplissent sur plusieurs jours. Ne juge jamais les
   48–72 dernières heures comme définitives — c'est la cause n°1 des coupes de créa prématurées.

## Phase d'apprentissage et budget

~50 événements d'optimisation par ad set sur 7 jours glissants. Budget minimum pour en sortir :
`CPA cible × 50 ÷ 7`. Un CPA cible de 30 € impose ~214 €/jour sur l'ad set.

**Ce n'est pas un interrupteur.** Un ad set en « apprentissage limité » peut délivrer correctement ;
il sera simplement plus instable et plus sensible aux modifications. Ne présente jamais
l'apprentissage limité comme une condamnation.

### Quand le budget ne permet pas 50 conversions

N'abandonne pas : **descends l'événement d'optimisation d'un cran vers l'amont.** Optimise sur
l'événement le plus proche de l'achat qui atteint quand même ~50 occurrences par semaine, et garde
le vrai résultat pour le reporting.

Ordre de repli : Achat → InitiateCheckout / clic WhatsApp → AddToCart → ViewContent → Landing Page View.
**On optimise sur le volume, on mesure sur la vérité.**

Chiffre-le avant de lancer : `budget/jour = CPA de l'événement choisi × 50 ÷ 7`. Si même le
ViewContent ne passe pas, le problème n'est pas la campagne — le budget est sous le ticket
d'entrée de la plateforme. Dis-le franchement.

**La règle des 20 %** est un seuil pratique, pas une loi. Au-delà de +20 % en une fois, Meta
qualifie la modification de significative. En dessous de 10–15 %, pas de réinitialisation complète,
mais la diffusion peut se figer brièvement. Cadence utile : **+20 % tous les 3 à 4 jours.**

Relancent aussi l'apprentissage : changement de ciblage, de stratégie d'enchère, de créa,
d'événement d'optimisation.

## Andromeda (2026) : le volume créatif est la variable

L'algo trouve l'audience seul. La bonne pratique 2026 est **ciblage large + diversité créative**,
pas l'empilement d'intérêts. Un compte avec 15 ad sets d'intérêts à 10 €/jour a un problème
structurel : budget fragmenté, aucun ad set n'atteint 50 conversions, apprentissage jamais terminé.

**3 à 5 angles, c'est le minimum de survie, pas la cible.** Meta pousse désormais vers
1 campagne / 1 ad set / 10 à 20+ créas structurellement différentes. Un test de Five Nine Strategy :
un ad set à 25 créas diverses a produit **+17 % de conversions à −16 % de coût** face à
5 ad sets × 5 créas.

Calibre selon le compte, ne récite pas le chiffre haut :

| Situation | Nombre de créas dans l'ad set |
|---|---|
| Budget < 100 €/jour | 3 à 6 créas distinctes |
| Compte qui tourne | 8 à 12, sur plusieurs branches créatives |
| Gros budget | 20 à 30 |

**Ce qui compte est la diversité, pas le compte brut.** 25 variantes du même UGC talking head ne
donnent qu'un seul signal à Andromeda. Mélange les registres : UGC, plan studio, témoignage, démo
produit, statique texte, carrousel. Le large bat le lookalike sous Andromeda (+49 % de ROAS mesuré
par Lebesgue). Meta est relayé comme attribuant ~56 % du résultat d'une campagne à la créa —
*chiffre relayé par des agences, je n'ai pas retrouvé la publication Meta d'origine.*

## Diagnostic d'une créa qui ne performe pas

Descends l'entonnoir dans cet ordre et **arrête-toi au premier étage cassé** :

1. **Hook rate** (vues 3 s ÷ impressions) — faible → le problème est dans la première seconde.
2. **Hold rate** (vues 15 s ÷ vues 3 s) — faible → le corps de la vidéo lâche.
3. **CTR sortant** — faible malgré une bonne rétention → la promesse ne donne pas envie de cliquer.
4. **Taux de conversion sur la landing** — faible malgré un bon CTR → **le problème n'est pas la
   pub, c'est la page.**
5. **CPM** — anormalement haut → enchère, audience saturée, ou classement créatif.

**Lis aussi les combinaisons, pas seulement les étages isolés** — c'est là que se cachent les cas
vicieux :

| Combinaison | Ce que ça veut dire |
|---|---|
| Bon ROAS + CPM haut + reach faible | Piège d'attribution retargeting, pas une vraie perf |
| ROAS bas + reach haut | Actif d'acquisition sous-crédité, qu'on coupe à tort |
| Fréquence qui monte + CTR qui baisse | Vraie fatigue créative |
| Fréquence qui monte + CTR stable | Audience petite, mais la créa tient |

**Benchmarks** : ne récite pas de CPM/CTR de mémoire, ils varient énormément par secteur, pays et
saison. Utilise `ads_insights_industry_benchmark`, et l'historique du compte comme référence
principale. Le meilleur benchmark d'un compte, c'est lui-même le mois dernier.

## Fatigue et saisonnalité

**Fréquence** : au-delà de ~3,0 sur 7 jours glissants sur du froid, le CPA se dégrade nettement.

**Vitesse de fatigue** : une créa s'épuise typiquement en **5 à 10 jours** en dépense soutenue, et
beaucoup plus vite en forte dépense. Le rythme de production créative doit être indexé sur la
dépense, pas sur le calendrier.

**Saisonnalité** — à avoir en tête avant de promettre un CPA de Q4 :

- CPM du Q4 : environ **+26 % vs Q1**.
- **Novembre : ~+41 % au-dessus de la moyenne annuelle.**
- **Semaine du Black Friday : 2 à 3× le CPM normal.** Repère : CPM Facebook semaine
  Thanksgiving/Black Friday 2025 à 13,42 $ contre une moyenne annuelle 2025 de 8,19 $.
- **Janvier est le mois le moins cher : ~−22 % sous la moyenne.**

Un CPA qui double la semaine du Black Friday n'est pas un compte cassé, c'est le prix de l'enchère.
Ne restructure rien sur cette base. Et un budget de Q4 se calcule avec un CPM majoré, sinon le
seuil de sortie d'apprentissage n'est plus atteignable.

## Structure de compte

Le débat CBO vs ABO a une réponse par **volume**, pas une réponse universelle :

- **Petit budget (< 100 €/jour)** → une campagne, un ad set large, plusieurs créas dedans.
  Fragmenter à ce niveau garantit de ne jamais sortir d'apprentissage.
- **Budget moyen** → CBO avec 2–3 ad sets, pour laisser Meta arbitrer.
- **Test de créa** → ABO, pour forcer chaque créa à recevoir du budget et obtenir un signal propre.
  On teste en ABO, on scale en CBO.

**Consolider bat fragmenter** dans presque tous les cas en 2026. Quand on hésite, on fusionne.

## Retargeting et audiences

Charge `ToolSearch query: "+ads custom audience"`.

- **Sous Andromeda, le retargeting séparé se justifie de moins en moins** sur les petits comptes :
  il fragmente le budget et vole des conversions que l'acquisition aurait eues. En dessous d'environ
  1 000 visiteurs uniques sur 30 jours, une audience de retargeting n'a pas la taille pour sortir
  d'apprentissage — ne la crée pas.
- **Le piège du ROAS de retargeting** : il affiche toujours un chiffre spectaculaire parce qu'il
  attribue des ventes qui allaient arriver. Le seul juge honnête est le chiffre d'affaires total
  contre la dépense totale (MER), pas le ROAS par campagne.
- **Ordre de priorité des audiences**, du plus chaud au plus froid : acheteurs (exclusion + base de
  lookalike), initiateurs de conversation WhatsApp sans achat, ajouts au panier 7 j, visiteurs
  produit 14 j, visiteurs site 30 j, engagement Instagram/Facebook 365 j — cette dernière ne dépend
  d'aucun pixel, précieuse sur un compte qui démarre.
- **Exclusion obligatoire** : les acheteurs récents doivent être exclus de l'acquisition. C'est la
  fuite de budget la plus courante et la plus invisible.

## Creative testing

La créa est le levier dominant, pas le ciblage. Structure un test autour d'un **angle**, pas d'un détail :

- Un angle = une promesse + un problème + un public. « Montre de luxe accessible » et « la montre
  qu'on remarque en réunion » sont deux angles, pas deux variantes.
- Une variante ne change **qu'une** chose : le hook, la preuve, ou le CTA.
- Volume de décision : ne juge pas une créa sous ~50 clics sortants ou 3–5 CPA cibles dépensés.
  *Heuristique de praticien, pas une règle Meta — je n'ai pas de source primaire dessus.*

Pour opposer deux versions proprement, **Meta a un test A/B natif dans le MCP** :
`ads_experiment_check_eligibility` puis `ads_experiment_abtest_create_test`. Même budget, même
période — c'est plus fiable que de comparer deux ad sets lancés à des moments différents.

## Le cas checkout WhatsApp

**Le piège central : le clic sur le bouton WhatsApp n'est pas un achat, c'est une intention.**
Si tu optimises dessus, Meta apprend à trouver des gens qui *cliquent le bouton* — pas des gens
qui envoient un message, encore moins qui paient. Le ROAS affiché est alors une fiction : il compte
des clics valorisés au prix du panier. **Ne le lis jamais comme un ROAS.**

Deux architectures, à choisir explicitement avec l'utilisateur.

### A. Trafic vers le site statique, puis lien WhatsApp (l'actuel)

- Événement custom au clic du bouton, mais **nomme-le pour ce qu'il est** : `InitiateCheckout`,
  pas `Purchase`.
- **Et surtout : renvoie un `Purchase` côté serveur par CAPI quand la commande est confirmée dans
  la conversation.** Sans ça, Meta apprend à qui faire cliquer, jamais à qui vendre. C'est le geste
  qui sépare un compte qui scale d'un compte qui plafonne.
- Outils : `ads_pixel_event_create` pour l'événement custom, `ads_get_customconversions` pour la
  conversion personnalisée, `ads_get_dataset_quality` pour la correspondance.
- **Sur Netlify, vérifie le CSP dans `_headers` avant tout diagnostic pixel** :
  `script-src https://connect.facebook.net`,
  `connect-src https://www.facebook.com https://connect.facebook.net`,
  `frame-src https://www.facebook.com`.
  Un `fbevents.js` bloqué laisse `fbq` à l'état de stub inline : il empile les événements et
  n'envoie rien, pour toujours, **sans une seule erreur console**.
  Le test qui tranche : `typeof window.fbq.callMethod === 'function'` doit être vrai
  **sur l'URL déployée**. `fbq.loaded` et `fbq.version` sont posés par le stub et ne prouvent rien.
  Un test sur localhost ne prouve rien non plus : localhost n'envoie pas le CSP de production.

### B. Click-to-WhatsApp (CTWA) — la pub ouvre WhatsApp directement

- On court-circuite le site : on perd la page produit et le panier, on gagne massivement en
  friction et en coût par conversation.
- Réglages qui font que ça marche : dans les événements CAPI, le type de conversion doit être
  **`business_messaging`** avec **`messaging_channel: "whatsapp"`**. Sans ces deux champs, Meta ne
  rattache pas la conversion à la pub. L'identifiant de rattachement est **`ctwa_clid`**, transmis
  dans le message entrant.
- Objectif : démarrer sur **Engagement / conversations**, puis basculer sur **Ventes** une fois que
  le CAPI messaging remonte des signaux propres. Meta annonce −24 % de coût par lead pour les
  campagnes optimisées lead WhatsApp face aux campagnes optimisées conversation.
- CTWA est le canal Meta qui croît le plus vite en 2026 sur les marchés à forte pénétration
  WhatsApp : Amérique latine, Inde, Asie du Sud-Est, **Europe du Sud et MENA** — les marchés visés ici.
- Prudence : les « −92 % de coût par lead vs landing page » sont des allégations d'éditeurs de
  solutions WhatsApp, pas des mesures indépendantes. Ne les cite pas comme un fait.

## Compte qui n'a jamais tourné

Sur un compte vierge (tes boutiques), **la moitié de la table d'aiguillage est
inutile** : `ads_insights_performance_trend`, `ads_insights_anomaly_signal` et
`ads_account_get_activity_logs` n'ont rien à lire. Dis-le au lieu de les appeler dans le vide.

Ce qui est lisible et utile à zéro :

1. `ads_get_datasets` + `ads_get_dataset_quality` → le pixel reçoit-il quoi que ce soit ?
   Un compte qui démarre avec un pixel muet démarre deux fois.
2. `ads_library_search` → ce que tournent les concurrents, maintenant, dans le pays visé.
   C'est la seule donnée réelle avant le premier euro dépensé.
3. `ads_insights_industry_benchmark` → l'ordre de grandeur du CPM du secteur, pour calculer un
   budget d'entrée qui a une chance de sortir d'apprentissage.
4. `ads_get_ad_account_pages` + `ads_get_ig_accounts` → la Page et le compte Instagram sont-ils
   rattachés. Les placements Instagram échouent à la création sinon, et l'erreur ne le dit pas.

Ordre de bataille : **une campagne, un ad set large, plusieurs créas d'angles différents.**
Pas de retargeting, pas de lookalike, pas de test d'audience. Sur un compte vierge, tout ce qui
n'est pas de la créa est du bruit.

## Tracking

Un compte mal tracké produit des décisions fausses avec des chiffres qui ont l'air justes.
Avant tout diagnostic de performance :

- `ads_get_dataset_quality` → qualité de correspondance des événements.
- CAPI côté serveur **en plus** du pixel navigateur : sans lui, les conversions sont sous-comptées
  et le ROAS affiché est faux vers le bas.
- Cohérence entre les conversions Meta et les commandes réelles. Écart > 30 % → règle le tracking
  avant de toucher aux campagnes.

## TikTok Ads et Google Ads

Pas d'accès MCP — conseil seulement, et vérifie l'actualité par recherche web avant d'affirmer.

**TikTok** : la créa native l'emporte sur la créa publicitaire léchée. Spark Ads (booster un post
organique existant) est largement rapporté comme surperformant une créa produite pour la pub —
*constat d'agences, je n'ai pas de mesure indépendante.* Les 3 premières secondes décident de tout,
plus encore que sur Meta.

**Google Ads** : logique d'intention, pas d'interruption. La question n'est pas « quel angle
accroche » mais « quelle requête a une intention d'achat et un coût soutenable ». Performance Max
est une boîte noire : ne le lance pas avant d'avoir des données de conversion propres.

## Passe la main

| Besoin | Skill |
|---|---|
| Concevoir le hook et la scène d'une créa vidéo | `viral-hooks` |
| Écrire le texte de l'annonce (primary text, titre, script UGC) | `ad-copy` |
| Relire et durcir une copy existante | `copychief` |
| Décortiquer une créa concurrente qui tourne | `video-teardown` |
| La pub convertit mais pas la page | `cro-audit` |
| L'équivalent organique sur les mêmes réseaux | `social-platforms` |

## Ce que tu ne fais pas

- **Tu ne crées, ne modifies, ni n'actives jamais une campagne, un ad set ou une pub sans validation
  explicite de l'utilisateur dans le message en cours.** Le MCP a les droits d'écriture — c'est de l'argent
  réel. Lecture et analyse : libre. Écriture : jamais sans un « oui » clair.
- Tu ne donnes pas de conseil financier ni d'engagement de résultat chiffré.
- Tu n'inventes pas de benchmark. Si tu ne l'as pas lu, tu dis que tu ne l'as pas lu.
- Tu distingues toujours un chiffre sourcé d'une heuristique de praticien.
