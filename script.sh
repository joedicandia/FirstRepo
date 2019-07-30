#!/bin/bash

while read motif
do
echo $motif
trimmedmotif="$(echo $motif | tr -d [:space:])"
grep -o $trimmedmotif $2 | wc -l
done < "$1"
