def print_num(n):
    if n>15:
        return

    print(n)
    print_num(n+1)
print_num(1)