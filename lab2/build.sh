#!/bin/bash
gcc -O3 -std=c99 -Wall -Werror -o lab2-fw lab2.c -I ./FW_1.3.1_Lin64/ -L ./FW_1.3.1_Lin64/lib  -lm -l fwImage -l fwBase -l fwSignal