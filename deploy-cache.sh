#!/bin/sh
# Ajoute (une seule fois chacun) les blocs au .htaccess du site, sans rien écraser.
H=/home/lecahier/public_html/.htaccess
[ -f "$H" ] || touch "$H"
[ -f "$H.avant-cache" ] || cp "$H" "$H.avant-cache"
grep -q "LC-CACHE :" "$H" || cat htaccess-cache.txt >> "$H"
grep -q "LC-CACHE2" "$H" || cat htaccess-cache2.txt >> "$H"
grep -q "LC-WWW" "$H" || cat htaccess-www.txt >> "$H"
exit 0
