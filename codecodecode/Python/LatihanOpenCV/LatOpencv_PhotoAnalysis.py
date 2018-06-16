import numpy as np
import cv2

img = cv2.imread('watch.jpg',cv2.IMREAD_COLOR)

img[0:74, 0:87] = img[37:111, 107:194]

cv2.imshow('Tampilan Gambar', img)
cv2.waitKey(0)
cv2.destroyAllWindows()