berapa_angka = int(input("Kalian akan input berapa angka ? "))
kumpulan_angka = []
h_perkalian = 1
h_pertambahan = 0

for i in range(berapa_angka): kumpulan_angka.append(int(input("Masukkan angka " + str(i+1) + " : ")))

for i in kumpulan_angka:
    h_perkalian *= i
    h_pertambahan += i

print("Perkalian semua angka : ", h_perkalian)
print("Penambahan semua angka : ", h_pertambahan)