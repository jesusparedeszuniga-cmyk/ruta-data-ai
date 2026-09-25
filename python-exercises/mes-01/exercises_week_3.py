"""
try:
    day = int(input("What day is it: "))
except ValueError:
    print("Enter just day, as number")
else:
    print("Understood")
"""

"""
raw = input("What day is it: ")
try:
    day = int(raw)
except ValueError:
    print(f"Enter the day as a number. Got: {raw!r}")
else:
    print(f"Understood: day {day}")
"""

"""
try:
    n = int(input("n: "))
except ValueError:
    print("A")
else:
    print("B")
finally:
    print("C")
"""

"""
with open("hi5.txt") as file:
    for line in file:
        print(line.strip())

file.read()
"""

"""
import csv

with open("cases_export.csv") as file:
    reader = csv.DictReader(file)
    for i, row in enumerate(reader, start=0):
        if i == 2:
            break
        print(i, row)
"""

"""
import csv

with open("cases_export.csv") as file:
    reader = csv.DictReader(file)
    total = 0
    skipped = 0
    rows_counted = 0
    for row in reader:
        try:
            total += int(row["settlement_amount"])
            rows_counted += 1
        except ValueError:
            skipped += 1

print(f"Total Settled: {total}")
print(f"Total Cases: {rows_counted + skipped}")
print(f"Closed Cases: {rows_counted}")
print(f"Cases Without Amount: {skipped}")
"""
"""
import sys

if len(sys.argv) < 2:
    sys.exit("Too few command-line arguments")

if len(sys.argv) > 2:
    sys.exit("Too many command-line arguments")

filename = sys.argv[1]

if not filename.endswith(".py"):
    sys.exit("Not a Python file")

try:
    with open(filename) as file:
        counts = 0

        for line in file:
            line = line.strip()

            if line == "":
                continue

            if line.startswith("#"):
                continue

            counts += 1

except FileNotFoundError:
    sys.exit("File does not exist")

print(counts)
"""
"""
import csv

with open("cases_export.csv") as file:
    reader = csv.DictReader(file)
    rows = list(reader)

with open("output.csv", "w") as file:
    writer = csv.DictWriter(file, fieldnames=["case_id", "state"])
    writer.writeheader()
    for row in rows:
        writer.writerow({"case_id": row["case_id"], "state": row["state"]})
"""

"""
import sys
import csv

if len(sys.argv) < 3:
    sys.exit("Too few command-line arguments")

if len(sys.argv) > 3:
    sys.exit("Too many command-line arguments")

input_file = sys.argv[1]
output_file = sys.argv[2]

try:
    with open(input_file) as file:
        reader = csv.DictReader(file)
        rows = list(reader)
except FileNotFoundError:
    sys.exit(f"Could not read {input_file}")  

with open(output_file, "w") as file:
    writer = csv.DictWriter(file, fieldnames=["first", "last", "house"])
    writer.writeheader()
    for row in rows:
        last, first = row["name"].split(", ")
        writer.writerow({"first": first, "last": last, "house": row["house"]})
"""