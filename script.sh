#!/bin/bash

while read motif
do
echo $motif
grep -o "$motif" "$2" | wc -l
done < "$1"


