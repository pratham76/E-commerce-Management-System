file = "customer.csv"
with open(file) as f:
    print(f"INSERT INTO ",file[:file.index(".")],"VALUES", end = "")
    a = ""
    for i in f.readlines()[1:]:
        a+="("+",".join([f'"{j}"' if not j.isdigit() else j for j in i.strip().split(",")]).rstrip(",")+"),\n"
    print(a.rstrip(",\n")+";")
