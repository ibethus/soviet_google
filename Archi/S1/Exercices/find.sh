#!/bin/bash
echo "Extension recherchée ?"
read extend
echo "Combien de jours ?"
read jours

find ~ -name "*extend" -ctime -$jours
