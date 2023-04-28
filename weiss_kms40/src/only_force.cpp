#include <ros/ros.h>
#include "std_msgs/String.h"
#include <geometry_msgs/WrenchStamped.h>

std::vector<geometry_msgs::WrenchStamped::ConstPtr> force_z;
float fz = 0.0;

/*This is the callback function that will get called when a new message has arrived on the topic
ConstPtr& - boost::shared_ptr<MSG const>
By passing a const pointer into the callback, we avoid doing a copy
*/
void force_z_Callback(const geometry_msgs::WrenchStamped::ConstPtr& msg)
{

  fz = msg->wrench.force.z; //(pointer_name)->(variable_name)
  ROS_INFO_STREAM(fz);
  force_z.push_back(msg);
}

int main(int argc, char **argv)
{

  //"WEISS" is node name
  ros::init(argc, argv, "WEISS_Z");

  //NodeHandle is the main access point to communications with the ROS system
  ros::NodeHandle nh;
  // Start message
  ROS_INFO_STREAM("Start");
  //Subscriber
  ros::Subscriber sub_force_z = nh.subscribe("/weiss_wrench", 1000, force_z_Callback);

  ros::spin();

  return 0;
}
