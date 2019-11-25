## Début de la boucle infinie qui rappelle le rdv lorsque l'heure est arrivée ##
while [ $nbLignes -ne 0 ]
do
    echo $! > boucle.pid
    sleep 30
    for i in $(seq 1 $nbLignes)
    do
        horaire=$(sed "${i}q;d" horaires.db | cut -d: -f1)
        date=$(date +%H%M)
        message=$(sed "${i}q;d" horaires.db)
        if [ $date = $horaire ]
        then
        xmessage $message -buttons FERMER
        sed -i "${i}d" horaires.db
        nbLignes=$(< horaires.db wc -l)
        fi
    done
done