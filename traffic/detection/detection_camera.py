#
import io
import time
import cv2
import picamera
import picamera.array
import numpy as np

stream = io.BytesIO()
cam = picamera.PiCamera()
cam.resolution = (320,240)

print(cv2.__version__)

while True:
	cam.capture(stream, format='jpeg', use_video_port=True)
	frame = np.fromstring(stream.getvalue(), dtype=np.uint8)
	stream.seek(0)
	frame = cv2.imdecode(frame, 1)

	cv2.imshow('Video', frame)


#	car_cascade = cv2.CascadeClassifier('cars.xml')

#	ret, img = frame.read()
#	if (type(img) == type(None)):
#			break
#
#	gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
#
#	cars = car_cascade.detectMultiScale(gray, 1.1, 1)
#
#	for (x,y,w,h) in cars:
#		cv2.rectangle(img,(x,y),(x+w,y+h),(0,0,255),2)
#
#	cv2.imshow('video', img)

	if cv2.waitKey(1) == 27:
		camera.close()
		cv2.destroyAllWindows()
		break
