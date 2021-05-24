# Récupère les ambassadeurs

URL=https://jorfsearch.steinertriples.fr/tag/ambassadeur?format=TSV
FILE=ambassadeur.csv

#téléchargement du fichier
wget ${URL} -O ${FILE}

#création d'une version avec 20 lignes
head -20 ${FILE} > minified.csv
