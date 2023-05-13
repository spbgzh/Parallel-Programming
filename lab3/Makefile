CC=gcc -std=c99

CFLAGS= -O3 -Wall -Werror -o lab3 lab3.c -lm -fopenmp
CFLAGS_without_fopenmp= -O3 -o lab3_without_fopenmp lab3.c -lm 
CFLAGS_SCHEDULE_S1= -O3 -Wall -Werror -DSCHEDULE_TYPE=static -DCHUNK_SIZE=1 -o static1 lab3_schedule.c -lm -fopenmp
CFLAGS_SCHEDULE_S2= -O3 -Wall -Werror -DSCHEDULE_TYPE=static -DCHUNK_SIZE=2 -o static2 lab3_schedule.c -lm -fopenmp
CFLAGS_SCHEDULE_S4= -O3 -Wall -Werror -DSCHEDULE_TYPE=static -DCHUNK_SIZE=4 -o static4 lab3_schedule.c -lm -fopenmp
CFLAGS_SCHEDULE_S8= -O3 -Wall -Werror -DSCHEDULE_TYPE=static -DCHUNK_SIZE=8 -o static8 lab3_schedule.c -lm -fopenmp

CFLAGS_SCHEDULE_D1= -O3 -Wall -Werror -DSCHEDULE_TYPE=dynamic -DCHUNK_SIZE=1 -o dynamic1 lab3_schedule.c -lm -fopenmp
CFLAGS_SCHEDULE_D2= -O3 -Wall -Werror -DSCHEDULE_TYPE=dynamic -DCHUNK_SIZE=2 -o dynamic2 lab3_schedule.c -lm -fopenmp
CFLAGS_SCHEDULE_D4= -O3 -Wall -Werror -DSCHEDULE_TYPE=dynamic -DCHUNK_SIZE=4 -o dynamic4 lab3_schedule.c -lm -fopenmp
CFLAGS_SCHEDULE_D8= -O3 -Wall -Werror -DSCHEDULE_TYPE=dynamic -DCHUNK_SIZE=8 -o dynamic8 lab3_schedule.c -lm -fopenmp

CFLAGS_SCHEDULE_G1= -O3 -Wall -Werror -DSCHEDULE_TYPE=guided -DCHUNK_SIZE=1 -o guided1 lab3_schedule.c -lm -fopenmp
CFLAGS_SCHEDULE_G2= -O3 -Wall -Werror -DSCHEDULE_TYPE=guided -DCHUNK_SIZE=2 -o guided2 lab3_schedule.c -lm -fopenmp
CFLAGS_SCHEDULE_G4= -O3 -Wall -Werror -DSCHEDULE_TYPE=guided -DCHUNK_SIZE=4 -o guided4 lab3_schedule.c -lm -fopenmp
CFLAGS_SCHEDULE_G8= -O3 -Wall -Werror -DSCHEDULE_TYPE=guided -DCHUNK_SIZE=8 -o guided8 lab3_schedule.c -lm -fopenmp

all: lab3

lab3: lab3.c
	$(CC) $(CFLAGS) -g

without_fopenmp: lab3.c
	$(CC) $(CFLAGS_without_fopenmp) -g

static: lab3_schedule.c
	$(CC) $(CFLAGS_SCHEDULE_S1) -g
	$(CC) $(CFLAGS_SCHEDULE_S2) -g
	$(CC) $(CFLAGS_SCHEDULE_S4) -g
	$(CC) $(CFLAGS_SCHEDULE_S8) -g

dynamic: lab3_schedule.c
	$(CC) $(CFLAGS_SCHEDULE_D1) -g
	$(CC) $(CFLAGS_SCHEDULE_D2) -g
	$(CC) $(CFLAGS_SCHEDULE_D4) -g
	$(CC) $(CFLAGS_SCHEDULE_D8) -g

guided: lab3_schedule.c
	$(CC) $(CFLAGS_SCHEDULE_G1) -g
	$(CC) $(CFLAGS_SCHEDULE_G2) -g
	$(CC) $(CFLAGS_SCHEDULE_G4) -g
	$(CC) $(CFLAGS_SCHEDULE_G8) -g


clean:
	rm -f lab3 static* dynamic* guided* lab3o*