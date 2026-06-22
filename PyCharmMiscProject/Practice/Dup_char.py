str = input("Enter a string")
visit=" "
for i in range (len(str)):
    c= 0
    for j in range (len(str)):
        if str[i]==str[j]:
            c+=1
        if c>1 and str[i] not in visit:
            print(str[i],c)
        visit=visit+str[i]