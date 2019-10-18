#! /bin/bash
grep $1[0-9][0-9][0-9] ./insee.csv | cut -d";" -f1
