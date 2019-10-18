#! /bin/bash
#
grep $1 villes-pays.txt | cut -d: -f2
