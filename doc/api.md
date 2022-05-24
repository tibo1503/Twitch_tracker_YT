# API

URL de base: <NOM_DE_DOMAINE>:<PORT>/api/

## Base
Pour choisir plusieurs choix pour un champs sur une URL, `+` sera utilisé comme un séparateur.

## Structures de donnée
- field
```json
"field": {
            "name": <NOM DU CHAMP>,
            "id": <ID DU CHAMP>
        }
```

- streamer
```json
"streamer": {
    "id": <ID DU STREAMER>,
    "pseudo": <PSEUDO>,
    "date": <DATE DE LA RÉCUPÉRATION DE LA BASE DE DONNÉE>,
    <... LES DONNÉES>
}
```

## Requêtes

`###` info_list: Liste les différents champs de donnée disponible

#### Champs:
Aucun

#### Réponse: Json
```json
[
    {
        "field": <STRUCTURE>
    }
]
```

### `streamer`: Infos sur un streamer
#### Champs:
- obligatoires
    - Choix du streamer
        - **by_id**: Par l'ID du streamer sur la base de donnée
        - **by_pseudo**: Par le pseudo du streamer
- optionels
    - **info_filter**: Pour pouvoir entrer différent paramètres. Si ce dernier est abscent, toutes les informations sont envoyés

#### Réponse: Json
```json
{
    "data_field": [ <Liste des données disponibles> ],
    "streamer": <STRUCTURE>
}
```

### `streamers_list`: Liste des streamers sous forme de liste
#### Champs:
- optionels
    - **info_filter**: Pour pouvoir entrer différent paramètres. Si ce dernier est abscent, toutes les informations sont envoyés
    - Choix des streamers:
        - Options:
            - **mode**: Possiblité de choisir entre "whitelist" ou "blacklist"
        - Choix des streamers (1 paramètre possible seulement). Erreur 501 (Not Implemented) envoyer si utilisation de plus d'un choix.
            - **by_id**: Par l'ID du streamer sur la base de donnée
            - **by_pseudo**: Par le pseudo du streamer
            - **at_time**: Pour les donnée de la date de ...
            - **before**: Les données datant d'avant ...
            - **after**: Les données datant d'au moins ...
        - **order_by**: Permet de définir comment sont trier les utilisateur. Utilisation du nom ou de l'ID d'un champs pour le définir.

#### Réponse: Json
```json
{
    "data_field": [ <Liste des données disponibles> ],
    "streamers": [
        {
            "streamer": <STRUCTURE>
        },
        <AUTRES STREAMERS>
    ]
}
```