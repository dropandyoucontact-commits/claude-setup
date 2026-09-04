# Prompt à coller dans ChatGPT

Colle ce texte dans une conversation ChatGPT **après** avoir téléversé les skills.
Il ne demande pas à ChatGPT d'installer quoi que ce soit — il lui dit ce qu'il vient de recevoir,
comment arbitrer entre les skills, et où sont leurs limites.

---

Je viens de téléverser huit Skills dans ChatGPT. Ils viennent de ma configuration Claude Code et
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

**Comment arbitrer quand plusieurs semblent convenir.**

- Une créa publicitaire se construit dans cet ordre : `creative-strategy` fixe l'angle et la
  mécanique, `ad-copy` écrit le texte, `higgsfield` écrit le prompt du modèle vidéo,
  `copychief` relit à la fin. Ne saute pas d'étape et ne fais pas les quatre d'un coup.
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
