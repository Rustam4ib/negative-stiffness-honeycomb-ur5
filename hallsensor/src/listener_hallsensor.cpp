#include<iostream>
#include <ros/ros.h>
#include <rosserial_arduino/hallsensor.h>

rosserial_arduino::hallsensor global_msg;

void hallsensor_callback(const rosserial_arduino::hallsensor::ConstPtr& msg){
    global_msg.top = msg->top;
    global_msg.bot = msg->bot;
    ROS_INFO_STREAM(global_msg);
}

int main(int argc, char** argv){
	ros::init(argc, argv, "hallsensor_listener");
	ros::NodeHandle nh;
    ros::Subscriber subscriber = nh.subscribe("hallsensor_publisher", 1, &hallsensor_callback);
    ros::spin();
    return 0;
}