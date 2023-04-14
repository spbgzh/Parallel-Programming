all: build

build: lab2.c
	gcc -std=c11 -Wall -Werror -o lab2-fw $< -I ./FW_1.3.1_Lin64/ -L ./FW_1.3.1_Lin64/lib  -lm -l fwImage -l fwBase -l fwSignal	
