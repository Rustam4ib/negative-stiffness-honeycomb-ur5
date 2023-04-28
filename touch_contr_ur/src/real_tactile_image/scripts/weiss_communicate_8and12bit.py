#!/usr/bin/env python
"""
  Node:weiss_communicate.py  
  Version: 1.1 
  Date: 2014-12-16
  Description:
    Allows to acquire data from WEISS tactile arrays through usb port and publish as ros topic.
    .....
  Topic: real_image
  Topic Msg Type: http://docs.ros.org/api/sensor_msgs/html/msg/Image.html
"""

import serial, time, sys
import numpy as np # to operate with arrays
import math
import rospy
import pygame
from pygame.locals import * #do not know yet
from sensor_msgs.msg import Image # type of massage in ROS 
from std_msgs.msg import String # type of massage in ROS
from std_msgs.msg import Header # type of massage in ROS
from tactile_servo_msgs.msg import Image_weiss # type of massage in ROS

socket = serial.Serial()
socket.baudrate = 115200 #this is the baud rate for the microcontroller
socket.port = "/dev/ttyACM0" #different on each device Should be coded in smarter way
socket.timeout = 1 # do not know     

weiss_cmd_single_frame_hex = np.array( ((int("AA", 16)), (int("AA", 16)), (int("AA", 16)), (int("20", 16)), (int("01", 16)), (int("00", 16)), (int("00", 16)), (int("8F", 16)), (int("83", 16))) ) 
z = np.int8(weiss_cmd_single_frame_hex)
MAX_VAL = 3895
pressure_profile = []
pressure_profile_high_gain = []

try:
    socket.open() #open a socket for that com port and that baud rate
    opened = True
    alive = True
    print "Successfully connected to the Weiss tactile sensor."
except:
    print "Problem with connection to vsTPad device. Please make sure the device is connected and/or the correct COM port has been defined."
    print "retrying..."

def pub_sensor_image():
    #Global variable for pressure profile
    global pressure_profile
    global pressure_profile_high_gain

    # Create the ros node for comunication with the master
    rospy.init_node('weiss_communicate', anonymous=True)
    
    # Create publisher with topic "real_image" ussing message type "Image" previously imported
    pub_high_dynamic_range = rospy.Publisher('ros_tactile_image_weiss', Image_weiss, queue_size=1)
    #pub_high_gain = rospy.Publisher('tactile_image_high_gain', Image, queue_size=1)
    pub = rospy.Publisher('ros_tactile_image', Image, queue_size=1)

    # define publish rate in hz
    r = rospy.Rate(200)

    # checking shutdown flag 
    while not rospy.is_shutdown():
        
        #Fill message data in custom ros image 32 bit format using std_msgs
        msg_wiess = Image_weiss()
        msg_wiess.height=14                #number of rows
        msg_wiess.width=6                 #number of columns
        msg_wiess.step=6                  #number of columns (6) * number of channels (1) * size of data type(1)
        msg_wiess.encoding="CV_16U"         #conversions (mono8: CV_8UC1, grayscale image) and in OpenCv CvMat: "8UC1"
        msg_wiess.is_bigendian=0          #false default
        msg_wiess.header.frame_id = "weiss" #frame where is located the sensor
        now = rospy.get_rostime()   #get ros time
        msg_wiess.header.stamp = now #time

        #Fill message data in ros image format using std_msgs
        #msg_high_gain = Image()
        #msg_high_gain.height=14                #number of rows
        #msg_high_gain.width=6                 #number of columns
        #msg_high_gain.step=6                  #number of columns (6) * number of channels (1) * size of data type(1)
        #msg_high_gain.encoding="8UC1"         #conversions (mono8: CV_8UC1, grayscale image) and in OpenCv CvMat: "8UC1"
        #msg_high_gain.is_bigendian=0          #false default
        #msg_high_gain.header.frame_id = "weiss" #frame where is located the sensor
        #now = rospy.get_rostime()   #get ros time
        #msg_high_gain.header.stamp = now # time

        #Fill message data in ros image format using std_msgs
        msg = Image()
        msg.height=14                #number of rows
        msg.width=6                 #number of columns
        msg.step=6                  #number of columns (6) * number of channels (1) * size of data type(1)
        msg.encoding="8UC1"         #conversions (mono8: CV_8UC1, grayscale image) and in OpenCv CvMat: "8UC1"
        msg.is_bigendian=0          #false default
        msg.header.frame_id = "weiss" #frame where is located the sensor
        now = rospy.get_rostime()   #get ros time
        msg.header.stamp = now # time

                    
        msg_wiess.data = pressure_profile
        #Publish image in topic     
        pub_high_dynamic_range.publish(msg_wiess)
        pressure_profile = [] #clear the pressure array
        
        #msg_high_gain.data = pressure_profile_high_gain
        #Publish image in topic     
        #pub_high_gain.publish(msg_high_gain)
        #pressure_profile_high_gain = [] #clear the pressure array

        #Get data from sensor array and fill in msg parameter data
        capArray = []
        array = sensor(capArray)
        msg.data = array
        pub.publish(msg)
        
        #rospy.loginfo("Image published...")
        #Sleep rate
        
        r.sleep()
        
