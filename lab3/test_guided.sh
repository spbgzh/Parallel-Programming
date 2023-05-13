delta=43875
N1=1250
N2=440000

for ((var = $N1; var <= $N2; var += $delta)); do
    ./guided1 $var 1 >>lab3_guided1_1.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./guided1 $var 2 >>lab3_guided1_2.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./guided1 $var 4 >>lab3_guided1_4.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./guided1 $var 8 >>lab3_guided1_8.txt
done

for ((var = $N1; var <= $N2; var += $delta)); do
    ./guided2 $var 1 >>lab3_guided2_1.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./guided2 $var 2 >>lab3_guided2_2.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./guided2 $var 4 >>lab3_guided2_4.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./guided2 $var 8 >>lab3_guided2_8.txt
done

for ((var = $N1; var <= $N2; var += $delta)); do
    ./guided4 $var 1 >>lab3_guided4_1.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./guided4 $var 2 >>lab3_guided4_2.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./guided4 $var 4 >>lab3_guided4_4.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./guided4 $var 8 >>lab3_guided4_8.txt
done

for ((var = $N1; var <= $N2; var += $delta)); do
    ./guided8 $var 1 >>lab3_guided8_1.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./guided8 $var 2 >>lab3_guided8_2.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./guided8 $var 4 >>lab3_guided8_4.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./guided8 $var 8 >>lab3_guided8_8.txt
done
