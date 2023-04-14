#!/bin/bash
delta=35898
N1=1020
N2=360000

for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab1-seq $var >> seq.txt
done

for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab1-par-1 $var >> par1.txt
done

for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab1-par-2 $var >> par2.txt
done

for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab1-par-4 $var >> par4.txt
done

for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab1-par-8 $var >> par8.txt
done
