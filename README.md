# Sindry-Catalogue

Le catalogue officiel de scripts de [Sindry](https://github.com/burnout293/Sindry), l'outil de
maintenance Windows.

Sindry est livré **sans aucun script**. Au premier lancement, il propose d'installer ce
catalogue — sans l'imposer : on peut continuer sans et déposer ses propres scripts. Ensuite, il
le tient à jour, toujours avec l'accord de l'utilisateur.

## Licence

Les scripts de ce dépôt sont sous **licence MIT** (voir [LICENSE](LICENSE)).

Ils ne font **pas** partie de Sindry et ne relèvent pas de sa licence : celle de Sindry
(Apache-2.0 assortie de conditions additionnelles) ne s'applique qu'à l'application. Les deux
sont distribués séparément, et c'est précisément pour que cette séparation soit réelle que
l'installeur de Sindry ne contient plus aucun script.

## Comment Sindry vérifie ce qu'il télécharge

Chaque version publiée contient :

| Fichier | Rôle |
|---|---|
| `index.json` | la liste des scripts : nom de fichier, taille, empreinte SHA-256 |
| `index.json.sig` | la signature Ed25519 de `index.json` (format minisign) |
| `*.ps1` | les scripts eux-mêmes |

1. Sindry télécharge l'index et sa signature, et **vérifie la signature avant même de lire
   l'index**, avec une clé publique compilée dans l'application.
2. Il télécharge chaque script en mémoire et compare son empreinte à celle de l'index signé.
   **Rien n'est écrit tant que tous ne correspondent pas.**
3. Une fois installé, un script dont l'empreinte est restée celle de l'index s'exécute sans
   demande d'approbation. Modifié sur le PC, il la redemande, comme n'importe quel script
   déposé à la main.

La clé du catalogue n'est **pas** celle qui signe les mises à jour de Sindry : si l'une
fuitait, elle ne signerait que son propre domaine.

Aucune donnée ne quitte le PC : Sindry télécharge des fichiers publics, sans identifiant, sans
paramètre, sans rien qui distingue une installation d'une autre.

## Contenu

```
scripts/              un fichier par entretien, au format de Sindry
SCRIPTS_CATALOGUE.md  la liste de besoins : scripts prévus, plages de numéros
```

Le format d'un script est documenté dans Sindry :
[docs/FORMAT_SCRIPT.md](https://github.com/burnout293/Sindry/blob/main/docs/FORMAT_SCRIPT.md).
Tout script de ce dépôt passe le validateur de Sindry en mode strict, à chaque poussée.

## Publier une version

1. Pousser les scripts sur `main`. La CI les valide (`lint-scripts.ps1 -Strict`) et construit
   un index d'essai.
2. Étiqueter :

   ```
   git tag v1.0.0
   git push origin v1.0.0
   ```

3. Le workflow vérifie la clé de signature, valide les scripts, construit et signe l'index, et
   crée une release **en brouillon**.
4. Publier le brouillon : <https://github.com/burnout293/Sindry-Catalogue/releases>.
   **Publier, c'est livrer** : chaque installation de Sindry proposera la nouvelle version à
   son prochain démarrage.

Les numéros de version ne reculent jamais : Sindry refuse un catalogue plus ancien que celui
qu'il a déjà installé.

### Secrets

`TAURI_SIGNING_PRIVATE_KEY` et `TAURI_SIGNING_PRIVATE_KEY_PASSWORD`, à renseigner sur
<https://github.com/burnout293/Sindry-Catalogue/settings/secrets/actions>.

La clé se génère depuis le dépôt Sindry, sans jamais saisir le mot de passe dans un terminal :

```
powershell -NoProfile -File tools\generer-cle-signature.ps1 -Cible catalogue
```

Sa partie publique, `src-tauri/catalogue.pub`, est compilée dans Sindry. **Changer de clé
oblige donc à publier une nouvelle version de Sindry** avant toute nouvelle version du
catalogue.

## Format de l'index

Pour qui voudrait publier sa propre source (un fork de Sindry, par exemple) :

```json
{
  "format": 1,
  "source": "officiel",
  "version": "1.0.0",
  "published": "2026-10-06",
  "tag": "v1.0.0",
  "scripts": [
    {
      "id": "b1ac0e0b-ef61-48b9-b609-9a900b1521fa",
      "file": "100_CLEAN_TEMP_FILES.ps1",
      "version": "2.0",
      "size": 11071,
      "sha256": "af5c96a5…",
      "title": { "en": "Clean temporary files", "fr": "Supprimer les fichiers temporaires" }
    }
  ]
}
```

- `source` : l'identifiant de la source ; un index signé pour une autre source est refusé.
- `tag` : la release où vivent les scripts. Sindry les télécharge depuis **cette** release, pas
  depuis « la dernière » : entre la lecture de l'index et celle des scripts, une autre a pu
  paraître.
- `file` : un nom nu — lettres et chiffres ASCII, point, tiret, souligné. Ni dossier, ni `..`,
  ni nom réservé par Windows (`CON`, `NUL`, `COM1`…).
- `sha256` : en minuscules, sur les octets exacts du fichier publié.

L'index est construit par
[`tools/construire-index-catalogue.ps1`](https://github.com/burnout293/Sindry/blob/main/tools/construire-index-catalogue.ps1),
qui vit dans Sindry, à côté du code qui le lit.

Un fork remplace, dans Sindry, la constante `DEPOT` et `src-tauri/catalogue.pub`
(`src-tauri/src/catalogue.rs`) ; dans ce dépôt, `SINDRY_REPO` dans les deux workflows.

## Publier votre propre catalogue

Depuis Sindry 1.4, un utilisateur peut ajouter d'autres catalogues que celui-ci
(**Réglages → Catalogues → Ajouter un catalogue**) : il colle l'adresse d'un dépôt GitHub et
la **clé publique** de son éditeur. Pour en publier un :

1. **Partez de ce dépôt** (licence MIT) ou d'un dépôt neuf contenant vos scripts, conformes à
   [`FORMAT_SCRIPT.md`](https://github.com/burnout293/Sindry/blob/main/docs/FORMAT_SCRIPT.md).
2. **Générez votre propre paire de clés** — `npx tauri signer generate -w catalogue.key`, ou
   `minisign -G`. La clé privée ne va jamais dans le dépôt ; tout au plus dans un secret
   chiffré des Actions.
3. **Choisissez un identifiant de source** : minuscules, chiffres et tirets, 40 au plus
   (`dupont-scripts`), et pas `officiel`. Construisez l'index avec
   `construire-index-catalogue.ps1 -Source dupont-scripts`. Il ne doit plus changer : c'est
   lui que Sindry retient.
4. **Signez `index.json`** et publiez une release qui contient `index.json`, sa signature
   `index.json.sig` (`.sig` de `tauri signer` ou `.minisig` de `minisign` renommé) et les
   scripts.
5. **Affichez votre clé publique dans votre README** — le fichier `.pub` ou sa ligne `RW…`.
   C'est elle que vos utilisateurs colleront.

Sindry vérifie chaque index avec cette clé avant de le lire. Les actions d'un catalogue
tiers ne sont **jamais approuvées d'office** : chacune demande l'accord de l'utilisateur
avant sa première exécution, et Sindry affiche qu'elle n'est ni contrôlée ni approuvée par
le projet Sindry.
