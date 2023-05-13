delta=43875
N1=1250
N2=440000

for ((var = $N1; var <= $N2; var += $delta)); do
    ./static1 $var 1 >>lab3_static1_1.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./static1 $var 2 >>lab3_static1_2.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./static1 $var 4 >>lab3_static1_4.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./static1 $var 8 >>lab3_static1_8.txt
done

for ((var = $N1; var <= $N2; var += $delta)); do
    ./static2 $var 1 >>lab3_static2_1.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./static2 $var 2 >>lab3_static2_2.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./static2 $var 4 >>lab3_static2_4.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./static2 $var 8 >>lab3_static2_8.txt
done

for ((var = $N1; var <= $N2; var += $delta)); do
    ./static4 $var 1 >>lab3_static4_1.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./static4 $var 2 >>lab3_static4_2.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./static4 $var 4 >>lab3_static4_4.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./static4 $var 8 >>lab3_static4_8.txt
done

for ((var = $N1; var <= $N2; var += $delta)); do
    ./static8 $var 1 >>lab3_static8_1.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./static8 $var 2 >>lab3_static8_2.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./static8 $var 4 >>lab3_static8_4.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./static8 $var 8 >>lab3_static8_8.txt
done
