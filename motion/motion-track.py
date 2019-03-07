#!/usr/bin/env python

progname = "motion_track.py"
ver = "version 0.95"

"""
motion-track ver 0.95 written by Claude Pageau pageauc@gmail.com
Raspberry (Pi) - python opencv2 motion tracking using picamera module

This is a raspberry pi python opencv2 motion tracking demonstration program.
It will detect motion in the field of view and use opencv to calculate the
largest contour and return its x,y coordinate.  I will be using this for
a simple RPI robotics project, but thought the code would be useful for 
other users as a starting point for a project.  I did quite a bit of 
searching on the internet, github, etc but could not find a similar
implementation that returns x,y coordinates of the most dominate moving 
object in the frame.  Some of this code is base on a YouTube tutorial by
Kyle Hounslow using C here https://www.youtube.com/watch?v=X6rPdRZzgjg

Here is a my YouTube video demonstrating this demo program using a 
Raspberry Pi B2 https://youtu.be/09JS7twPBsQ

Requires a Raspberry Pi with a RPI camera module installed and configured
dependencies

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install python-opencv python-picamera
sudo apt-get install libgl1-mesa-dri  

"""
print("%s %s using python2 and OpenCV2" % (progname, ver))
print("Loading Please Wait ....")
# import the necessary packages
import io
import time
import cv2

from picamera.array import PiRGBArray
from picamera import PiCamera
from threading import Thread

# Display Settings
debug = True        # Set to False for no data display
window_on = True   # Set to True displays opencv windows (GUI desktop reqd)
SHOW_CIRCLE = True  # show a circle otherwise show bounding rectancle on window
CIRCLE_SIZE = 8     # diameter of circle to show motion location in window
LINE_THICKNESS = 2  # thickness of bounding line in pixels
WINDOW_BIGGER = 1   # Resize multiplier for Movement Status Window
                    # if gui_window_on=True then makes opencv window bigger
                    # Note if the window is larger than 1 then a reduced frame rate will occur            

# Camera Settings
CAMERA_WIDTH = 640
CAMERA_HEIGHT = 480
big_w = int(CAMERA_WIDTH * WINDOW_BIGGER)
big_h = int(CAMERA_HEIGHT * WINDOW_BIGGER)      
CAMERA_HFLIP = False
CAMERA_VFLIP = False
CAMERA_ROTATION=0
CAMERA_FRAMERATE = 35
FRAME_COUNTER = 1000

# Motion Tracking Settings
MIN_AREA = 150       # excludes all contours less than or equal to this Area
THRESHOLD_SENSITIVITY = 15
BLUR_SIZE = 10

#-----------------------------------------------------------------------------------------------  
class PiVideoStream:
    def __init__(self, resolution=(CAMERA_WIDTH, CAMERA_HEIGHT), framerate=CAMERA_FRAMERATE, rotation=0, hflip=False, vflip=False):
        # initialize the camera and stream
        self.camera = PiCamera()
        self.camera.resolution = resolution
        self.camera.rotation = rotation
        self.camera.framerate = framerate
        self.camera.hflip = hflip
        self.camera.vflip = vflip
        self.rawCapture = PiRGBArray(self.camera, size=resolution)
        self.stream = self.camera.capture_continuous(self.rawCapture,
            format="bgr", use_video_port=True)

        # initialize the frame and the variable used to indicate
        # if the thread should be stopped
        self.frame = None
        self.stopped = False

    def start(self):
        # start the thread to read frames from the video stream
        t = Thread(target=self.update, args=())
        t.daemon = True
        t.start()
        return self

    def update(self):
        # keep looping infinitely until the thread is stopped
        for f in self.stream:
            # grab the frame from the stream and clear the stream in
            # preparation for the next frame
            self.frame = f.array
            self.rawCapture.truncate(0)

            # if the thread indicator variable is set, stop the thread
            # and resource camera resources
            if self.stopped:
                self.stream.close()
                self.rawCapture.close()
                self.camera.close()
                return

    def read(self):
        # return the frame most recently read
        return self.frame

    def stop(self):
        # indicate that the thread should be stopped
        self.stopped = True

