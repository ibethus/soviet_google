#!/bin/bash

if [ $1 -gt $2 ]
then
	echo $1
elif [ $1 -eq $2 ]
then
	echo "Ces deux nombres sont égaux !"
else
	echo $2
fi
