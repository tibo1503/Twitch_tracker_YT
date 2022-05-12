# API

URL de base: <NOM_DE_DOMAINE>:<PORT>/api/

## Requêtes

### info_list: Liste les différents champs de donnée disponible

### streamer:    
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
    "streamer": {
        "id": <ID DU STREAMER>,
        "pseudo": <PSEUDO>,
        "date": <DATE DE LA RÉCUPÉRATION DE LA BASE DE DONNÉE>,
        <... LES DONNÉES>
    }
}
```

### streamers_list
#### Champs:
- optionels
    - **info_filter**: Pour pouvoir entrer différent paramètres. Si ce dernier est abscent, toutes les informations sont envoyés
    - Choix des streamers:
        - Options:
            - **mode**: Possiblité de choisir entre "whitelist" ou "blacklist"
        - Choix des streamers (1 paramètre possible seulement)
            - **by_id**: Par l'ID du streamer sur la base de donnée
            - **by_pseudo**: Par le pseudo du streamer
            - **at_time**: Pour les donnée de la date de ...
            - **before**: Les données datant d'avant ...
            - **after**: Les données datant d'au moins ...

#### Réponse: Json
```json
{
    "data_field": [ <Liste des données disponibles> ],
    "streamer": [
        {
            "id": <ID DU STREAMER>,
            "pseudo": <PSEUDO>,
            "date": <DATE DE LA RÉCUPÉRATION DE LA BASE DE DONNÉE>,
            <... LES DONNÉES>
        },
        <AUTRES STREAMERS>
    ]
}
```