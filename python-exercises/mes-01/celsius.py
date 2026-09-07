def main():
    C = float(input("Temperature: "))
    print(to_fahrenheit(C))

def to_fahrenheit(C):
    return C * 9/5 + 32 

main()
