#! /bin/bash

echo "Votre année de naissance ?"
read annee  
let age=2019-$annee
echo "Vous êtes né en $annee, vous avez donc $age ans."
