
#author : Hamada

pesen : str = input("Masukin Pesan anda : ")
banyak_pengaturan : int = int(input("Masukin banyaknya pengaturan : "))

pengaturan : dict = {}

pesen_baru = ""


for count in range(banyak_pengaturan):

    key : str = str(input("Masukin Huruf : ")).lower()
    val : str = str(input("Dan rubah huruf tersebut menjadi")).lower()
    if not key.isalpha() and not val.isalpha():
        print("input tidak valid, bye")
        exit(1)
    if pengaturan.keys().__contains__(key):
        print("huruf sudah ada, bye")
        exit(1)

    pengaturan[key] = val


print(pengaturan.keys())

for huruf in pesen.lower():

    if huruf == " " or huruf.isnumeric():
        pesen_baru += huruf
        continue

    if huruf in pengaturan.keys():
        temp = pengaturan.get(huruf)
        pesen_baru += temp
        continue

    pesen_baru += huruf


print(pesen_baru)