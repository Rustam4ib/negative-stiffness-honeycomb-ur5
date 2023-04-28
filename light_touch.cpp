#include <ros/ros.h>
#include <tf/transform_broadcaster.h> //header for TransformBroadcaster object
#include <tf/transform_listener.h>
#include <std_msgs/Float64.h>
#include "ros/time.h"
#include <time.h>
#include "tactile_servo_msgs/ContsFeats.h"
#include "tactile_servo_msgs/OneContFeats.h"
#include <cmath>

#include <geometry_msgs/TwistStamped.h>
#include <geometry_msgs/TwistStamped.h>
#include "geometry_msgs/WrenchStamped.h"
#include <trajectory_msgs/JointTrajectory.h>
#include <sensor_msgs/JointState.h>
#include "ur5_nsh_experiment.h"
#include "my_msgs/my_message.h"
#include "my_msgs/sexy_message.h"
#include <rosbag/bag.h>
#include <rosbag/view.h>
#include <rosserial_arduino/hallsensor_teensy.h>
#include <wittenstein_msgs/wittenstein.h>
#include <visualization_msgs/Marker.h>

my_msgs::my_message global_msg;
my_msgs::sexy_message sexy_msg;
rosbag::Bag bag;
wittenstein_msgs::wittenstein wittenstein_msg;

//Initial variables
double Z_TEMP;
double Y_TEMP;
double X_TEMP;
double Z_INIT;
double Y_INIT;
double X_INIT;
double Z_NOW;
double Z_DOWN;
double Y_NOW;
double X_NOW;
double Z_TARGET; // Target position for Z-coordinate of end-effector
double Y_TARGET;
double X_TARGET;
double oldef_to_newef = 0.225; // from original end-effector to new end-effector (22.5cm)
double weiss_height = 0.07; // height of weiss sensor (7cm)
double honeycomb_buckling_height = 0.02; // height of buckling (2cm)

double F_des, hall_des, hall_real;
double F_real;
double pseudo_force;
double hall_z; // displacement of hall sensors along with z
double hall_average = 0.0;



PoseShow::PoseShow()
{
	is_transform_tool0_ = false;
  	not_first_time = true;
}

PoseShow::~PoseShow(){}


URutil::URutil()
{
  	is_new_msg_ = false;

  	pub_velocities = n.advertise<geometry_msgs::Twist>("/desired_Vx_Vy_Vz", 1000);

  	pub_point = n.advertise<geometry_msgs::PointStamped>("/topic_point", 100);

  	pub_mode = n.advertise<std_msgs::Float64>("/topic_mode", 100);

  	pub_state = n.advertise<std_msgs::Float64>("/topic_state", 100);

  	pub_angleZ = n.advertise<std_msgs::Float64>("/topic_angleZ", 100);


  	fb_feats_sub = n.subscribe("/fb_feats", 1,  &URutil::cb_fb_feats_sub,this);

  	is_init_exper_ = false;
  	is_at_home_ = false;
  	boollet_ = false;
  	couner_ = 0;
  	recieved_joint_state_ = false;
  	trjp_.velocities.resize(6);
  	trj_.points.push_back(trjp_);
  	trj_.points.push_back(trjp_);

//   	ROS_INFO("initializing joint names");
	trj_.joint_names.push_back("shoulder_pan_joint");
	trj_.joint_names.push_back("shoulder_lift_joint");
	trj_.joint_names.push_back("elbow_joint");
	trj_.joint_names.push_back("wrist_1_joint");
	trj_.joint_names.push_back("wrist_2_joint");
	trj_.joint_names.push_back("wrist_3_joint");

}
URutil::~URutil(){}

void URutil::cb_fb_feats_sub(const tactile_servo_msgs::ContsFeatsConstPtr& msg_){
    if (msg_->control_features.size() == 1){
    	is_in_contact_ur_ = msg_->control_features[0].is_contact;
        pixels_in_contact_ur_ = msg_->control_features[0].num_pixels_contact;
        highest_force_cell_ur_ = msg_->control_features[0].highest_force_cell;
        real_total_force_ur_ = msg_->control_features[0].real_total_force;

	is_new_msg_ = true;
    }
}

