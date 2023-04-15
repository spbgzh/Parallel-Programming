delta=24935
N1=650
N2=250000
export LD_LIBRARY_PATH=./FW_1.3.1_Lin64/lib

for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab2-fw $var 1 >> seq_fw.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab2-fw $var 2 >> par_fw_2.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab2-fw $var 4 >> par_fw_4.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab2-fw $var 8 >> par_fw_8.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab2-fw $var 16 >> par_fw_16.txt
done
for ((var = $N1; var <= $N2; var += $delta)); do
    ./lab2-fw $var 32 >> par_fw_32.txt
done
