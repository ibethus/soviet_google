#!/bin/bash

r=1
for i in $(seq 1 $1)
do
	let r*=i
	echo $r
done

