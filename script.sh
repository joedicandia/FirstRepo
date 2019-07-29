#!/bin/bash

motifs=cat /dev/stdin
echo 'ATTTTGCA: '
grep -o "ATTTTTGCA" $motifs | wc -l

