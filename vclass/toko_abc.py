# nama : Muhammad Rayhan Hamada Budiman
# NPM : 54418853
# kelas : 1IA08


def tampilkan_menu():
    print("Toko ABC Galaxy")
    print('-' * 15)
    print('1. Doll Toys Rp. 250.000,-')
    print('2. Car  Toys Rp. 150.000,-')
    print('3. Ball Toys Rp. 50.000,-')
    print('4. Keluar')
    print('-' * 15)
    print()

bisa_pilih_lagi = True
total_harga = 0
tampilkan_menu()
while bisa_pilih_lagi:
    pilihan = int(input('Masukkan Pilihan Anda : '))
    if pilihan <= 0 or pilihan > 4:
        print('pilihan tidak valid, ulangi input...\n\n')
        continue
    if pilihan == 4:
        print('Keluar, bye...')
        exit(0)

    kuantitas = int(input('Masukkan Kuantitas : '))
    if kuantitas <= 0:
        print('kuantitas tidak valid, ulangi input...\n\n')
        continue

    if pilihan == 1:
        total_harga += 250000 * kuantitas
    elif pilihan == 2:
        total_harga += 150000 * kuantitas
    else:
        total_harga += 50000 * kuantitas

    bisa_pilih_lagi = True if input('Masukkan pilihan lagi (y/t) :') == 'y' else False
    print()

print('Total harga belanja : Rp.{}'.format(total_harga))
uang_diterima = int(input('Uang yang diterima : Rp. '))
print('Uang Kembalian : Rp.{}'.format(uang_diterima - total_harga))
