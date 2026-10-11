# lecahier-site

Page publique de Le Cahier (lecahier.ca).

- `index.html` : la page
- icônes : `favicon.*`, `apple-touch-icon.png`

Le formulaire (`inscription.php`) n’est pas dans ce dépôt : il reste sur le serveur.

## Mise en ligne

cPanel > Git Version Control : le dépôt est cloné dans `/home/lecahier/repositories/lecahier-site`.
« Deploy HEAD Commit » exécute `.cpanel.yml`, qui copie la page et les icônes dans `public_html`.
