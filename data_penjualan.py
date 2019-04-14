

#membuat class untuk masing-masing record

class Record:

    def __init__(self, nama_pembeli, nama_barang, harga, kuantitas):
        self.nama_pembeli : str= nama_pembeli
        self.nama_barang : str = nama_barang
        self.harga : int = harga
        self.kuantitas : int = kuantitas
        self.total_belanja : int = harga * kuantitas



kumpulanRecord : list = []

#masukkan data
kumpulanRecord.append(Record("Quinsha", "Stroller", 1_900_000, 1))
kumpulanRecord.append(Record("Rachelia", "Mainan", 100_000, 4))
kumpulanRecord.append(Record("Afilada", "Ayunan", 500_000, 2))
kumpulanRecord.append(Record("Gojhi", "Kursi Makan", 350_000, 3))
kumpulanRecord.append(Record("Nughie", "Tempat Tidur", 3_500_000, 1))

no = 1
total_penjualan = 0
#print nama field

print("-"*90)
print("No       Nama Pembeli        Nama Barang         Harga       Quantity        Total Belanja")
print("-"*90)
for data  in kumpulanRecord:
    print(str(no) + " "*(10-len(str(no))),
          data.nama_pembeli + " "*(18-len(data.nama_pembeli)),
          data.nama_barang + " "*(18-len(data.nama_barang)),
          str(data.harga) + " "*(11-len(str(data.harga))),
          str(data.kuantitas) + " "*(15-len(str(data.kuantitas))),
          str(data.total_belanja) + " "*(15-len(str(data.total_belanja))))
    no+=1
    total_penjualan += data.total_belanja


print()
print("Total Penjualan : Rp. ", total_penjualan)