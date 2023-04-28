#!/usr/bin/env python
"""
  Node:image_publisher.py  
  Version: 1.1 
  Date: 2014-04-16
  Description:
	Allows to acquire data from tactile arrays through usb port and publish as ros topic.
	.....
  Topic: real_image
  Topic Msg Type: http://docs.ros.org/api/sensor_msgs/html/msg/Image.html
"""

import rospy
import serial, time, sys
import math
import pygame
from pygame.locals import *

from sensor_msgs.msg import Image
from std_msgs.msg import String
from std_msgs.msg import Header
   
def pub_sensor_image():
	# Create the ros node for comunication wiht the master
    rospy.init_node('sensor_image', anonymous=True)
    
	# Create publisher with topic "real_image" ussing message type "Image" previously imported
    pub = rospy.Publisher('real_image', Image)
    
    # define publish rate in hz
    r = rospy.Rate(100)
   
    # checking shutdown flag 
    while not rospy.is_shutdown():
        
        #Fill message data in ros image format using std_msgs
        msg = Image()
        msg.height=3 				#number of rows
        msg.width=3 				#number of columns
        msg.step=3 					#number of columns (3) * number of channels (1) * size of data type(1) 
        msg.encoding="8UC1"     	#conversions (mono8: CV_8UC1, grayscale image) and in OpenCv CvMat: "8UC1"
        msg.is_bigendian=0      	#false default
        msg.header.frame_id = "Sensor_frame" #frame where is located the sensor
        now = rospy.get_rostime() 	#get ros time
        msg.header.stamp = now		
        	
        #Get data from sensor array and fill in msg parameter data
        capArray = []
        array = sensor(capArray)
        msg.data = array
        
        #Publish image in topic     
        pub.publish(msg)
        rospy.loginfo("Image published...")
        
        #Sleep rate
        r.sleep()

def sensor(capArray):
	socket = serial.Serial()
	socket.baudrate = 115200 #this is the baud rate for the microcontroller
	socket.port = "/dev/ttyUSB0" #this depends on the computer being used
	socket.timeout = 1 
	
	try:
		socket.open() #open a socket for that com port and that baud rate
		opened = True
		alive = True
		print "Successfully connected to the vsTPad device."
	except:
		print "Problem with connection to vsTPad device. Please make sure the device is connected and/or the correct COM port has been defined."
		print "retrying..."

	UTI_N = 0 #this tells us which UTI we're reading from
	UTI_BASE=[0,0,0,0,0,0,0,0,0]
	
	data5 = [[],[],[],[]]
	capArray = [0,0,0,0,0,0,0,0,0] #array of capacitive values for the 9 sensors
	capArray255 = [0,0,0,0,0,0,0,0,0] #array of capacitive values for the 9 sensors
	pinSelect = [[0,4],[0,3],[0,2],[1,1],[1,2],[1,0],[2,2],[2,1],[2,0]] #the pins on the UTI that each sensor is connected to. Each tuple in this array gives the correct pins for each sensor...i think.
	
	
	#read the text file into an array for fake input...only for debugging
	#file = open("fakeinput.txt")
	
	#set up the graphics/window
	pygame.init()
	screen = pygame.display.set_mode((480,480))
	
	while 1:
		socket.write(str(UTI_N)) #write the UTI number to the com port to receive a response from that UTI
		data = socket.read(12)              # read 12 bytes from the UTI
		#make sure the array is empty from the previous sweep
		data6 = []

		#print "data: ", data #this is the raw data that arrives from the port
		#data is 12 bytes in length
		k=0
		for j in range(0, 6): #form the 12 bytes of ascii we receive, we need to convert them into 6 decimal values 
			data6.append((256*ord(data[k]))+ord(data[k+1]))
			k=k+2
			
		#do the 'sylvain bug' test
		if data6[0]-data6[1]<2500:
			data5[UTI_N].append(data6[0]+data6[1]) #the first two bytes of data6 are actually from the same place so combine them. Now we only have 5 values
		else:
			#rearrange the array...
			print "oops, didn't deal with this bit yet..."
			
		#then fill the rest of the data5 array...there are 5 pins on each UTI (I think). Each entry in the array is the value we receive from each pin. The pins that correspond to our sensors are indicated in the pinSelect array.
		for i in range(2, len(data6)):
			data5[UTI_N].append(data6[i])
				
		#except:#you can ignore this part
			##print "debugging: no open port...use fake input"
			##fake input
			#data5_fake = file.readline()
			#data5_fake = data5_fake.strip( '\n' );
			#data5_fake = data5_fake.split(',')

			#for i in range(0, len(data5_fake)):
				#data5[UTI_N].append(int(data5_fake[i]))
		
		#now do it all again for the next UTI
		if UTI_N<3:
			UTI_N=UTI_N+1
		else:
			UTI_N=0
			
			#print data5
			
			#this is where we fill the array of capacitive values for each sensor using the values from the correct pins.
			#fill the array to be visualised
			for i in range(0,len(capArray)):
				#this will give us an array of values corresponding to each capacitor
				capArray[i] = data5[pinSelect[i][0]][pinSelect[i][1]]
		
			#print data5
			#now we can clear this array
			data5 = [[],[],[],[],[]]
			maxArray = max(capArray)
			for i in range(0,len(capArray)):
				#this will give us an array of values corresponding to each capacitor
				capArray255[i]= 255*capArray[i]/maxArray
			print "capArray: ", capArray
			print "maxArray: ", maxArray
			return capArray255
		
		#**************************
		ROWS, COLS = 3,3
		MARGIN_X,MARGIN_Y = 20, 20
		SQUARE_W, SQUARE_H = 140, 140
		GAP = 5
		
		#calibration needs to be done here too.
		#now the little visualisation part.
		screen.fill((255,255,255));

		k=0
		MAX_VAL = 600.0
		
	
		for i in range(0,COLS):
			for j in range(0, ROWS):
				#put a try-catch here to deal with potential spikes
				
				val = capArray[k]-UTI_BASE[k]
				#print val
				
				color = int(255-(255*(val/MAX_VAL)))
				
				try:
					pygame.draw.rect(screen, (255,color,color), ((MARGIN_X+(i*SQUARE_W))+(i*GAP),(MARGIN_Y+(j*SQUARE_H))+(j*GAP),SQUARE_W,SQUARE_H), 0)
				except:
					print "-"
					
				k=k+1
		#####################################################
		#time.sleep(0.01)
		
		########KEY PRESSES########
		#check for the end of the application
		for event in pygame.event.get():
			if event.type == QUIT:
				pygame.quit(); sys.exit();
				
			if (event.type == KEYDOWN):
				#print event.key		
				if (event.key == K_ESCAPE):
					pygame.quit(); sys.exit();
				if (event.key == K_c):
					#take the base level for each UTI and store it
					print "calibrated"
					UTI_BASE=capArray[:]
					
	
		pygame.display.update()
    
if __name__ == '__main__':
    try:
        pub_sensor_image()
    except rospy.ROSInterruptException: pass
    rospy.loginfo("Image publishing terminated.")
