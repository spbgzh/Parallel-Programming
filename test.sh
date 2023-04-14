#!/bin/bash
delta=23398
N1=1020
N2=235000

echo -e "It is lab1-seq \v"
for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab1-seq $var >> seq.txt
done

echo -e "It is lab1-par-1 \v"
for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab1-par-1 $var >> par1.txt
done

echo -e "It is lab1-par-2 \v"
for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab1-par-2 $var >> par2.txt
done

echo -e "It is lab1-par-4 \v"
for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab1-par-4 $var >> par4.txt
done

echo -e "It is lab1-par-6 \v"
for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab1-par-6 $var >> par6.txt
done
