import sys

if len(sys.argv) != 2:
    sys.exit("Usage: python inventory.py FILE")

filename = sys.argv[1]
print(filename)