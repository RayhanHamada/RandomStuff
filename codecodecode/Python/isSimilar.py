import random as rn
from time import *

def isSimilar(arr1, arr2):
    ret = False
    for i in arr1:
        for j in arr2:
            print(i, "and ", j)
            if i == j:
                ret = True
                break
        if ret == True:
            break
    return ret


arr1 = []
arr2 = []
for i in range(100):
    arr1.append(rn.randint(0,1000))
    arr2.append(rn.randint(0,1000))
currTime = time()
print(isSimilar(arr1, arr2))
print(time()-currTime)
