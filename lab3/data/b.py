# top -b -d 1 1 -n 120 > cpu_usage.txt
path = "./lab3/data/"
cpu0 = []
cpu1 = []
cpu2 = []
cpu3 = []
for index in ["1", "2", "4", "8"]:
    with open(path+"cpu_usage.txt", "r") as f:  # 打开文件
        data = f.readlines()  # 读取文件
        for i in data:
            if i.startswith("%Cpu0"):
                cpu0.append(i.split("%Cpu0  : ")[-1].split(" us,")[0])
            if i.startswith("%Cpu1"):
                cpu1.append(i.split("%Cpu1  : ")[-1].split(" us,")[0])
            if i.startswith("%Cpu2"):
                cpu2.append(i.split("%Cpu2  : ")[-1].split(" us,")[0])
            if i.startswith("%Cpu3"):
                cpu3.append(i.split("%Cpu3  : ")[-1].split(" us,")[0])
for i in range(len(cpu1)):
    if cpu0[i].startswith("%Cpu0"):
        cpu0[i] = cpu0[i].split("%Cpu0  :")[-1]
    if cpu1[i].startswith("%Cpu1"):
        cpu1[i] = cpu1[i].split("%Cpu1  :")[-1]
    if cpu2[i].startswith("%Cpu2"):
        cpu2[i] = cpu2[i].split("%Cpu2  :")[-1]
    if cpu3[i].startswith("%Cpu3"):
        cpu3[i] = cpu3[i].split("%Cpu3  :")[-1]
for i in cpu3:
    print(i)
