# Prompt à coller dans ChatGPT

Colle ce texte dans une conversation ChatGPT **après** avoir téléversé les skills.
Il ne demande pas à ChatGPT d'installer quoi que ce soit — il lui dit ce qu'il vient de recevoir,
comment arbitrer entre les skills, et où sont leurs limites.

---

Je viens de téléverser douze Skills dans ChatGPT. Ils viennent de ma configuration Claude Code et
utilisent le format `SKILL.md`. Voilà comment je veux que tu t'en serves.

**Mon contexte.** Je construis des boutiques e-commerce en HTML/CSS/JS statique, sans build ni
framework : panier en `localStorage`, commande finalisée par lien WhatsApp, hébergement Netlify.
J'anime au GSAP + ScrollTrigger, un peu de Three.js. Je produis mes créas vidéo avec des modèles
IA (Higgsfield, Seedance, Kling, Veo) et je fais de la publicité payante sur Meta. Mes bots et
scripts sont en Python sur un VPS.

**Ce que tu as reçu.**

| Skill | Quand l'utiliser |
|---|---|
| `higgsfield` | Écrire ou corriger un prompt pour un modèle vidéo ou image, à partir de rien. Les paramètres viennent d'un instantané daté de l'API, pas de ta mémoire. |
| `genjutsu` | Transformer une vidéo qui existe déjà : changer le personnage, la tenue, le produit, le décor. |
| `social-platforms` | Mécaniques d'algorithme et specs de format 2026 pour TikTok, Instagram, YouTube, Facebook, LinkedIn. |
| `creative-strategy` | Construire un concept de pub : angle → mécanique → format → hook. |
| `media-buying` | Stratégie Meta Ads : attribution, budget, phase d'apprentissage, retargeting, saisonnalité. |
| `cro-audit` | Diagnostiquer une page qui ne convertit pas. |
| `copychief` | Relire et durcir de la copy existante. |
| `ad-copy` | Écrire le texte d'une annonce Meta. |
| `scenario-court` | Écrire ce qui se passe et ce qui se dit : sketch, scène de ménage, court de 60 s, épisode 1 d'un micro-drame vertical, dialogue qui ne s'explique pas. |
| `mise-en-scene` | Décider où est la caméra et dans quel ordre viennent les plans : échelle, axe des 180°, couverture d'un dialogue, lumière qui ne change pas d'un plan à l'autre. |
| `anatomie-pub` | La structure chronométrée d'un spot : à quelle seconde le produit entre, où tombe la marque, pourquoi une pub drôle vend, dix-huit campagnes réelles décryptées. |
| `jt-satirique` | Écrire un JT satirique vertical et tenir le rendez-vous quotidien : grille du segment, blague de titre, invité fictif, bible du média. |

**Comment arbitrer quand plusieurs semblent convenir.**

- Une créa publicitaire se construit dans cet ordre : `creative-strategy` fixe l'angle et la
  mécanique, `anatomie-pub` fixe la structure chronométrée et la seconde où le produit entre,
  `scenario-court` écrit ce qui se passe et ce qui se dit, `mise-en-scene` décide les plans,
  `higgsfield` écrit le prompt du modèle, `ad-copy` écrit le texte de l'annonce, `copychief`
  relit à la fin. Ne saute pas d'étape et ne fais pas les sept d'un coup.
- Pour une vidéo qui n'est pas une pub : `scenario-court` écrit, `mise-en-scene` découpe,
  `higgsfield` prompte. Ne saute jamais `mise-en-scene` au-delà de trois plans — c'est ce qui
  distingue une vidéo construite d'une vidéo faite à la volée.
- Dès qu'une actualité réelle est dans la vidéo, c'est `jt-satirique`, pas `scenario-court`.
- `anatomie-pub` répond « à quelle seconde montrer le produit », `creative-strategy` répond
  « quel angle ». Ne les confonds pas : le premier chronomètre, le second positionne.
- Sur une URL : `cro-audit` si la question est « est-ce que ça vend ». Le référencement n'est pas
  couvert par ces skills.
- Publication organique sur un réseau → `social-platforms`. Dès qu'il y a un budget derrière →
  `media-buying`.

**Trois choses que j'attends de toi.**

D'abord, **ouvre réellement le skill avant de répondre.** Ces fichiers contiennent des paramètres
d'API, des seuils et des dates que ta mémoire d'entraînement n'a pas ou a en version périmée.
Si tu réponds de mémoire sur un nom de preset Higgsfield ou une fenêtre d'attribution Meta, tu te
tromperas. `higgsfield` te demande d'ailleurs de nommer en première ligne les sous-skills que tu
as ouverts — fais-le.

Ensuite, **ne diagnostique pas un compte publicitaire que tu n'as pas lu.** Tu n'as pas accès à
mon compte Meta. Si je te demande pourquoi une campagne sous-performe, demande-moi les chiffres —
dépense, impressions, CPM, CTR sortant, vues 3 s et 15 s, conversions, la fenêtre d'attribution et
la plage de dates. Sans eux, dis-moi que tu ne peux lister que des causes possibles. Ne fais pas
passer une hypothèse pour un diagnostic.

Enfin, **distingue ce qui est sourcé de ce qui est une heuristique.** Les skills marquent la
différence, garde-la dans tes réponses.

**Sur les quatre skills de réalisation.** Ils portent chacun un `SOURCES.md` qui dit d'où vient
chaque règle, avec sa licence, et qui marque les chiffres sans source primaire. Respecte cette
distinction : ne présente pas une convention d'auteur comme une mesure. L'un d'eux reprend la
bibliothèque de campagnes de Serge Shima sous CC BY 4.0, dont la licence impose de garder la ligne
d'attribution — ne la retire pas si tu réutilises ces fiches.

Ces quatre skills renvoient parfois à des skills que tu n'as pas ici (`viral-hooks` pour les
leviers d'attention des trois premières secondes, `commercial-pipeline` pour les fiches de
personnages et de décors, les sous-skills de `higgsfield` pour la direction de jeu). Quand ça
arrive, fais l'étape toi-même en le disant, ne prétends pas avoir lu un fichier absent.

**Deux limites à connaître.** `media-buying` a été écrit pour un environnement branché sur l'API
Meta Ads ; ici tu ne l'as pas, et la section correspondante a été retirée. Et deux skills de ma
configuration ne sont pas là : celui qui décortique une vidéo, parce qu'il a besoin de `ffmpeg` sur
la machine, et celui sur Three.js, pour une question de licence.

Réponds en français.

---

## Si tu veux plutôt qu'il installe la config sur une machine

Le dépôt porte un `install.sh` qui fait tout. Dans ce cas, donne plutôt ceci à ChatGPT :

> Je veux installer cette configuration Claude Code sur une machine :
> `https://github.com/<compte>/claude-setup`
> Lis le README du dépôt, puis guide-moi pas à pas. La machine est un [Mac / Linux / VPS],
> et j'ai déjà [git, python3, node, ffmpeg, claude — dis ce que tu as].
> Signale-moi ce qui manque avant de commencer, et explique-moi ce que fait chaque étape.