void URutil::send_velocity(geometry_msgs::Twist in_vel)
{
  	in_vel_.angular = in_vel.angular;
  	in_vel_.linear = in_vel.linear;
  	pub_velocities.publish(in_vel_);

}


void PoseShow::pose_init_create(){
	if (is_transform_tool0_== false)
	{
		listener.waitForTransform("tool0", ros::Time(0), "robot_base",ros::Time(0), "robot_base", ros::Duration(10));
		try
		{
			listener.lookupTransform("robot_base", "tool0", ros::Time(0), stransform);
			is_transform_tool0_ = true;
		}
		catch (tf::TransformException &ex)
		{
			ROS_ERROR("%s", ex.what());
		}

		init_position = stransform.getOrigin();
	  	X_now_test_.header.frame_id = stransform.frame_id_.c_str();
	  	X_now_test_.pose.position.x = init_position[0];
	  	X_now_test_.pose.position.y = init_position[1];
	  	X_now_test_.pose.position.z = init_position[2];

	  	Z_INIT = init_position[2];
	  	X_INIT = init_position[0];
	  	Y_INIT = init_position[1];

	  	Z_TEMP = init_position[2];
	  	X_TEMP = init_position[0];
	  	Y_TEMP = init_position[1];
	  	not_first_time = false;
  	}
  	tf::Quaternion q_init_pose = stransform.getRotation();
  	geometry_msgs::Quaternion quat;
  	quat.w = q_init_pose.w();
  	quat.w = q_init_pose.x();
  	quat.w = q_init_pose.y();
  	quat.w = q_init_pose.z();
  	X_now_test_.pose.orientation = quat;
}


void PoseShow::pose_now()
{
  /*
  The listener's buffer is literally empty immediately after creating tf listener,
  therefore it is good practice to wait some time after the listener has been created,
  so that the buffer can fill up
  */
	listener_pose_now.waitForTransform("tool0", ros::Time(0), "robot_base",ros::Time(0), "robot_base", ros::Duration(10));
	try
	{
    //we request (query) the listener for a specific transformation
		listener_pose_now.lookupTransform("robot_base", "tool0", ros::Time(0), nowtransform);
	}
	catch (tf::TransformException &ex)
	{
		ROS_ERROR("%s", ex.what());
	}
	Z_NOW = nowtransform.getOrigin().getZ() - oldef_to_newef; // get Z position of tool0 relative to base frame
	X_NOW = nowtransform.getOrigin().getX(); // get X postion of tool0 realtive to world (base frame)
	Y_NOW = nowtransform.getOrigin().getY(); // get Y postion of tool0 realtive to world (base frame)
  	global_msg.z = Z_NOW;
}


void force_z_Callback(const wittenstein_msgs::wittenstein wittenstein_msg) // callback message for weiss sensor
{
  	sexy_msg.fz = wittenstein_msg.fz;
  	//ROS_INFO_STREAM(global_msg);
}

void hallsensor_callback(const rosserial_arduino::hallsensor_teensy::ConstPtr& msg){
    global_msg.top  = msg->top;
    //ROS_INFO_STREAM(global_msg);
}

// we don't use this here
double square_wave(double amp, int samples, int f)
{
	return amp - amp*((samples/f)%2);
}

// MAIN PROGRAM STARTS:
int main(int argc, char** argv)

