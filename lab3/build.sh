#!/bin/bash
gcc -std=c99 -O3 -Wall -Werror -o lab3 lab3.c -lm -fopenmp
gcc -std=c99 -O3 -o lab3_without_fopenmp lab3.c -lm 