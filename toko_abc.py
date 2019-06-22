
pilih_lagi = True
harga_total = 0

def tampil_menu():
    print("Toko ABC Galaxy")
    print('-' * 15)
    print('1. Doll Toys Rp. 250.000,-')
    print('2. Car  Toys Rp. 150.000,-')
    print('3. Ball Toys Rp. 50.000,-')
    print('4. Keluar')
    print('-' * 15)
    print()

while pilih_lagi:
    tampil_menu()
    pilihan_mainan = int(input('Masukkan Pilihan Anda : '))
    if pilihan_mainan <= 0 or pilihan_mainan > 4:
        print('pilihan tidak boleh kurang dari atau sama dengan 0 atau lebih dari 4...\n\n')
        continue
    if pilihan_mainan == 4:
        print('Anda Keluar')
        exit(0)

    quantity = int(input('Masukkan Quantity : '))
    if quantity <= 0:
        print('kuantitas tidak boleh kurang dari atau sama dengan 0, ulangi input...\n\n')
        continue

    if pilihan_mainan == 1:
        harga_total += 250000 * quantity
    elif pilihan_mainan == 2:
        harga_total += 150000 * quantity
    else:
        harga_total += 50000 * quantity

    pilih_lagi = True if input('Masukkan pilihan lagi (y/t) :') == 'y' else False
    print()

print('Total harga belanja : Rp.{}'.format(harga_total))
uang_diterima = int(input('Uang yang diterima : Rp. '))
print('Uang Kembalian : Rp.{}'.format(uang_diterima - harga_total))