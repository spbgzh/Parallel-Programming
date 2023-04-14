delta=100
N1=100
N2=1100
export LD_LIBRARY_PATH=./FW_1.3.1_Lin64/lib
for ((var = $N1; var <= $N2; var += $delta)); do
    echo $var >> amdala_fw.txt
    ./lab2-fw $var 1 >> amdala_fw.txt
    ./lab2-fw $var 2 >> amdala_fw.txt
    ./lab2-fw $var 4 >> amdala_fw.txt
    ./lab2-fw $var 8 >> amdala_fw.txt
    ./lab2-fw $var 16 >> amdala_fw.txt
    ./lab2-fw $var 32 >> amdala_fw.txt
done