#include<iostream>
using namespace std;
#include "HexFT.h"
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <wittenstein_msgs/wittenstein.h>
#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>
#include <chrono>

int main(int argc, char** argv) {
	ros::init(argc, argv, "main_wittenstein");
	ros::NodeHandle nh;
	//ros::Rate r(1);
	ros::Publisher publisher = nh.advertise<wittenstein_msgs::wittenstein>("wittenstein_topic", 10);
	//ros::Publisher vis_pub = nh.advertise<visualization_msgs::Marker>( "visualization_marker", 0 );
	// Create HexFT sensor object.
	// Please change serial port name according to your setup!
	HexFT *hexFT = new HexFT("/dev/ttyACM1");

	SensorData sensorData;
	ROS_INFO_STREAM("*****Connecting*****");
	//uint32_t shape = visualization_msgs::Marker::ARROW;
	while(ros::ok()){
		//auto start = std::chrono::high_resolution_clock::now();
 		sensorData = hexFT->ReadSensorData();
    	//auto end = std::chrono::high_resolution_clock::now();
		//std::chrono::duration<double, std::milli> float_ms = end - start;
		//std::cout << "ReadSensorData() elapsed time is " << float_ms.count() << " milliseconds" << std::endl;
		wittenstein_msgs::wittenstein wittenstein_msg;
		wittenstein_msg.fx = sensorData.fX;
		wittenstein_msg.fy = sensorData.fY;
		wittenstein_msg.fz = sensorData.fZ;

		publisher.publish(wittenstein_msg);
		// //ROS_INFO_STREAM("Fz: " << sensorData.fZ);
		// visualization_msgs::Marker marker;
		// marker.header.frame_id = "my_frame";
		// marker.header.stamp = ros::Time();
		// marker.ns = "my_namespace";
		// marker.id = 0;
		// marker.type = visualization_msgs::Marker::CUBE;
		// marker.action = visualization_msgs::Marker::ADD;
		// marker.pose.position.x = 0;
		// marker.pose.position.y = 0;
		// marker.pose.position.z = 0;
		// marker.pose.orientation.x = 0.0;
		// marker.pose.orientation.y = 0.0;
		// marker.pose.orientation.z = 0.0;
		// marker.pose.orientation.w = 1.0;
		// marker.scale.x = 0.1 + wittenstein_msg.fx;
		// marker.scale.y = 0.1 + wittenstein_msg.fy;
		// marker.scale.z = 0.1 + wittenstein_msg.fz;
		// marker.color.a = 1.0; // Don't forget to set the alpha!
		// marker.color.r = 1.0;
		// marker.color.g = 1.0;
		// marker.color.b = 0.0;
		// //only if using a MESH_RESOURCE marker type:
		// marker.mesh_resource = "package://pr2_description/meshes/base_v0/base.dae";
		// marker.lifetime = ros::Duration();
		// vis_pub.publish( marker );
		// shape = visualization_msgs::Marker::ARROW;
		//r.sleep();
		ros::spinOnce();
	}



	//while(true){
	// Read one data package
	//sensorData = hexFT->ReadSensorData();

	// Print results
	//cout << "Fx: " << sensorData.fX << endl;
	//cout << "Fy: " << sensorData.fY << endl;
	//cout << "Fz: " << sensorData.fZ << endl;
	//cout << "Mx: " << sensorData.mX << endl;
	//cout << "My: " << sensorData.mY << endl;
	//cout << "Mz: " << sensorData.mZ << endl;
	//cout << "Temperature: " << sensorData.temperature << endl;
	//}
	return 0;
}
