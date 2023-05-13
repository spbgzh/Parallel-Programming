CC=gcc -std=c99

CFLAGS= -O3 -Wall -Werror -o lab3 lab3.c -lm -fopenmp
CFLAGS_without_fopenmp= -O3 -o lab3_without_fopenmp lab3.c -lm 
CFLAGS_SCHEDULE_S1= -O3 -Wall -Werror -o static1 lab3_schedule_static1.c -lm -fopenmp
CFLAGS_SCHEDULE_S2= -O3 -Wall -Werror -o static2 lab3_schedule_static2.c -lm -fopenmp
CFLAGS_SCHEDULE_S4= -O3 -Wall -Werror -o static4 lab3_schedule_static4.c -lm -fopenmp
CFLAGS_SCHEDULE_S8= -O3 -Wall -Werror -o static8 lab3_schedule_static8.c -lm -fopenmp

CFLAGS_SCHEDULE_D1= -O3 -Wall -Werror -o dynamic1 lab3_schedule_dynamic1.c -lm -fopenmp
CFLAGS_SCHEDULE_D2= -O3 -Wall -Werror -o dynamic2 lab3_schedule_dynamic2.c -lm -fopenmp
CFLAGS_SCHEDULE_D4= -O3 -Wall -Werror -o dynamic4 lab3_schedule_dynamic4.c -lm -fopenmp
CFLAGS_SCHEDULE_D8= -O3 -Wall -Werror -o dynamic8 lab3_schedule_dynamic8.c -lm -fopenmp

CFLAGS_SCHEDULE_G1= -O3 -Wall -Werror -o guided1 lab3_schedule_guided1.c -lm -fopenmp
CFLAGS_SCHEDULE_G2= -O3 -Wall -Werror -o guided2 lab3_schedule_guided2.c -lm -fopenmp
CFLAGS_SCHEDULE_G4= -O3 -Wall -Werror -o guided4 lab3_schedule_guided4.c -lm -fopenmp
CFLAGS_SCHEDULE_G8= -O3 -Wall -Werror -o guided8 lab3_schedule_guided8.c -lm -fopenmp

all: lab3

lab3: lab3.c
	$(CC) $(CFLAGS) -g

without_fopenmp: lab3.c
	$(CC) $(CFLAGS_without_fopenmp) -g

static:
	$(CC) $(CFLAGS_SCHEDULE_S1) -g
	$(CC) $(CFLAGS_SCHEDULE_S2) -g
	$(CC) $(CFLAGS_SCHEDULE_S4) -g
	$(CC) $(CFLAGS_SCHEDULE_S8) -g

dynamic:
	$(CC) $(CFLAGS_SCHEDULE_D1) -g
	$(CC) $(CFLAGS_SCHEDULE_D2) -g
	$(CC) $(CFLAGS_SCHEDULE_D4) -g
	$(CC) $(CFLAGS_SCHEDULE_D8) -g

guided:
	$(CC) $(CFLAGS_SCHEDULE_G1) -g
	$(CC) $(CFLAGS_SCHEDULE_G2) -g
	$(CC) $(CFLAGS_SCHEDULE_G4) -g
	$(CC) $(CFLAGS_SCHEDULE_G8) -g


clean:
	rm -f lab3 static* dynamic* guided*