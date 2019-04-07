
#author : Hamada

pesen : str = input("Masukin Pesan anda")
cipCount : int = int(input("masukkan angka peubah"))
pesen_baru = ""

if not (pesen.isalpha()):
    print("input pesen nggak valid")
    exit(1)

if cipCount > 26:
    cipCount %= 26

for i in pesen:

    if i == " ":
        continue

    temporer = ord(i) + cipCount
    if (temporer > 122):
        temporer -=26

    pesen_baru += chr(temporer)


print(pesen_baru)

