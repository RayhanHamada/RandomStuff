import numpy as np
import matplotlib.pyplot as plt
import cv2

img = cv2.imread('watch.jpg', cv2.IMREAD_COLOR)
cv2.rectangle(img,(15,25),(150,200),(255,0,0),-1)
cv2.line(img,(0,0),(150,150),(255,255,255), 10)
cv2.circle(img,(100,63),50,(0,255,0), -1)

pts = np.array([[10,5], [20,30], [70,20], [50,10]], np.int32)
cv2.polylines(img,[pts], True, (255,255,0), 1)

cv2.imshow('Tampilan Gambar', img)
cv2.waitKey(0)
cv2.destroyAllWindows()