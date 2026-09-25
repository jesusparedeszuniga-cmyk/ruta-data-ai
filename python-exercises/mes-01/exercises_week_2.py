""" else
n = 0

if n > 0:

    print("Positive")

else:

    print("Not Positive")
"""

""" elif
score = 59

if score >= 90:
    print("honors")

elif score >= 60:
    print("pass")

else :
   print("fail")
"""

""" not, and, or
age = 50

if age >= 18 and age <= 65:
    print("Mayor")

not (x > 5) == x <= 5
"""

""" Comparacion encadenada
if 18 <= age <= 65:
    print("Mayor")
"""

"""" in
letter = "a"

if letter in "aeiou" :
    print("vocal")

"""

"""% y //

n = 9

if n % 3 == 0:
    print("It's multiple of 3")
"""

"""Funciones que devuelven booleanos


def is_even(n):
    return n % 2 == 0

result = is_even(4)
print(result)
"""

"""MATCH
match day:
    case "sat" | "sun":
        answer = "weekend"
    case _:
        answer = "weekday"
"""

"""" INPUT
n = input("Numero: ")
print(n==5)

text = "   Hello   "
text = text.strip().lower()
"""

"""" WHILE
n = 1

while n < 6:
    print(n)
    n = n + 1


n = 0
while n < 3:
    n = n + 1
    print(n)

n = 1
while n < 3:
    print(n)
    n = n + 1
"""

""" FOR
for cadena in "legal":
    print(cadena)
"""

""" RANGE
for i in range(1,11):
    print(i)
"""

"""Acumuladores: sumar y contar dentro de un loop
total = 0

for i in range(1,6):
    total = total + i

print(total)
"""

""" WHILE
while True:
    numero = input("Numero: ").strip().lower()
    if numero == "salir":
        break
    print("Fin")
"""

""" CONTINUE
for i in range(1,11):
    if i % 3 == 0:
        continue
    print(i)
"""

""" Loops anidados
for row in range(3):
    for col in range(3):
        print("#", end="")
    print()

for row in range(3):
    for col in range(3):
        print("#")
    print()
"""

"""Recorrer con índice
for i in range(1,3):
    for j in range(1,4):
        print(i,j)
"""

""" Recorrer con índice
cases = ["draft", "review", "filed"]
for i, case in enumerate(cases, start=1):
    print(i, case)

items = ["a", "b", "c"]
for i in range(len(items)):
    print(i, items[i])
"""

"""APPEND
doubled = []

for n in range(1,5):
    doubled.append(n * 2)

print(doubled)
"""

"""
while True:
    number = input("Number: ")
    if number.isdigit():
        break

number = int(number)
print(number)

"""

"""
word = input("Input: ")

for letter in word:
    if letter.lower() not in ("a", "e", "i", "o", "u"):
        print(letter, end="")
print()
"""
