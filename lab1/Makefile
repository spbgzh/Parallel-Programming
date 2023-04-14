all: build

build: lab1.c
	gcc -O3 -std=c99 -Wall -Werror -o lab1-seq $<  -lm
	gcc -O3 -std=c99 -Wall -Werror -floop-parallelize-all -ftree-parallelize-loops=1 $<  -o lab1-par-1 -lm
	gcc -O3 -std=c99 -Wall -Werror -floop-parallelize-all -ftree-parallelize-loops=2 $<  -o lab1-par-2 -lm
	gcc -O3 -std=c99 -Wall -Werror -floop-parallelize-all -ftree-parallelize-loops=4 $<  -o lab1-par-4 -lm
	gcc -O3 -std=c99 -Wall -Werror -floop-parallelize-all -ftree-parallelize-loops=8 $<  -o lab1-par-8 -lm