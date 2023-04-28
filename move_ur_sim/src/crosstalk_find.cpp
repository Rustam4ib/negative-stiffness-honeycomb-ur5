#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/TwistStamped.h>
#include <sensor_msgs/JointState.h>
#include <trajectory_msgs/JointTrajectory.h>
#define PI 3.1415926

// for transformations
#include <tf/tf.h>
#include <tf/transform_listener.h>
//frame broadcaster
#include <tf/transform_broadcaster.h>

#include <Eigen/Core>
#include <moveit/robot_model_loader/robot_model_loader.h>
#include <moveit/robot_model/robot_model.h>
#include <moveit/robot_state/robot_state.h>
#include <geometry_msgs/TwistStamped.h>

#include "tactile_servo_msgs/ContsFeats.h"
#include "tactile_servo_msgs/OneContFeats.h"
#include <std_msgs/Float64.h>

  
double Z_INIT;
double Z_DOWN;
double Z_NOW;
double X_NOW;
double Y_NOW;
int STATE_NUMBER;



/*0 init X_INIT Y_INIT Z_INIT
// 1 moving down first
// 12 touched record tactile image and pcl
// 13 pushing until AreaBig || ForceHigh || Empty
// 14 move up
// 15 move to X_2 
// 2 moving down first
// 22 touched record tactile image and pcl
// 23 pushing until AreaBig || ForceHigh || Empty
// 24 move up
// 25 move to X_3 
// 3 moving down first
// 32 touched record tactile image and pcl
// 33 pushing until AreaBig || ForceHigh || Empty
// 34 move up
// 35 move to X_4 
// 4 moving down first
// 42 touched record tactile image and pcl
// 43 pushing until AreaBig || ForceHigh || Empty
// 44 move up
// 45 move to X_5


*/
double X_INIT;
double X_2;
double X_3;
double X_4;

double Y_INIT;
double Y_2;
double Y_3;
double Y_4;

double X_5;
double X_6;
double X_7;

double Y_5;
double Y_6;
double Y_7;



typedef Eigen::Matrix<double, 6, 1>  VECTOR6_1;


std::string JOINT_NAMES[6]={"shoulder_pan_joint","shoulder_lift_joint", 
			    "elbow_joint",  	 "wrist_1_joint", 
			    "wrist_2_joint",	 "wrist_3_joint"};

//Q1 = [0,-1.57,0,-1.57,0,0];

class PoseShow
{
public:
  PoseShow();
  ~PoseShow();
  bool not_first_time;
  void pose_init_create(); 
  tf::TransformListener listener;
  tf::StampedTransform stransform; 
  bool is_transform_tool0_;
  tf::Vector3 init_position;
  tf::Transform init_transform;
  void br_init_pose();
  tf::TransformBroadcaster br_init_frame_;

  void pose_des_create();
  tf::Transform des_transform;
  tf::TransformBroadcaster br_goal_frame_;  
  void br_des_pose();
  
  tf::TransformListener listener_pose_now;
  void pose_now();
  tf::StampedTransform  nowtransform;
  
  geometry_msgs::PoseStamped X_des_test_;
  geometry_msgs::PoseStamped X_now_test_;

  private:
  ros::NodeHandle nh;

};
PoseShow::PoseShow()
{
  is_transform_tool0_ = false;
  not_first_time = true;
}

PoseShow::~PoseShow(){}

