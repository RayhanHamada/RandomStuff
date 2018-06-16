
def cek(angka):
    array_sementara1 = []
    array_sementara2 = []

    for setiapX in range(1, angka+1):

        if angka%setiapX == 0:
            array_sementara1.append(setiapX)
    jumlahArray = sum(array_sementara1)

    for setiapY in range(1,jumlahArray+1):

        if jumlahArray%setiapY == 0:
            array_sementara2.append(setiapY)

    jumlahArray2 = sum(array_sementara2)

    if angka*2 == jumlahArray2:
        print("Angka {} adalah angka sempurna".format(angka))
    else:
        print("Angka {} adalah angka tidak sempurna".format(angka))
    array_sementara1.clear()
    array_sementara2.clear()

def seterusnya(berapaKali):

    for i in range(1, berapaKali):
        cek(i)



seterusnya(100)

