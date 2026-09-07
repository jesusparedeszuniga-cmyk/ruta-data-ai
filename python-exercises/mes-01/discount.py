def main():
    text = input("Amount: ")
    number = input("Percentage: ")
    converted_text = dollars_to_float(text)
    converted_number = percent_to_num(number)
    final_price = apply_discount(converted_text,converted_number)
    print(f"S/ {final_price:.2f}")


def dollars_to_float(text):
    return float(text.replace("S/","").strip())

def percent_to_num(number):
    return float(number.replace("%",""))/100

def apply_discount(dollars,percent):
    return dollars*(1-percent)


main()