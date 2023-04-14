N=12345

export LD_LIBRARY_PATH=./FW_1.3.1_Lin64/lib
for ((var = 0; var <= 10; var += 1)); do
    ./lab2-fw $N 1 >> amdala_fw.txt
done
for ((var = 0; var <= 10; var += 1)); do
    ./lab2-fw $N 2 >> amdala_fw.txt
done
for ((var = 0; var <= 10; var += 1)); do
    ./lab2-fw $N 4 >> amdala_fw.txt
done
for ((var = 0; var <= 10; var += 1)); do
    ./lab2-fw $N 8 >> amdala_fw.txt
done
for ((var = 0; var <= 10; var += 1)); do
    ./lab2-fw $N 16 >> amdala_fw.txt
done
for ((var = 0; var <= 10; var += 1)); do
    ./lab2-fw $N 32 >> amdala_fw.txt
done