void PoseShow::pose_init_create(){
	if (is_transform_tool0_== false)
	{
	listener.waitForTransform("tool0", ros::Time(0), "world",ros::Time(0), "world", ros::Duration(10));
	try
	{
// 	  ROS_INFO("in try");
		listener.lookupTransform("world", "tool0", ros::Time(0), stransform);
		is_transform_tool0_ = true;
	}
	catch (tf::TransformException &ex)
	{	 
// 	  ROS_INFO("in error 1");

		ROS_ERROR("%s", ex.what());
	}
  init_position = stransform.getOrigin();
//   ROS_INFO("%lf,%lf,%lf",init_position[0],init_position[1],init_position[2]);
  X_now_test_.header.frame_id = stransform.frame_id_.c_str();
  X_now_test_.pose.position.x = init_position[0];
  X_now_test_.pose.position.y = init_position[1];
  X_now_test_.pose.position.z = init_position[2];

  Z_INIT = init_position[2];
  X_INIT = init_position[0];
  Y_INIT = init_position[1];
  not_first_time = false;
//   ROS_INFO("in init ZXY 1stime%lf,%lf,%lf",Z_INIT,X_INIT,Y_INIT);
  }
  tf::Quaternion q_init_pose = stransform.getRotation();
  geometry_msgs::Quaternion quat;
  quat.w = q_init_pose.w();
  quat.w = q_init_pose.x();
  quat.w = q_init_pose.y();
  quat.w = q_init_pose.z();
  X_now_test_.pose.orientation = quat;
	
}
void PoseShow::pose_now(){

	listener_pose_now.waitForTransform("tool0", ros::Time(0), "world",ros::Time(0), "world", ros::Duration(10));
	try
	{
// 	  ROS_IFNO("in try");
		listener_pose_now.lookupTransform("world", "tool0", ros::Time(0), nowtransform);
	}
	catch (tf::TransformException &ex)
	{	 
		ROS_ERROR("%s", ex.what());
	}
	Z_NOW = nowtransform.getOrigin().getZ();
	X_NOW = nowtransform.getOrigin().getX();
	Y_NOW = nowtransform.getOrigin().getY();
// 	 ROS_INFO("in pose now func zinit %lf,znow =  %lf, xnow%lf, ynow%lf",Z_NOW,X_NOW,Y_NOW);

	
}
void PoseShow::br_init_pose()
{
  if (is_transform_tool0_ == true)
  {
  init_transform.setOrigin(init_position);
  init_transform.setRotation(stransform.getRotation());
  br_init_frame_.sendTransform(tf::StampedTransform(init_transform, ros::Time::now(), "world", "init_pose"));
//   br_frame_.sendTransform(tf::StampedTransform(transform_, ros::Time::now(), "world", "palm desired"));
  }
}



void PoseShow::pose_des_create()
{

  if (is_transform_tool0_ == true)
  {
    X_des_test_ = X_now_test_;
    X_des_test_.header.frame_id = "desired" ;
    X_des_test_.pose.position.z = Z_DOWN;// X_des_test_.pose.position.z - 0.100;
    
  }
  else
  {
    ROS_FATAL_STREAM("viz des pose no");
  }
}


void PoseShow::br_des_pose()
{
  des_transform = init_transform;
  des_transform.setOrigin(tf::Vector3(X_des_test_.pose.position.x, X_des_test_.pose.position.y,
			 X_des_test_.pose.position.z));//0.5 is the motion scalar
//   tf::Quaternion orien;
//   geometry_msgs::Quaternion quat;
//   quat = X_des_test_.pose.orientation;
//   orien.setW(quat.w);
//   orien.setZ(quat.z);
//   orien.setY(quat.y);
//   orien.setX(quat.x);
//   des_transform.setRotation(orien);
  br_goal_frame_.sendTransform(tf::StampedTransform(des_transform, ros::Time::now(), "world", "goal"));
//   ROS_INFO("in broadcast des  1stime%lf,%lf,%lf",Z_INIT,X_INIT,Y_INIT);
	
}

//class with subscribers
class URutil

{
 
public:
  URutil();
  ~URutil();

  ros::NodeHandle n;
  
  /*for command send*/
  ros::Publisher pub_joint_speed_to_real_driver;
  trajectory_msgs::JointTrajectory trj_;
  trajectory_msgs::JointTrajectoryPoint trjp_;
  std::vector<double> joint_init_velocities_;
  bool boollet_;
  int couner_;
  bool recieved_joint_state_;
  // current joint joint_values
  ros::Subscriber sub_joint_states;
  void jointStateCallback(const sensor_msgs::JointState::ConstPtr& msg);
  std::vector<double> joint_values_;
  std::vector<double> joint_velocities_;

  //for ur init
  bool is_init_exper_;  
  bool is_at_home_;   
  
