#! /bin/bash

echo "heure de départ:"
read depart
echo "heure d'arrivée:"
read arrivee

function conversion_min
{
let local heure=$1/100
let local minute=$1-$heure*100
let local total=$heure*60+$minute
}

conversion_min $depart
t1=$total
conversion_min $arrivee
t2=$total

let temps=$t2-$t1

function conversion_heure
{
let local heure=$1/60
let local minute=$1-$heure*60
total2=$heure"h"$minute
}

conversion_heure $temps
t3=$total2
echo "Durée du trajet: $t3"
