
#author : Hamada

pesen : str = input("Masukin Pesan anda")
cipCount : int = int(input("masukkan angka peubah"))
pesen_baru = ""

if cipCount > 26:
    cipCount %= 26

for i in pesen.lower():

    if i == " " or i.isnumeric():
        pesen_baru += i
        continue

    temporer = ord(i) + cipCount
    if (temporer > 122):
        temporer -=26

    pesen_baru += chr(temporer)


print(pesen_baru)

