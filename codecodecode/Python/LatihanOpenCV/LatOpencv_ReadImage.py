import cv2
import numpy as np
import matplotlib.pyplot as plt

img = cv2.imread('watch.jpg', cv2.IMREAD_COLOR)
cv2.imshow('Tampilan Image',img)
cv2.waitKey(0)
cv2.destroyAllWindows()