# get tactile image from sensor through serial communication        
def sensor(capArray):
    global pressure_profile
    #global pressure_profile_high_gain

    out = [] # raw data from sensor
    out_converted = [] # decimal representation of each raw value
    showData = [] # decoded decimal values from the sensor Array with size of 84 (16*4)
    #showData255 = [] #OpenCV accept only values from 0 to 255
    # print ("\n", "counter of success =", counter_1)
    # socket = serial.Serial()
    # socket.baudrate = 115200 #this is the baud rate for the microcontroller
    # socket.port = "/dev/ttyACM0" #different on each device Should be coded in smarter way
    # socket.timeout = 1 # do not know     
    
    # try:
    #     socket.open() #open a socket for that com port and that baud rate
    #     opened = True
    #     alive = True
    #     print "Successfully connected to the Weiss tactile sensor."
    # except:
    #     print "Problem with connection to vsTPad device. Please make sure the device is connected and/or the correct COM port has been defined."
    #     print "retrying..."
    # pygame.init()
    # screen = pygame.display.set_mode((480,480))
    #input = 1;
    while 1:
        socket.write(z)# + '\r\n'
        # print "already tried to send"
        out = ''
        #print "data: ", data #this is the raw data that arrives from the port
        #data is 183 bytes in length
        out = socket.read(183)
        if out != '':
            # print ("I got this =", out)
            out_converted = []
            showData = []
            #form the 183 bytes of ascii we receive, we need to convert them into 84 decimal values
            for j in range(0,183):
                out_converted.append(ord(out[j]))
            # print (out_converted)
            # print ("element 85 =",ord(out[85]))
            # counter_1 = counter_1 + 1
            # print ("counter of success ",counter_1)
            #decode 183 bytes to 84 tactels
            #this will give us an array of values corresponding to each capacitor
            for i in range(1,85):
                showData.append(out_converted[13+i*2-1]*16*16+out_converted[12+i*2-1])
            color = []

            for k in range(0,84):
                val = showData[k] #multiply each tactel's pressure. Sensor provides 12 bit infor i.e from 0 to 4096. Opencv image format is 8 bit 0 to 255
                val_high_gain = val*5 
                if val > MAX_VAL:
                    val = MAX_VAL #otherwise it will couse an error in publishing data
                if val_high_gain > MAX_VAL:
                    val_high_gain = MAX_VAL #otherwise it will couse an error in publishing data   
                color.append(int(255*(float(float(val)/float(MAX_VAL))))) #OpenCV accept only values from 0 to 255
                pressure_profile.append(val) #fill up pressure array 12bit tactel by tactle
                #pressure_profile_high_gain.append(int(255*(float(float(val_high_gain)/float(MAX_VAL)))))
            # print (showData)
            # maxArray = max(showData)
            #for i in range(0,len(showData)):
                #this will give us an array of values corresponding to each capacitor
            # showData255 = 255*showData/maxArray
            # print "maxArray: ", maxArray
            # print showData255
            return color #return 8 bit tactile image. pressure_array is global



if __name__ == '__main__':
    try:
        pub_sensor_image()
    except rospy.ROSInterruptException: pass
    rospy.loginfo("Image publishing terminated.")


# ser.open()

# ser.isOpen()

