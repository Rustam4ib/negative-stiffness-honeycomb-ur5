import serial, time, sys

import math

def main():
    socket = serial.Serial()
    socket.baudrate = 115200 #this is the baud rate for the microcontroller
    socket.port = "/dev/ttyUSB0" 
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
    
    data5 = [[],[],[],[]]
    capArray = [0,0,0,0,0,0,0,0,0] #array of capacitive values for the 9 sensors
    UTI_BASE=capArray[:]
    pinSelect = [[0,4],[0,3],[0,2],[1,1],[1,2],[1,0],[2,2],[2,1],[2,0]] #the pins on the UTI that each sensor is connected to. Each tuple in this array gives the correct pins for each sensor...i think.
    
    
    #read the text file into an array for fake input...only for debugging
    file = open("fakeinput.txt")
    
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
            print "capArray: ", capArray

        ###################now visualise it - GRAPHICS PART#################
        ROWS, COLS = 3,3
        MARGIN_X,MARGIN_Y = 20, 20
        SQUARE_W, SQUARE_H = 140, 140
        GAP = 5
        
        k=0
        MAX_VAL = 600.0
        
    
        for i in range(0,COLS):
            for j in range(0, ROWS):
                #put a try-catch here to deal with potential spikes
                
                val = capArray[k]-UTI_BASE[k]
                #print val
                
                color = int(255-(255*(val/MAX_VAL)))            
                k=k+1
        #####################################################
        #time.sleep(0.01)
        

        UTI_BASE=capArray[:]
        
if __name__ == '__main__': main()
