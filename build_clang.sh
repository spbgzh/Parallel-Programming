#!/bin/bash
clang -O3 -Wall -Werror -o lab1-seq-clang lab1.c -lm
clang -O3 -Wall -Werror -mllvm -polly -mllvm -polly-parallel -lgomp -mllvm -polly-num-threads=1 -o lab1-par-clang-1 lab1.c -lm
clang -O3 -Wall -Werror -mllvm -polly -mllvm -polly-parallel -lgomp -mllvm -polly-num-threads=2 -o lab1-par-clang-2 lab1.c -lm
clang -O3 -Wall -Werror -mllvm -polly -mllvm -polly-parallel -lgomp -mllvm -polly-num-threads=4 -o lab1-par-clang-4 lab1.c -lm
clang -O3 -Wall -Werror -mllvm -polly -mllvm -polly-parallel -lgomp -mllvm -polly-num-threads=8 -o lab1-par-clang-8 lab1.c -lm