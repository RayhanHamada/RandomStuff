import random as r
from math import *
#just calculating distances between 2 cities

def randomizing():
    cities = {}
    if cities == {}:
        return r.randint(1, 1000), r.randint(1, 1000)
    else:
        randomized = (r.randint(1,1000),r.randint(1,1000))
        for i in cities:
            if i == randomized :
                randomizing(cities)
            else:
                return randomized

def htg_masing(kota1,i,j):

    selisih_xy = (kota1["Kota {}".format(i)][0]-kota1["Kota {}".format(j)][0],kota1["Kota {}".format(i)][1]-kota1["Kota {}".format(j)][1])
    powered_xy = (pow(selisih_xy[0],2),pow(selisih_xy[1],2))
    squared_xy = round(sqrt(sum(powered_xy)),3)
    return squared_xy

def generate_cities(manycities):
    cities = {}
    for i in range(manycities):
        cities["Kota {}".format(i+1)] = randomizing()
    return cities

def list_jarak(cities):
    jarak_2kota ={}
    for i in range(1, len(cities)+1):
        for j in range(1, len(cities)+1):
            if cities["Kota {}".format(i)] != cities["Kota {}".format(j)]:
                jarak_2kota["Kota {} dengan Kota {}".format(i, j)] = htg_masing(cities, i, j)
    return jarak_2kota

def hapus_tidak_sama(dict):
        clean_dict = {}
        for key,value in dict.items():
            if value not in clean_dict.values():
                clean_dict[key] = value
        return clean_dict

def iterateThis(dict):
    list_akhir = list(dict)
    for i in list_akhir:
        print(i, ":", dict[i])


def runThis():
    # deklarasi variabel
    many_city = int(input("How many cities you want to generate ? \n"))
    cities = generate_cities(many_city)
    jarak_2kota = list_jarak(cities)
    jarak_2kota = hapus_tidak_sama(jarak_2kota)
    iterateThis(jarak_2kota)

runThis()
