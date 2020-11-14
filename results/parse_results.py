import sys
bits=sys.argv[1]

print("# All wd2 wd1 df")
for m in range(1,6):
    print(m-1,end=" ")
    for style in ["wd2", "wd1", "df"]:
        try:
            f = open("csidh-"+str(bits)+"-"+style+"-m"+str(m)+".results")
            for i in range(0, 1024):
                f.readline()
            average = f.readline().split("\x1b")[-2].split("m")[-1]
            f.readline()
            Q1 = f.readline().split("\x1b")[-2].split("m")[-1]
            median = f.readline().split("\x1b")[-2].split("m")[-1]
            Q3 = f.readline().split("\x1b")[-2].split("m")[-1]
            f.readline()
            Min = f.readline().split("\x1b")[-2].split("m")[-1]
            Max = f.readline().split("\x1b")[-2].split("m")[-1]
            print(Min, Q1, median, Q3, Max,end=" ")
        except:
            print("0 0 0 0 0",end=" ")
    print("")
