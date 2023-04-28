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
#include "my_msgs/pendulum_message.h"
#include "my_msgs/robot_message.h"
#include <rosbag/bag.h>
#include <rosbag/view.h>
#include <rosserial_arduino/hallsensor_teensy.h>
#include <rosserial_arduino/adxl_sunfounder.h>
#include <wittenstein_msgs/wittenstein.h>


#include "dynamixel_sdk_examples/GetPosition.h"
#include "dynamixel_sdk_examples/SetPosition.h"
#include "dynamixel_sdk/dynamixel_sdk.h"
#include "std_msgs/Int64.h"
#include "std_msgs/String.h"

my_msgs::pendulum_message pendulum_msg;
my_msgs::robot_message robot_msg;
dynamixel_sdk_examples::SetPosition dynamixel_msg;

rosbag::Bag bag;
wittenstein_msgs::wittenstein wittenstein_msg;

//Initial variables
double Z_NOW;
double Z_DOWN;
double Y_NOW;
double X_NOW;
double X_INIT;
double Y_INIT;
double Z_INIT;
double X_TEMP;
double Y_TEMP;
double Z_TEMP;
double Z_TARGET; // Target position for Z-coordinate of end-effector
double Y_TARGET;
double X_TARGET;
double oldef_to_newef = 0.225; // from original end-effector to new end-effector (22.5cm)
double weiss_height = 0.07; // height of weiss sensor (7cm)
double honeycomb_buckling_height = 0.02; // height of buckling (2cm)


double hall_z; // displacement of hall sensors along with z
double ax;
double az;

//Hall
double sf1[6] = {5.70137223481979, -37.4019928334174, 93.2814659294011, -116.716817724761,	89.1503545772516, -0.995913751777405};
double sf2[5] = {0.166817050619963, -2.81163628478376, 15.3559180928769, -36.4200743433501, 73.2128088616739};
double sf3[5] = {10.5491, -312.6197, 3477.72803, -17205.2966, 31935.0037};

//UR5
// double sf1[6] = {-0.259080894375342,	2.12438620096771,	-7.32056953063518,	13.4477339956085,	2.21406572884934,	-0.357992269991617};
// double sf2[5] = {0.184433715397822,	-1.64387103853648,	-5.62359308141891,	71.8264082278833,	-99.1687841333523};
// double sf3[5] = {0.0978964386216343,	-3.49765547280682,	49.9479052098543,	-320.420681878535,	767.003940055852};


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
  	robot_msg.x = X_NOW;
	robot_msg.y = Y_NOW;
	robot_msg.z = Z_NOW;
}

/*
void force_z_Callback(const wittenstein_msgs::wittenstein wittenstein_msg) // callback message for weiss sensor
{
  	global_msg.fz = wittenstein_msg.fz;
  	//ROS_INFO_STREAM(global_msg);
}
*/

void hallsensor_callback(const rosserial_arduino::hallsensor_teensy::ConstPtr& msg){
    pendulum_msg.top = msg->top;
    //ROS_INFO_STREAM(pendulum_msg);
}

void adxl_callback(const rosserial_arduino::adxl_sunfounder::ConstPtr& msg){
	pendulum_msg.ax = msg->ax;
	pendulum_msg.ay = msg->ay;
	pendulum_msg.az = msg->az;
	pendulum_msg.pitch = msg->pitch;
    //ROS_INFO_STREAM(pendulum_msg);
}

// MAIN PROGRAM STARTS:
int main(int argc, char** argv)

