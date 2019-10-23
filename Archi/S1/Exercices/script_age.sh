#! /bin/bash

echo "Votre année de naissance ?"
read annee  
let age=$(date +%Y)-$annee
echo "Vous êtes né en $annee, vous avez donc $age ans."