  //get pose from /palm/pose
//   geometry_msgs::PoseStamped get_pose();  
  //send pose to /move_arm_6D
//   void send_pose(geometry_msgs::PoseStamped msg_sendpose);
//   void callback_current_pose(const geometry_msgs::PoseStampedPtr& msg);
//   bool is_pose_rec_;  

    /** 
   * Subscribes to the palm pose published by 
   * tools/kinematics_tools/scripts/palm_pose_publisher.py
   */
//   geometry_msgs::PoseStamped palm_pose_now_;
//   geometry_msgs::PoseStamped palm_pose_send_;
//   ros::Subscriber sub_current_pose;
  ros::Publisher pub_velocities;
  void send_velocity(geometry_msgs::Twist in_vel);
  
  ros::Subscriber fb_feats_sub;
      void cb_fb_feats_sub(const tactile_servo_msgs::ContsFeatsConstPtr& msg_);
int state_number_;
int action_type_;

  bool is_in_contact_ur_;
  int  pixels_in_contact_ur_;
  float highest_force_cell_ur_;
  float real_total_force_ur_ ;
  bool is_new_msg_;
  geometry_msgs::Twist in_vel_;
  ros::Publisher pub_state;
  void send_state(float in_state);

  private: 
   
};

URutil::URutil()
{
  is_new_msg_ = false;
  
  pub_velocities = n.advertise<geometry_msgs::Twist>("/desired_Vx_Vy_Vz", 1000);
 
  pub_state = n.advertise<std_msgs::Float64>("/current_state", 100);
  
  fb_feats_sub = n.subscribe("/fb_feats", 1,  &URutil::cb_fb_feats_sub,this);

    
  is_init_exper_ = false;
  is_at_home_ = false;
  boollet_ = false;
  couner_ = 0;
  recieved_joint_state_ = false;
  trjp_.velocities.resize(6);
  trj_.points.push_back(trjp_);
  trj_.points.push_back(trjp_);
  	ROS_INFO("initializing joint names");
	trj_.joint_names.push_back("shoulder_pan_joint");
	trj_.joint_names.push_back("shoulder_lift_joint");
	trj_.joint_names.push_back("elbow_joint");
	trj_.joint_names.push_back("wrist_1_joint");
	trj_.joint_names.push_back("wrist_2_joint");
	trj_.joint_names.push_back("wrist_3_joint");
 
  //   contact_points_sub = n.subscribe("/contact_points_weiss_plot", 1,  &markersShow::cb_contact_points_sub,this);
  // contact_points_hist= n.advertise<visualization_msgs::MarkerArray>("mark_contacts_hist", 1 );
}
URutil::~URutil(){}
void URutil::cb_fb_feats_sub(const tactile_servo_msgs::ContsFeatsConstPtr& msg_){
    if (msg_->control_features.size() == 1){
        is_in_contact_ur_ = msg_->control_features[0].is_contact;
        pixels_in_contact_ur_ = msg_->control_features[0].num_pixels_contact;
        highest_force_cell_ur_ = msg_->control_features[0].highest_force_cell;
        real_total_force_ur_ = msg_->control_features[0].real_total_force;

	is_new_msg_ = true;
        /* coordinates of COP/COC in world =
        / sequence number of the  COP/COC pixel in x or y
        / *
        / physical size of a sensor in x or y
        / /
        / number of cells in x(y)*/
//        copx_fb = copx_fb*size_x / cells_x;
//        copy_fb = copy_fb*size_y / cells_y;
//        cocx_fb = cocx_fb*size_x / cells_x;
//        cocy_fb = cocy_fb*size_y / cells_y;
    }
}
void URutil::send_velocity(geometry_msgs::Twist in_vel)
{
  in_vel_.angular = in_vel.angular;
  in_vel_.linear = in_vel.linear;
  pub_velocities.publish(in_vel_);
}

 void URutil::send_state(float in_state)
  {
    std_msgs::Float64 in;
    in.data = in_state;
    pub_state.publish(in);
  }


