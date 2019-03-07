import cv2
import numpy as np

backsub = cv2.BackgroundSubtractorMOG() #background subtraction to isolate moving cars
capture = cv2.VideoCapture("dataset/video1.avi") #change to destination on your pc 
cascade_src = 'cars.xml'
car_cascade = cv2.CascadeClassifier(cascade_src)
i = 0
minArea=1

while True:
    ret, frame = capture.read()
    
    if (type(frame) == type(None)):
        break
        
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    fgmask = backsub.apply(frame, None, 0.01)
    blur = cv2.blur(fgmask, (10,10))
    erode = cv2.erode(blur,None,iterations=4)
    moments = cv2.moments(erode,True)               #moments method applied
    area=moments['m00']
    if moments['m00'] >=minArea:
        x=int(moments['m10']/moments['m00'])   #extracts the centroids of the vehicles
        y=int (moments['m01']/moments['m00'])
        print(x,y)
        if x>0 and x<240 and y>125 and y<145:       #range of coordinates to trigger the count
            i=i+1
            print(i)
            
    cars = car_cascade.detectMultiScale(gray, 1.1, 1)

    for (x,y,w,h) in cars:
        cv2.rectangle(frame,(x,y),(x+w,y+h),(161,212,144),2)      
    
    cv2.line(frame,(0,125),(220,125),(255,0,0),2)
    cv2.line(fgmask,(0,125),(220,125),(255,0,0),2)

    cv2.putText(frame,'COUNT: %r' %i, (10,30), cv2.FONT_HERSHEY_SIMPLEX,
                        1, (255, 0, 0), 2)
    
    cv2.imshow('video', frame)
    cv2.imshow("background sub", fgmask)
    
    if cv2.waitKey(1) & 0xFF == ord('q'):
        cv2.destroyAllWindows()
        print("Exiting")
        break
    
cv2.destroyAllWindows()