{
	ROS_INFO("pub_poses_exper");
	ros::Time::init();
	
	bag.open("/home/rustam/catkin_ws/src/calibrate_rgb_sensor_rustam/src/new setup/pendulum/sunfounder_angle/force_sensing/trial1.bag", rosbag::bagmode::Write);
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
  	//ros::Subscriber sub_force_z = nh.subscribe("/wittenstein_topic", 1000, force_z_Callback);
  	ros::Subscriber sub_hall = nh.subscribe("hallsensor_teensy", 1000, &hallsensor_callback);
	ros::Subscriber sub_adxl = nh.subscribe("adxl_sunfounder", 1000, &adxl_callback);
	//ros::Publisher pub_des_force = nh.advertise<geometry_msgs::Point>("/force_des", 1000);
	//ros::Publisher pub_pseudo_force = nh.advertise<geometry_msgs::Point>("/force_pseudo", 1000);
  	//ros::Publisher pub_des_hall = nh.advertise<geometry_msgs::Point>("/hall_des", 1000);
  	//ros::Publisher pub_real_hall = nh.advertise<geometry_msgs::Point>("/hall_real", 1000);
	ros::Publisher pub_des_dyn_pos = nh.advertise<dynamixel_sdk_examples::SetPosition>("/set_position", 1000);
  	
  	dynamixel_msg.id = 1;
  	dynamixel_msg.position = 3450; //3528 3450

	//F_des = 3.00;
	//Kp = 0.002;
	//Kd = 0.97; // 0.972
	//Ki = 0.0013;
	
	ros::Rate loop_rate(500); // previously 125,140
	ROS_INFO("pub_poses_exper");

	PoseShow PoseShow_test;
	URutil Experiment;
	X_TARGET = 0.40; 
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
 	}



	while(ros::ok()) // && X_NOW < X_TARGET
	//while(ros::ok())
	{	
		//geometry_msgs::Point point3;
		//geometry_msgs::Point point2;
		PoseShow_test.pose_now();
		//ROS_INFO("X_NOW:%f Y_NOW:%f Z_NOW:%f", X_NOW, Y_NOW, Z_NOW); 

		//hall_z = -(pendulum_msg.top - 7.65);	//12.1542 10.6542

/*
// Better: NOT USED
		if(hall_z <= 2.2){
			pseudo_force = sf1[0]*pow(hall_z,5) + sf1[1]*pow(hall_z,4) + sf1[2]*pow(hall_z,3) + sf1[3]*pow(hall_z,2) + sf1[4]*pow(hall_z,1) + sf1[5];
		}else if (hall_z > 2.2 && hall_z <= 6.58){
			pseudo_force = sf2[0]*pow(hall_z,4) + sf2[1]*pow(hall_z,3) + sf2[2]*pow(hall_z,2) + sf2[3]*pow(hall_z,1) + sf2[4];
		}else{
			pseudo_force = sf3[0]*pow(hall_z,4) + sf3[1]*pow(hall_z,3) + sf3[2]*pow(hall_z,2) + sf3[3]*pow(hall_z,1) + sf3[4];
		}

		point2.z = -pseudo_force;
*/
		//point3.z = hall_z;
		//pub_real_hall.publish(point3);
		//pub_pseudo_force.publish(point2);

		//sexy_msg.pseudo_fz = pseudo_force;
		//pendulum_msg.top = hall_z;
		//pendulum_msg.ax = hall_z;
		//pendulum_msg.az = hall_z;
		//sexy_msg.fz = -global_msg.fz;
		//pendulum_msg.top = hall_z;
		//pendulum_msg.ax = ax;
		//pendulum_msg.az = az;
		//hall_z = pendulum_msg.top;
		//ax = pendulum_msg.ax;
		pendulum_msg.x = robot_msg.x;
		pendulum_msg.y = robot_msg.y;
		pub_des_dyn_pos.publish(dynamixel_msg);
		ROS_INFO("top:%f ax:%f ay:%f az:%f pitch:%f X_NOW:%f Y_NOW:%f", pendulum_msg.top, pendulum_msg.ax, pendulum_msg.ay, pendulum_msg.az, pendulum_msg.pitch, pendulum_msg.x, pendulum_msg.y); 
		ROS_INFO("Publishing position:%d", dynamixel_msg.position); 
		bag.write("trial1", ros::Time::now(), pendulum_msg);

		velocity.linear.x = 0.050; //0.005 0.070
		velocity.linear.y = -0.6*0.050; //-0.003 -0.042
		//velocity.linear.z = -0.001;
		if (X_NOW >= 0.3510){ //0.3510 0.3490 0.345
			dynamixel_msg.position = 3980;
		}
		if (X_NOW >= 0.357){ // 0.365 0.360
		 	ROS_INFO("-----Target reached!-----");
		 	break;
		}

		Experiment.send_velocity(velocity);
		ros::spinOnce();
		loop_rate.sleep();
	}

	Experiment.send_velocity(in_velocityzero);
	bag.close();
	ROS_INFO("Experiment ENDED !!! FINAL X_NOW = %f", X_NOW);	
	ROS_INFO("Experiment ENDED !!! FINAL Y_NOW = %f", Y_NOW);
	ROS_INFO("Experiment ENDED !!! FINAL Z_NOW = %f", Z_NOW);	
	return 0;
	// add some comment
}