int main(int argc, char** argv)
{
 int OVERAL;
 OVERAL = 0;
  
    geometry_msgs::Twist in_velocityzero;
  in_velocityzero.linear.x = 0;
    in_velocityzero.linear.y = 0;
  in_velocityzero.linear.z = 0.0;
  in_velocityzero.angular.x = 0;
  in_velocityzero.angular.y = 0;
  in_velocityzero.angular.z = 0;

  
  geometry_msgs::Twist in_velocityup;
  in_velocityup.linear.x = 0;
    in_velocityup.linear.y = 0;
  in_velocityup.linear.z = 0.03;
  in_velocityup.angular.x = 0;
  in_velocityup.angular.y = 0;
  in_velocityup.angular.z = 0;

  geometry_msgs::Twist in_velocitydown;
    in_velocitydown.linear.x = 0;
    in_velocitydown.linear.y = 0;
  in_velocitydown.linear.z = -0.015;
  in_velocitydown.angular.x = 0;
  in_velocitydown.angular.y = 0;
  in_velocitydown.angular.z = 0;
  
    geometry_msgs::Twist in_velocitydown_slow;
    in_velocitydown_slow.linear.x = 0;
    in_velocitydown_slow.linear.y = 0;
  in_velocitydown_slow.linear.z = -0.002;
  in_velocitydown_slow.angular.x = 0;
  in_velocitydown_slow.angular.y = 0;
  in_velocitydown_slow.angular.z = 0;
  
    geometry_msgs::Twist in_velocityXL;
  in_velocityXL.linear.x = -0.04;
    in_velocityXL.linear.y = 0;
  in_velocityXL.linear.z = 0.000;
  in_velocityXL.angular.x = 0;
  in_velocityXL.angular.y = 0;
  in_velocityXL.angular.z = 0;
      geometry_msgs::Twist in_velocityXR;
  in_velocityXR.linear.x = 0.03;
    in_velocityXR.linear.y = 0;
  in_velocityXR.linear.z = 0.00;
  in_velocityXR.angular.x = 0;
  in_velocityXR.angular.y = 0;
  in_velocityXR.angular.z = 0;
  
    geometry_msgs::Twist in_velocityYL;
  in_velocityYL.linear.x = 0;
    in_velocityYL.linear.y = -0.04;
  in_velocityYL.linear.z = 0.000;
  in_velocityYL.angular.x = 0;
  in_velocityYL.angular.y = 0;
  in_velocityYL.angular.z = 0;
      geometry_msgs::Twist in_velocityYR;
  in_velocityYR.linear.x = 0;
    in_velocityYR.linear.y = 0.04;
  in_velocityYR.linear.z = 0.000;
  in_velocityYR.angular.x = 0;
  in_velocityYR.angular.y = 0;
  in_velocityYR.angular.z = 0;
  
  float v_z;
  float v_x;
  float v_y;
  bool is_touch = false;
  float penetration;
  STATE_NUMBER = 0;
  ros::init(argc, argv, "init_before_any_exploration_node");
  ros::NodeHandle nh;
  ros::Rate loop_rate(125);
  ROS_INFO("pub_poses_exper");
  PoseShow PoseShow_test;
  URutil Experiment;  
//     URutil  move_joint_wrist_1_joint;
    // to init subscribers
    ros::spinOnce();
    PoseShow_test.pose_init_create();
    ros::spinOnce();
    PoseShow_test.br_init_pose();
    ros::spinOnce();
    Z_DOWN = Z_INIT - 0.127;
      ROS_INFO("Z_DOWN = Z_INIT - 0.14 %lf,%lf",Z_DOWN,Z_INIT);
//             ROS_INFO("in main 1st zdown %lf",Z_DOWN);



    
    
   
    PoseShow_test.pose_des_create();
//           ROS_INFO("in init ZXY 1stime%lf,%lf,%lf",Z_INIT,X_INIT,Y_INIT);

    ros::spinOnce();
    PoseShow_test.br_des_pose();
    ros::spinOnce();
    ROS_INFO("before twist init");
    Experiment.send_state(STATE_NUMBER); 
    ros::spinOnce();
    
    
     // move to new base
      
                           PoseShow_test.pose_now();
      Y_INIT = Y_INIT-0.120;
     while( (ros::ok())&&(Y_NOW>(Y_INIT)) ){ 
                  PoseShow_test.pose_now();

    Experiment.send_velocity(in_velocityYL);
//        ROS_INFO("%lf,%lf,%lf",X_INIT,X_2,X_NOW);
         ros::spinOnce();
     loop_rate.sleep();
   }
                     PoseShow_test.pose_now();
         ros::spinOnce();

   Y_INIT = Y_NOW;
    
       X_2 = X_INIT - 0.025;
    Y_2 = Y_INIT - 0.025;
//       ROS_INFO("in main xinit %lf,x2 =  %lf, xnow%lf",X_INIT,X_2,X_NOW);

    X_3 = X_INIT - 0.05; // next cell
    Y_3 = Y_INIT - 0.05; // next cell
  
     X_4 = X_INIT - 0.1; // next cell
     Y_4 = Y_INIT- 0.1; // next cell
//     
        X_5 = X_INIT + 0.025;
    Y_5 = Y_INIT + 0.025;
//       ROS_INFO("in main xinit %lf,x2 =  %lf, xnow%lf",X_INIT,X_2,X_NOW);

    X_6 = X_INIT + 0.05; // next cell
    Y_6 = Y_INIT+ 0.05; // next cell
   
    X_7 = X_INIT + 0.1; // next cell
     Y_7 = Y_INIT+ 0.1; // next cell
//    

   
   OVERAL = 0;
   ///////////////////init
    while( (ros::ok())&&(OVERAL<1) ){
      
      
       PoseShow_test.br_init_pose();
       PoseShow_test.br_des_pose();
      PoseShow_test.pose_now();
      
       Experiment.send_velocity(in_velocitydown);

       if ((Experiment.is_in_contact_ur_ == true))
	  { 
	    PoseShow_test.pose_now();
	    double pose_at_contact_z =  Z_NOW;
	    double z_finish =    pose_at_contact_z - 0.007;

	    
       
	    
	  }
       
       
      if ((STATE_NUMBER == 0)||(STATE_NUMBER == 1))
      {
	if (Z_NOW > Z_DOWN)
	{	  
	  ROS_INFO("compare z  now > down %lf,%lf",Z_NOW, Z_DOWN);

	  Experiment.send_state(STATE_NUMBER);
	  Experiment.send_velocity(in_velocitydown);
	  if ((Experiment.is_in_contact_ur_ == true)||(STATE_NUMBER == 1))
	  { 
	    
	    
	    
	    STATE_NUMBER = 1;
	    Experiment.send_state(STATE_NUMBER);
	    Experiment.send_velocity(in_velocitydown_slow);
	    
	    if ((Experiment.real_total_force_ur_ >= 800)||
	      (Experiment.highest_force_cell_ur_ >= 150))
	    {
	      STATE_NUMBER = 2;
	      Experiment.send_state(STATE_NUMBER);
	      Experiment.send_velocity(in_velocityup);
	      ros::spinOnce();

	    }
	  }
	  
	} 
	else
	{
	  STATE_NUMBER = 2;
	  Experiment.send_state(STATE_NUMBER);
	  Experiment.send_velocity(in_velocityup);
	}  
      }
      
      if (STATE_NUMBER == 2)
      {
	Experiment.send_velocity(in_velocityup);

	if (Z_NOW >= Z_INIT)
	{  
	  ROS_INFO("compare z  now > init %lf,%lf",Z_NOW, Z_INIT);
	  STATE_NUMBER = 3;
	  Experiment.send_state(STATE_NUMBER);
	  Experiment.send_velocity(in_velocityzero);	  
	}
	
	
      }
       if (STATE_NUMBER == 3){Experiment.send_velocity(in_velocityzero); OVERAL = OVERAL+1;STATE_NUMBER=0;}
//           ROS_INFO("in in state 3%lf,%lf,%lf",Z_INIT,X_INIT,Y_INIT);

    ros::spinOnce();
     loop_rate.sleep();
     
    }
    
      
	   
    return 0;
}   