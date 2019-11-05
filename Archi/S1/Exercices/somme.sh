#!/bin/bash

result=0

for i in $*
do
let result=result+i
done

echo $result
