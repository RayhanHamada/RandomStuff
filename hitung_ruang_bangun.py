masih_bisa_milih = True

while masih_bisa_milih:

    print("Program Menghitung Volume Ruang Bangun")
    print("-" * 50)
    print("Pilihan Ruang Bangun")
    print("-" * 50)

    print("1. Balok\n2. Bola\n3. Tabung\n4. keluar")
    print("-" * 50)

    pilihan = int(input("Masukkan Pilihan Anda : "))

    if  pilihan == 1:

        p = float(input("Masukkan Panjang Balok : " ))
        l  = float(input("Masukkan Lebar Balok : "))
        t = float(input("Masukkan Tinggi Balok : "))

        print("Volume Balok adalah : ", round(p*l*t, 3), " cm^3")

    elif pilihan == 2:

        j = float(input("Masukkan jari-jari bola : "))
        print("Volume Bola adalah : ", round(4.0 * 3.14 * pow(j, 3)/3.0, 3), " cm^3")

    elif pilihan == 3:

        j = float(input("Masukkan jari-jari tabung : "))
        t = float(input("Masukkan tinggi tabung : "))
        print("Volume Tabung adalah : ", round(3.14 * pow(j, 2) * t, 3), " cm^3")

    elif pilihan == 4:
        break

    else:
        print("pilihan tidak valid, bye...")
        break

    masih_bisa_milih = True if input("Masukkan pilihan lagi ? [y/t] : ") == "y" else False

    print("\n\n")

