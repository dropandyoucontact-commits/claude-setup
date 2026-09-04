# Skills pour ChatGPT

ChatGPT utilise le même format `SKILL.md` qu'Anthropic a ouvert pour Claude Code. Ces paquets se
téléversent donc tels quels, sans conversion.

## Téléverser

Dans ChatGPT : **Paramètres → Skills → Ajouter → Téléverser**, puis choisis un `.zip`.
Un skill par archive. `tous-les-skills.zip` contient les huit d'un coup si l'import groupé
est accepté ; sinon prends-les un par un.

Commence par `higgsfield.zip` et `social-platforms.zip` — ce sont les deux qui apportent le plus
à ChatGPT, parce que ce sont du savoir qu'il n'a pas plutôt que des méthodes qu'il approxime déjà.

## Les huit paquets

| Paquet | Ce que ça apporte | Poids |
|---|---|---|
| `higgsfield.zip` | 33 sous-skills pour écrire des prompts Higgsfield, Seedance 2.5/2.0, Kling, Veo, Sora, Nano Banana, GPT Image. Paramètres exacts issus d'un instantané daté de l'API, pas de mémoire. | 893 Ko |
| `genjutsu.zip` | Les deux modes de Higgsfield Genjutsu (Motion Transfer, Object Swap), quand choisir lequel, et comment décliner un UGC en série. | 4 Ko |
| `social-platforms.zip` | Mécaniques d'algorithme 2026 de TikTok, Instagram, YouTube, Facebook, LinkedIn : pondération des signaux, suppresseurs de portée, specs de format, hashtags, miniatures. | 32 Ko |
| `creative-strategy.zip` | Construire un concept publicitaire : angle → mécanique cognitive → format → hook. Bibliothèque de la Creative Strategy Lead de Motion. | 35 Ko |
| `media-buying.zip` | Stratégie Meta Ads : attribution 2026, phase d'apprentissage, volume créatif sous Andromeda, retargeting, fatigue, saisonnalité, checkout WhatsApp. | 8 Ko |
| `cro-audit.zip` | Diagnostiquer une page qui ne convertit pas, de haut en bas, avec une passe adversariale qui coupe les conseils génériques. | 15 Ko |
| `copychief.zip` | Relire de la copy en direct response et rendre un verdict structuré. | 4 Ko |
| `ad-copy.zip` | Écrire du texte d'annonce Meta : primary text, titres, scripts UGC. | 11 Ko |

## Ce qui a été adapté, et ce qui ne l'est pas

`media-buying` a été modifié : sa règle d'origine était de lire les chiffres réels du compte par
le connecteur Meta Ads de Claude Code. ChatGPT n'a pas ce connecteur, donc la section a été
remplacée par une consigne explicite — **demander les chiffres avant de diagnostiquer**, et dire
clairement quand une réponse n'est qu'une hypothèse. Le reste du contenu est intact.

Les renvois vers des skills absents de ce paquet (`viral-hooks`, `video-teardown`, `threejs`…)
ont été retirés des tableaux d'aiguillage.

Deux skills ne sont **pas** ici, volontairement :

- `video-teardown` a besoin de `ffmpeg` et de `yt-dlp` sur la machine. Il ne fonctionnerait pas.
- `threejs` vient d'un dépôt sans licence déclarée : il est récupéré à la source pour un usage
  local, pas redistribué.

## Licences

`higgsfield`, `creative-strategy`, `social-platforms` : MIT (O-Side Media, Motion, sergebulaev).
`genjutsu` : écrit pour ce dépôt, surface d'API vérifiée sur le connecteur Higgsfield.
`copychief`, `ad-copy` : CC BY 4.0 (Rob Palmer).
`cro-audit` : licence permissive de CreativeDeals, attribution obligatoire, revente interdite.
`media-buying` : écrit pour ce dépôt.

Chaque archive embarque son fichier de licence. Garde-les.
