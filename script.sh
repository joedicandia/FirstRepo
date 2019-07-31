#!/bin/bash

# Goal: Generate new file that prints the number of occurences of a motif in a fasta file. Create a new fasta file for each motif, listing all of teh genes and sequences containing that motif; name each new file after the motif and output to the directory "motifs"
# Author: Joe DiCandia

# Search fasta file for motifs:

while read motif
do
echo $motif
trimmedmotif="$(echo $motif | tr -d [:space:])"
grep -o $trimmedmotif $2 | wc -l
done < "$1" > motif_count.txt

# Create motifs directory:

mkdir motifs

# Add new files to motif directory containing genes witht that motif:


while read motif
do
trimmedmotif2="$(echo $motif | tr -d [:space:])"
grep -i $trimmedmotif2 $2 >> "motifs/$trimmedmotif2.txt"
done < "$1"
