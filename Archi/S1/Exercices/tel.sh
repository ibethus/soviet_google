#! /bin/bash

nomFichier="telephones.dat"

case "$1" in 
ajouter)
    shift 
    echo $* >> $nomFichier
    ;;
chercher)
    grep "$2" $nomFichier
    ;;
voir)
    cat $nomFichier
    ;;
*)
    echo "Erreur"
    exit 1
    ;;
esac