#-----------------------------------------------------------------------------------------------  
def show_FPS(start_time,frame_count):
    if debug:
        if frame_count >= FRAME_COUNTER:
            duration = float(time.time() - start_time)
            FPS = float(frame_count / duration)
            print("Processing at %.2f fps last %i frames" %( FPS, frame_count))
            frame_count = 0
            start_time = time.time()
        else:
            frame_count += 1
    return start_time, frame_count

#-----------------------------------------------------------------------------------------------  
def motion_track():
    print("Initializing Camera ....")
    # Save images to an in-program stream
    # Setup video stream on a processor Thread for faster speed
    vs = PiVideoStream().start()
    vs.camera.rotation = CAMERA_ROTATION
    vs.camera.hflip = CAMERA_HFLIP
    vs.camera.vflip = CAMERA_VFLIP
    time.sleep(2.0)    
    if window_on:
        print("press q to quit opencv display")
    else:
        print("press ctrl-c to quit")        
    print("Start Motion Tracking ....")
    cx = 0
    cy = 0
    cw = 0
    ch = 0
    frame_count = 0
    start_time = time.time()
    # initialize image1 using image2 (only done first time)
    image2 = vs.read()     
    image1 = image2
    grayimage1 = cv2.cvtColor(image1, cv2.COLOR_BGR2GRAY)
    first_image = False    
    still_scanning = True
    while still_scanning:
        image2 = vs.read()        
        start_time, frame_count = show_FPS(start_time, frame_count)
        # initialize variables         
        motion_found = False
        biggest_area = MIN_AREA
        # At this point the image is available as stream.array
        # Convert to gray scale, which is easier
        grayimage2 = cv2.cvtColor(image2, cv2.COLOR_BGR2GRAY)
        # Get differences between the two greyed, blurred images
        differenceimage = cv2.absdiff(grayimage1, grayimage2)
        differenceimage = cv2.blur(differenceimage,(BLUR_SIZE,BLUR_SIZE))
        # Get threshold of difference image based on THRESHOLD_SENSITIVITY variable
        retval, thresholdimage = cv2.threshold(differenceimage,THRESHOLD_SENSITIVITY,255,cv2.THRESH_BINARY)
        # Get all the contours found in the thresholdimage
        contours, hierarchy = cv2.findContours(thresholdimage,cv2.RETR_EXTERNAL,cv2.CHAIN_APPROX_SIMPLE)
        total_contours = len(contours)
        # save grayimage2 to grayimage1 ready for next image2
        grayimage1 = grayimage2
        # find contour with biggest area
        for c in contours:
            # get area of next contour
            found_area = cv2.contourArea(c)
            # find the middle of largest bounding rectangle
            if found_area > biggest_area:
                motion_found = True
                biggest_area = found_area
                (x, y, w, h) = cv2.boundingRect(c)
                cx = int(x + w/2)   # put circle in middle of width
                cy = int(y + h/6)   # put circle closer to top
                cw = w
                ch = h
                
        if motion_found:
            # Do Something here with motion data
            if window_on:
                # show small circle at motion location
                if SHOW_CIRCLE:
                    cv2.circle(image2,(cx,cy),CIRCLE_SIZE,(0,255,0), LINE_THICKNESS)
                else:
                    cv2.rectangle(image2,(cx,cy),(x+cw,y+ch),(0,255,0), LINE_THICKNESS)                  
            if debug:
                print("Motion at cx=%3i cy=%3i  total_Contours=%2i  biggest_area:%3ix%3i=%5i" % (cx ,cy, total_contours, cw, ch, biggest_area))

        if window_on:
            # cv2.imshow('Difference Image',differenceimage) 
            cv2.imshow('OpenCV Threshold', thresholdimage)
            if WINDOW_BIGGER > 1:  # Note setting a bigger window will slow the FPS
                image2 = cv2.resize( image2,( big_w, big_h ))                             
            cv2.imshow('Movement Status  (Press q in Window to Quit)', image2)
            
            # Close Window if q pressed while movement status window selected
            if cv2.waitKey(1) & 0xFF == ord('q'):
                cv2.destroyAllWindows()
                print("End Motion Tracking")
                still_scanning = False

#-----------------------------------------------------------------------------------------------    
if __name__ == '__main__':
    try:
        motion_track()
    finally:
        print("")
        print("+++++++++++++++++++++++++++++++++++")
        print("%s %s - Exiting" % (progname, ver))
        print("+++++++++++++++++++++++++++++++++++")
        print("")                                



