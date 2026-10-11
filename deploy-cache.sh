#!/bin/sh
# Ajoute une seule fois les règles de cache au .htaccess du site, sans rien écraser.
H=/home/lecahier/public_html/.htaccess
[ -f "$H" ] || touch "$H"
[ -f "$H.avant-cache" ] || cp "$H" "$H.avant-cache"
grep -q "LC-CACHE" "$H" || cat htaccess-cache.txt >> "$H"
exit 0
