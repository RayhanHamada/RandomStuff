import numpy as np
import cv2

img1 = cv2.imread('3D-Matplotlib.png')
img2 = cv2.imread('mainsvmimage.png')

weighted = cv2.addWeighted(img1,0.6,img2,0.4,0)

cv2.imshow('FIgur 1',weighted)
cv2.waitKey(0)
cv2.destroyAllWindows()
