#! /bin/bash

let heure=$1/100
let minute=$1-$heure*100
let total=$heure*60+$minute
echo $total