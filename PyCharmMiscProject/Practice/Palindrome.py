str = input("Enter a string")
rev=""
for i in str:
    rev=i + rev
print(rev)
if str==rev:
    print("Palindrome")
else:
    print("Not Palindrome")