def main():
    name = input("Name: ")
    print(get_initials(name))

def get_initials(name):
    words = name.split()
    initials = ""

    for word in words:
        initials = initials + word[0].upper() + "."

    return initials

main()
