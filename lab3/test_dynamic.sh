delta=43875
N1=1250
N2=440000

for ((var = $N1; var <= $N2; var += $delta)); do
    ./dynamic1 $var 1 >>lab3_dynamic1_1.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./dynamic1 $var 2 >>lab3_dynamic1_2.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./dynamic1 $var 4 >>lab3_dynamic1_4.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./dynamic1 $var 8 >>lab3_dynamic1_8.txt
done

for ((var = $N1; var <= $N2; var += $delta)); do
    ./dynamic2 $var 1 >>lab3_dynamic2_1.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./dynamic2 $var 2 >>lab3_dynamic2_2.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./dynamic2 $var 4 >>lab3_dynamic2_4.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./dynamic2 $var 8 >>lab3_dynamic2_8.txt
done

for ((var = $N1; var <= $N2; var += $delta)); do
    ./dynamic4 $var 1 >>lab3_dynamic4_1.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./dynamic4 $var 2 >>lab3_dynamic4_2.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./dynamic4 $var 4 >>lab3_dynamic4_4.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./dynamic4 $var 8 >>lab3_dynamic4_8.txt
done

for ((var = $N1; var <= $N2; var += $delta)); do
    ./dynamic8 $var 1 >>lab3_dynamic8_1.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./dynamic8 $var 2 >>lab3_dynamic8_2.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./dynamic8 $var 4 >>lab3_dynamic8_4.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./dynamic8 $var 8 >>lab3_dynamic8_8.txt
done
