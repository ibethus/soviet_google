#! /bin/bash

echo "Bonjour $USER"
echo -n "aujourd'hui "
date

france="Europe/Paris"
vietnam="Asia/Ho_Chi_Minh"

echo -n "heure Vietnam = "
TZ=$vietnam date

echo -n "heure France = "
TZ=$france date