{
	ROS_INFO("pub_poses_exper");
	ros::Time::init();
	
	bag.open("/home/rustam/catkin_ws/src/calibrate_rgb_sensor_rustam/src/new setup/light touch/continuous/10trials/state2/trial_test_github.bag", rosbag::bagmode::Write);
	geometry_msgs::Twist velocity;
	geometry_msgs::Twist in_velocityzero;
	in_velocityzero.linear.x = 0;
	in_velocityzero.linear.y = 0;
	in_velocityzero.linear.z = 0.0;
	in_velocityzero.angular.x = 0;
	in_velocityzero.angular.y = 0;
	in_velocityzero.angular.z = 0;

	geometry_msgs::Twist in_velocitydown_fast;
	in_velocitydown_fast.linear.x = 0;
	in_velocitydown_fast.linear.y = 0;
	in_velocitydown_fast.linear.z = -0.02;
	in_velocitydown_fast.angular.x = 0;
	in_velocitydown_fast.angular.y = 0;
	in_velocitydown_fast.angular.z = 0;
	geometry_msgs::Twist in_velocitydown_slow;
	in_velocitydown_slow.linear.x = 0;
	in_velocitydown_slow.linear.y = 0;
	in_velocitydown_slow.linear.z = -0.007;
	in_velocitydown_slow.angular.x = 0;
	in_velocitydown_slow.angular.y = 0;
	in_velocitydown_slow.angular.z = 0;
	geometry_msgs::Twist in_velocityup_fast;
	in_velocityup_fast.linear.x = 0;
	in_velocityup_fast.linear.y = 0;
	in_velocityup_fast.linear.z = 0.02;
	in_velocityup_fast.angular.x = 0;
	in_velocityup_fast.angular.y = 0;
	in_velocityup_fast.angular.z = 0;
	geometry_msgs::Twist in_velocityright_slow;
	in_velocityright_slow.linear.x = 0.007;
	in_velocityright_slow.linear.y = 0;
	in_velocityright_slow.linear.z = 0;
	in_velocityright_slow.angular.x = 0;
	in_velocityright_slow.angular.y = 0;
	in_velocityright_slow.angular.z = 0;
	geometry_msgs::Twist in_velocityleft_slow;
	in_velocityleft_slow.linear.x = -0.007;
	in_velocityleft_slow.linear.y = 0;
	in_velocityleft_slow.linear.z = 0;
	in_velocityleft_slow.angular.x = 0;
	in_velocityleft_slow.angular.y = 0;
	in_velocityleft_slow.angular.z = 0;


	ros::init(argc, argv, "init_before_any_exploration_node");
  	ros::NodeHandle nh; //NodeHandle is the main access point to communications with the ROS system
  	ros::Subscriber sub_force_z = nh.subscribe("/wittenstein_topic", 1000, force_z_Callback);
  	ros::Subscriber sub_hallsensor = nh.subscribe("hallsensor_teensy", 1000, &hallsensor_callback);
	//ros::Publisher pub_des_force = nh.advertise<geometry_msgs::Point>("/force_des", 1000);
	//ros::Publisher pub_pseudo_force = nh.advertise<geometry_msgs::Point>("/force_pseudo", 1000);
  	//ros::Publisher pub_des_hall = nh.advertise<geometry_msgs::Point>("/hall_des", 1000);
  	ros::Publisher pub_real_hall = nh.advertise<geometry_msgs::Point>("/hall_real", 1000);
	//ros::Publisher marker_pub = nh.advertise<visualization_msgs::Marker>( "visualization_marker", 0 );

	//uint32_t shape = visualization_msgs::Marker::SPHERE;

	
	ros::Rate loop_rate(500); // previously 125,140
	ROS_INFO("pub_poses_exper");

	PoseShow PoseShow_test;
	URutil Experiment;
	Z_TARGET = weiss_height - honeycomb_buckling_height; // Target position for Z-coordinate of end-effector
	X_TARGET = 0.38; 
	ros::spinOnce();
	PoseShow_test.pose_now(); // getting X,Y,Z coordinates of end-effector relative to base frame

  	// stop for some time and send the values
  	ros::Time start_time = ros::Time::now();
  	ros::Duration timeout(0.2);
  	ROS_INFO("STOP and SEND the values");
  	while((ros::ok()) && (ros::Time::now() - start_time < timeout)) {
		ROS_INFO("Z_NOW before experiment: %f", Z_NOW); //send the values of Z-coordinate of end-effector relative to base frame
		ROS_INFO("X_NOW before experiment: %f", X_NOW); //send the values of X-coordinate of end-effector relative to base frame
		ROS_INFO("Y_NOW before experiment: %f\n", Y_NOW); //send the values of Z-coordinate of end-effector relative to base frame
		hall_average += global_msg.top;
		ros::spinOnce();
		loop_rate.sleep();
 	}
	hall_average = hall_average/100;
	ROS_INFO("hall_average: %f\n", hall_average);

	while(ros::ok() && X_NOW < X_TARGET)
	{	
		/*
		visualization_msgs::Marker marker;
       	marker.header.frame_id = "/ee_link";
       	marker.header.stamp = ros::Time::now();
       	marker.ns = "basic_shapes";
  	    marker.id = 0;
		marker.type = shape;
		marker.action = visualization_msgs::Marker::ADD;
		marker.pose.position.x = 0;
     	marker.pose.position.y = 0;
     	marker.pose.position.z = 0;
     	marker.pose.orientation.x = 0.0;
     	marker.pose.orientation.y = 0.0;
    	marker.pose.orientation.z = 0.0;
	    marker.pose.orientation.w = 1.0;
		marker.scale.x = 0.02;
     	marker.scale.y = 0.02;
     	marker.scale.z = 0.02;
     	marker.color.r = 0.0f;
     	marker.color.g = 1.0f;
     	marker.color.b = 0.0f;
 	    marker.color.a = 1.0;
		marker.lifetime = ros::Duration();
		*/
 		geometry_msgs::Point point3;
		//geometry_msgs::Point point2;
		PoseShow_test.pose_now();
		ROS_INFO("X_NOW:%f Y_NOW:%f Z_NOW:%f", X_NOW, Y_NOW, Z_NOW); 
		

		hall_z = -(global_msg.top - hall_average);	//12.1542 10.6542

		//point2.z = -pseudo_force;
		point3.z = hall_z;
		pub_real_hall.publish(point3);

		

		//pub_pseudo_force.publish(point2);

		//sexy_msg.pseudo_fz = pseudo_force;
		sexy_msg.top = hall_z;
		//sexy_msg.fz = -global_msg.fz;

		sexy_msg.x = X_NOW;
		sexy_msg.y = Y_NOW;
		sexy_msg.z = Z_NOW;
		ROS_INFO("top:%f fz:%f", sexy_msg.top, sexy_msg.fz); 

		bag.write("trial_test_github", ros::Time::now(), sexy_msg);

		velocity.linear.x = 0.005;
		velocity.linear.y = -0.003;
		//velocity.linear.z = -0.001;
		//if (hall_z >= 3 && sexy_msg.top <= 4){
		if (hall_z >= 3.0){
			ROS_INFO("TOUCH DETECTED");
			//marker_pub.publish(marker);
			break;
		}	
		Experiment.send_velocity(velocity);
		ros::spinOnce();
		loop_rate.sleep();
	}

	Experiment.send_velocity(in_velocityzero);
	ros::Time start_time1 = ros::Time::now();
  	ros::Duration timeout1(1.0);

	while(ros::ok() && ros::Time::now() - start_time1 < timeout1) 	
	{
		PoseShow_test.pose_now();
		sexy_msg.top = -(global_msg.top-6.80);
		ROS_INFO("still writing... top:%f fz:%f", sexy_msg.top, sexy_msg.fz);
		bag.write("trial_test_github", ros::Time::now(), sexy_msg);
		ros::spinOnce();
		loop_rate.sleep();
	}

	bag.close();
	ROS_INFO("Experiment ENDED !!! FINAL X_NOW = %f", X_NOW);	
	ROS_INFO("Experiment ENDED !!! FINAL Y_NOW = %f", Y_NOW);
	ROS_INFO("Experiment ENDED !!! FINAL Z_NOW = %f", Z_NOW);	
	return 0;
	// add some comment
}
