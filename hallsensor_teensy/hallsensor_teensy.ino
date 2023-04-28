#include <hallsensor_teensy.h>
#include <ros.h>

ros::NodeHandle nh;
int topPin = A2;
//int botPin = A0;

//float a_bot =       7.534;  
//float b_bot =    -0.07144;  
//float c_bot =       6.424;  
//float d_bot =   -0.007682;  

float a_top =       9.627;  
float b_top =     -0.1028;  
float c_top =       6.925;  
float d_top =   -0.008572;   

float valtop = 0.0;  // variable to store the value read
float ytop = 0.0;

rosserial_arduino::hallsensor_teensy hall_message;
ros::Publisher pub("hallsensor_topic", &hall_message);

void hall_sensor_callback( const rosserial_arduino::hallsensor_teensy& msg){
  hall_message.top = msg.top;
  //hall_message.bot = msg.bot;
  Serial.print(hall_message.top);
}

// Define the number of samples to keep track of. The higher the number, the
// more the readings will be smoothed, but the slower the output will respond to
// the input. Using a constant rather than a normal variable lets us use this
// value to determine the size of the readings array.
const int numReadings_top = 10;
int readings_top[numReadings_top];      // the readings from the analog input
int readIndex_top = 0;              // the index of the current reading
int total_top = 0;                  // the running total
int average_top = 0;                // the average

//const int numReadings_bot = 10;
//int readings_bot[numReadings_bot];      // the readings from the analog input
//int readIndex_bot = 0;              // the index of the current reading
//int total_bot = 0;                  // the running total
//int average_bot = 0;                // the average


void setup() {
  Serial.begin(115200);           //  setup serial
  nh.getHardware()->setBaud(115200);
  // initialize all the readings to 0:
  for (int thisReading = 0; thisReading < numReadings_top; thisReading++) {
    readings_top[thisReading] = 0;
  }
//  for (int thisReading = 0; thisReading < numReadings_bot; thisReading++) {
//    readings_bot[thisReading] = 0;
//  }  
  nh.initNode();
  nh.advertise(pub);
}

void loop() {
  
  valtop = analogRead(topPin);  // read the input pin
  //valbot = analogRead(botPin);  // read the input pin

  //valbot = valbot-200.00+31.00;
  valtop = valtop-200;
  //ytop = 17.3 - 3.05*log(valtop); // THIS ONE
  //ybot = 14.8-2.51*log(valbot);//THIS ONE
  ytop = a_top*exp(b_top*valtop) + c_top*exp(d_top*valtop);
  //ybot = a_bot*exp(b_bot*valbot) + c_bot*exp(d_bot*valbot);
//  Serial.print("Top:");
//  Serial.print(ytop);
//  Serial.print(" Bot:");
//  Serial.println(ybot);          // final value

//----------------SMOTHING AVERAGE TOP----------------
  // subtract the last reading:
  total_top = total_top - readings_top[readIndex_top];
  // read from the sensor:
  readings_top[readIndex_top] = ytop;
  // add the reading to the total:
  total_top = total_top + readings_top[readIndex_top];
  // advance to the next position in the array:
  readIndex_top = readIndex_top + 1;

  // if we're at the end of the array...
  if (readIndex_top >= numReadings_top) {
    // ...wrap around to the beginning:
    readIndex_top = 0;
  }

  // calculate the average:
  average_top = total_top / numReadings_top;

////----------------SMOTHING AVERAGE BOT----------------
//  // subtract the last reading:
//  total_bot = total_bot - readings_bot[readIndex_bot];
//  // read from the sensor:
//  readings_bot[readIndex_bot] = ybot;
//  // add the reading to the total:
//  total_bot = total_bot + readings_bot[readIndex_bot];
//  // advance to the next position in the array:
//  readIndex_bot = readIndex_bot + 1;
//
//  // if we're at the end of the array...
//  if (readIndex_bot >= numReadings_bot) {
//    // ...wrap around to the beginning:
//    readIndex_bot = 0;
//  }
//
//  // calculate the average:
//  average_bot = total_bot / numReadings_bot;  

  
  hall_message.top = ytop;
  //hall_message.bot = ybot;  
  pub.publish(&hall_message);
  nh.spinOnce();
}
