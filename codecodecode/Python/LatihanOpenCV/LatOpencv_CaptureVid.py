import cv2
import numpy as np
import matplotlib.pyplot as plt

cap = cv2.VideoCapture(1)

while True:
    ret, frame = cap.read()
    grayed = cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY)
    cv2.imshow('Tampilan Gambar', frame)
    cv2.imshow("Tampilan Gambar di abu-abu kan",grayed)
    if cv2.waitKey(1) & 0xff == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()
