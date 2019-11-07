#!/bin/bash

while read numero nom
do
	printf "| %30s %-30s |\n" $numero $nom
done < telephones.dat
