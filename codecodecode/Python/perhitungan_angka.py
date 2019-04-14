berapa_angka = int(input("Kalian akan input berapa angka ? ")) #nginput berapa angka yang musti dimasukin
kumpulan_angka = [] #inisiasi array buat nampung semua angka
h_perkalian = 1 #inisiasi hasil perkalian, nilainya musti 1, kalo 0 nanti hasilnya 0
h_pertambahan = 0 #inisiasi hasil pertambahan

#ngambil input dari user, trus tambahin ke array
for i in range(berapa_angka):
    kumpulan_angka.append(int(input("Masukkan angka " + str(i+1) + " : ")))

#ngetotalin semua hasil perkalian sama pertambahan
for i in kumpulan_angka:
    h_perkalian *= i
    h_pertambahan += i

#cetak output
print("Perkalian semua angka : ", h_perkalian)
print("Penambahan semua angka : ", h_pertambahan)