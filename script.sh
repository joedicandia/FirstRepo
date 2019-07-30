#!/bin/bash

while read motif
do
echo $motif
trimmedmotif=$motif | tr -d [:space:]
grep -o $trimmedmotif "$2" | wc -l
done < "$1"


