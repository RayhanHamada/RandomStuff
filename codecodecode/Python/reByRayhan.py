
class REwannabe:


  def cocok(kalimat, pola):
    '''metode ini berfungsi untuk menentukan kecocokan kalimat dengan pola'''

    if kalimat == pola:
      return True
    else:
      return False


  def cari(kalimat, pola, spasiAwalAkhirPola=False):
    '''metode ini berfungsi untuk mencari pola dalam suatu kalimat
      spasiAwalAkhirPola untuk menentukan apakah pola yang dicari menjadi satu dengan kalimat tertentu'''

    if spasiAwalAkhirPola == True:

      if (" "+pola or pola+" " or " "+pola+" ") in kalimat:
        return True
      else:
        return False

    else:

      if pola in kalimat:
        return True
      else:
        return False

  def mulaiDengan(kalimat, pola):
    """metode ini berfungsi untuk menentukan apakah awal kalimat diawali dengan pola"""

    if pola in kalimat[0:len(pola)]:
        return True
    else:
        return False

  def akhirDengan(kalimat, pola):

      """metode ini berfungsi untuk menentukan apakah akhir kalimat diawali dengan pola"""

      if pola in kalimat[-1*len(pola):]:
          return True
      else:
          return False

print(REwannabe.akhirDengan('wowwowowowowo','wo'))




