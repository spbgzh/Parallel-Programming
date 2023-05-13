delta=43875
N1=1250
N2=440000

for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab3 $var 1 >> lab3_1.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab3 $var 2 >> lab3_2.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab3 $var 4 >> lab3_4.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab3 $var 8 >> lab3_8.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab3 $var 16 >> lab3_16.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab3 $var 32 >> lab3_32.txt
done
