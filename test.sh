#!/bin/bash
echo -e "It is lab1-seq \v"
for ((var = 1500; var <= 570000; var += 56850)); do
    ./lab1-seq $var
done

echo -e "It is lab1-par-1 \v"
for ((var = 1500; var <= 570000; var += 56850)); do
    ./lab1-par-1 $var
done

echo -e "It is lab1-par-2 \v"
for ((var = 1500; var <= 570000; var += 56850)); do
    ./lab1-par-2 $var
done

echo -e "It is lab1-par-4 \v"
for ((var = 1500; var <= 570000; var += 56850)); do
    ./lab1-par-4 $var
done

echo -e "It is lab1-par-6 \v"
for ((var = 1500; var <= 570000; var += 56850)); do
    ./lab1-par-6 $var
done
