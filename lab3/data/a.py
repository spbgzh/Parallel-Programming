path = "./lab3/data/"
list_ = []
for index in ["1", "2", "4", "8"]:
    with open(path+"lab3_static8_"+index+".txt", "r") as f:  # 打开文件
        data = f.readlines()  # 读取文件
        for i in data:
            if i.startswith(" N="):

                list_.append(i.split("passed: ")[-1].split("\n")[0])

for i in range(11):
    temp = ""
    for j in range(4):
        temp = temp+str(list_[11*j+i])+','
    print(temp)
