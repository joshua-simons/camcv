import numpy as np
import cv2

cap = cv2.VideoCapture("dataset/video1.avi")

while True:
    ret, frame = cap.read()
    if (type(frame) == type(None)):
        break
        
    cv2.imshow('Frame', frame)
    
#    frame2 = frame
#    line1 = np.array([[100,100],[300,100],[350,200]],np.int32).reshape((-1,1,2))
#    frame2 = cv2.polylines(frame2,[line1],False,(255,0,0),thickness=2)
    
#    cv2.imshow('Frame 2', frame2)
