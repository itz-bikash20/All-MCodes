def fibonacci(n):
    if n <= 1:
        return n
    return fibonacci(n-1) + fibonacci(n-2)
a= int(input("Enter the number: "))
print(fibonacci(a))