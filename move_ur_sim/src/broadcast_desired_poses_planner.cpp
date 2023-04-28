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

typedef Eigen::Matrix<double, 6, 1>  VECTOR6_1;


std::string JOINT_NAMES[6]={"shoulder_pan_joint","shoulder_lift_joint", 
			    "elbow_joint",  	 "wrist_1_joint", 
			    "wrist_2_joint",	 "wrist_3_joint"};

//Q1 = [0,-1.57,0,-1.57,0,0];

/*class markersShow
{
public:
    markersShow (int tactile_sensor_num_);
    ~markersShow();
    ros::NodeHandle n_markers;
    geometry_msgs::PoseStamped transform_pose(
			  geometry_msgs::PoseStamped& pose_in_); 
    geometry_msgs::PoseStamped fillup_pose(float x_, float y_,
					float z_, 
					float qx_,
					float qy_,
					float qz_,float qw_);   
       tf::TransformListener tf_listener;
};

geometry_msgs::PoseStamped markersShow::transform_pose(geometry_msgs::PoseStamped& pose_in_){
    geometry_msgs::PoseStamped pose_out;
    tf_listener.waitForTransform("world", ros::Time(0), "tool0",ros::Time(0), "world", ros::Duration(10));


    try{
        tf_listener.transformPose("world", pose_in_, pose_out);
//        ROS_INFO("at world: (%.4f, %.4f. %.4f) -----> at shadowarm_base: (%.4f, %.4f, %.4f) at time %.4f",
//                 pose_in_.pose.position.x, pose_in_.pose.position.y, pose_in_.pose.position.z,
//                 pose_out.pose.position.x, pose_out.pose.position.y, pose_out.pose.position.z, pose_out.header.stamp.toSec());
        return pose_out;
    }
    catch(tf::TransformException& ex){
        ROS_ERROR("Received an exception trying to transform a point from \"/world\" to \"/weiss\": %s", ex.what());
        return pose_in_;
    }
}
*/
class PoseShow
{
public:
  PoseShow();
  ~PoseShow();
  
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
}

PoseShow::~PoseShow(){}

void PoseShow::pose_init_create(){
	if (is_transform_tool0_== false)
	{
	listener.waitForTransform("tool0", ros::Time(0), "world",ros::Time(0), "world", ros::Duration(10));
	try
	{
	  ROS_INFO("in try");
		listener.lookupTransform("world", "tool0", ros::Time(0), stransform);
		is_transform_tool0_ = true;
	}
	catch (tf::TransformException &ex)
	{	  ROS_INFO("in error 1");

		ROS_ERROR("%s", ex.what());
	}
  init_position = stransform.getOrigin();
  ROS_INFO("%lf,%lf,%lf",init_position[0],init_position[1],init_position[2]);
  X_now_test_.header.frame_id = stransform.frame_id_.c_str();
  X_now_test_.pose.position.x = init_position[0];
  X_now_test_.pose.position.y = init_position[1];
  X_now_test_.pose.position.z = init_position[2];
  Z_INIT = init_position[2];
  X_INIT = init_position[0];
  Y_INIT = init_position[1];
  
  tf::Quaternion q_init_pose = stransform.getRotation();
  geometry_msgs::Quaternion quat;
  quat.w = q_init_pose.w();
  quat.w = q_init_pose.x();
  quat.w = q_init_pose.y();
  quat.w = q_init_pose.z();
  X_now_test_.pose.orientation = quat;
	}  
}
void PoseShow::pose_now(){

	listener_pose_now.waitForTransform("tool0", ros::Time(0), "world",ros::Time(0), "world", ros::Duration(10));
	try
	{
	  ROS_INFO("in try");
		listener_pose_now.lookupTransform("world", "tool0", ros::Time(0), nowtransform);
	}
	catch (tf::TransformException &ex)
	{	 
		ROS_ERROR("%s", ex.what());
	}
	Z_NOW = nowtransform.getOrigin().getZ();
	X_NOW = nowtransform.getOrigin().getX();
	Y_NOW = nowtransform.getOrigin().getY();
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
  void send_speeds();
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
  
  private: 
   
};

URutil::URutil()
{
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
  


  pub_joint_speed_to_real_driver = n.advertise<trajectory_msgs::JointTrajectory>("/ur_driver/joint_speed", 1000);
    
  sub_joint_states = n.subscribe("/joint_states", 1000, &URutil::jointStateCallback, this);
   	ROS_INFO("subscribed");

  //   contact_points_sub = n.subscribe("/contact_points_weiss_plot", 1,  &markersShow::cb_contact_points_sub,this);
  // contact_points_hist= n.advertise<visualization_msgs::MarkerArray>("mark_contacts_hist", 1 );
}
URutil::~URutil(){}

void URutil::jointStateCallback(const sensor_msgs::JointState::ConstPtr& msg)
{
     ROS_INFO("in callback");

     ROS_INFO("in callback 2");

    if(msg->velocity.size() == 6)
    {
           ROS_INFO("in for loop");

        for(int i = 0; i < msg->velocity.size(); i++)
        {
            joint_velocities_.push_back(msg->velocity[i]);
//    	    ROS_INFO("%d joint_name: %s", i, msg->name[i].c_str());
// 	    ROS_INFO("actual velocities: %lf", msg->velocity[i]);
            joint_values_.push_back(msg->position[i]);
// 	    ROS_INFO("actual positions: %lf", msg->position[i]);	    
        }
    }
    recieved_joint_state_ = true;
}

void URutil::send_speeds()
{
  
  if (recieved_joint_state_ == true)
  {
    for(int i=0; i< 6; i++)
  {
    joint_init_velocities_.push_back(0);
    if (i == 3){
      
      if (joint_values_.at(i) > -1.57)
      {
	   joint_init_velocities_[i]=-0.157;
      }
      else if (joint_values_.at(i) < -1.57)
      {
	 joint_init_velocities_[i]=0.157;
      }      
      if ((joint_values_.at(i) < -1.565)&&(joint_values_.at(i) > -1.575 ))
      {
	joint_init_velocities_[i]=0;
      }
    }
 }
    
  if (boollet_ == false){
    ROS_INFO("in boollet false");
    // fill the desired joint velocity to msg, which will be sent to ur_modern_driver module
    for(int i = 0; i < trj_.points[0].velocities.size(); i++)
      {
	trj_.points[0].velocities[i] = joint_init_velocities_.at(i);
	ROS_INFO("%d pub_speeds: %lf", i, trj_.points[0].velocities[i]); 

      }
    couner_ = couner_ + 1;
    ROS_INFO("%d counter_", couner_); 
    if (couner_ >= 1000){
//      boollet_ = true; 
    }
    
  }
  if (boollet_ == true){
//       ROS_INFO("in boollet true");
      for(int i = 0; i < trj_.points[0].velocities.size(); i++)
      {
	joint_init_velocities_[i] = 0;
	trj_.points[0].velocities[i] = joint_init_velocities_.at(i);
// 	ROS_INFO("%d pub_speeds: %lf", i, trj_.points[0].velocities[i]); 
      }
  }
  trj_.header.stamp = ros::Time::now();
  trj_.points[0].time_from_start=ros::Duration(5);	// set 1st time_from_start to 0
//   trj_.points[0].time_from_start=ros::Duration(5);	// 2nd time to desired time from start.  
  pub_joint_speed_to_real_driver.publish(trj_);
   
  joint_init_velocities_.clear();
  joint_velocities_.clear();
  joint_values_.clear();
  recieved_joint_state_ = false;
  }
}

class URtwist
{
  public:
  URtwist();
  ~URtwist();
  void send_joint_vel();
  void solveik();
  ros::NodeHandle nh;

  std::vector<double> joint_values_;

  ros::Publisher pub_joint_speed, pub_tcp_speed;
  
   robot_model_loader::RobotModelLoader robot_model_loader;
  robot_model::RobotModelPtr kinematic_model;
  robot_state::RobotStatePtr kinematic_state;  
const robot_state::JointModelGroup* joint_model_group;
  std::vector<std::string> joint_names ;
    Eigen::MatrixXd jacobian; // for jacobian acquiring  
//     Eigen::MatrixXd joint_ctrl_velocities;//(6, 1);
//     Eigen::MatrixXd tcp_velocities;//(6, 1);
//     Eigen::MatrixXd desired_velocities;//(6, 1);
    VECTOR6_1 joint_ctrl_velocities;
    VECTOR6_1 tcp_velocities;
    VECTOR6_1 desired_velocities;
    // current velocities of tcp calculated by current joint speeds.
    geometry_msgs::TwistStamped tcp_msg;
    //msg to ur_modern_driver
    trajectory_msgs::JointTrajectory trj;
    trajectory_msgs::JointTrajectoryPoint trjp;  
    bool is_desired_twist_new_;
      ros::Subscriber sub_joint_states;
  void jointStateCallback(const sensor_msgs::JointState::ConstPtr& msg);
  bool is_recieved_new_joint_state_;
  void desired_twist(float x, float y, float z, float wx, float wy, float wz);
  	/*for velocities calculation*/
	Eigen::Vector3d reference_point_position;
	VECTOR6_1 joint_velocities_;
	//Eigen::MatrixXd joint_velocities_;//(6, 1);
};
URtwist::URtwist(): robot_model_loader("robot_description") {
//       ROS_INFO(" twist init");

//   joint_ctrl_velocities(6, 1);
//   tcp_velocities(6, 1);
//   desired_velocities(6, 1);
//         ROS_INFO(" twist init_eigen");

//   joint_velocities_(6,1);
  joint_values_.resize(6, 0);
  pub_joint_speed = nh.advertise<trajectory_msgs::JointTrajectory>("/ur_driver/joint_speed", 1000);
  pub_tcp_speed = nh.advertise<geometry_msgs::TwistStamped>("/tcp_velocities", 1000);
  //get kinemetic model
  
  kinematic_model = robot_model_loader.getModel();
  ROS_INFO("Model frame(base_frame): %s", kinematic_model->getModelFrame().c_str());
    //create a robot_state object, we can set it to any configuration and then calculate the jacobian matrix coreesponding to this configuration
    robot_state::RobotStatePtr kinematic_state2(new robot_state::RobotState(kinematic_model));
    kinematic_state =kinematic_state2;
    kinematic_state->setToDefaultValues();
    joint_model_group = kinematic_model->getJointModelGroup("manipulator");
    joint_names = joint_model_group->getJointModelNames();
    for(int i = 0; i < joint_names.size(); i++)
    {
        ROS_INFO("%d joint_name: %s", i, joint_names[i].c_str());
    }
    

    
    trjp.velocities.resize(6, 0);
    trj.points.push_back(trjp);
   //reference_point_position is respected to this link
    ROS_INFO("Last link name: %s\n", joint_model_group->getLinkModelNames().back().c_str()); 
    //broadcast transform from last link frame to reference frame 
    is_desired_twist_new_ = false;
    
      sub_joint_states = nh.subscribe("/joint_states", 1000, &URtwist::jointStateCallback, this);
//    	ROS_INFO("subscribed");
	
	is_recieved_new_joint_state_ = false;
	
	
    desired_velocities(0, 0) = 0;
    desired_velocities(1, 0) = 0;
    desired_velocities(2, 0) = 0;
    desired_velocities(3, 0) = 0;
    desired_velocities(4, 0) = 0;
    desired_velocities(5, 0) = 0;
    reference_point_position(0) = 0;
    reference_point_position(1) = 0;
    reference_point_position(2) = 0;
	
}
URtwist::~URtwist(){}

void URtwist::desired_twist(float x, float y, float z, float wx, float wy, float wz)
{
    desired_velocities(0, 0) = x;
    desired_velocities(1, 0) = y;
    desired_velocities(2, 0) = z;
    desired_velocities(3, 0) = wx;
    desired_velocities(4, 0) = wy;
    desired_velocities(5, 0) = wz;
    is_desired_twist_new_ = true;
}

void URtwist::solveik()
{		
  if ((is_desired_twist_new_ == true)&&(is_recieved_new_joint_state_ == true)) {
              //set robot configuration
            kinematic_state->setJointGroupPositions(joint_model_group, joint_values_);
            //get jacobian of this configuration
            kinematic_state->getJacobian(joint_model_group, kinematic_state->getLinkModel(joint_model_group->getLinkModelNames().back()), reference_point_position, jacobian);
//             ROS_INFO_STREAM("Jacobian: \n" << jacobian);
            //ROS_INFO("Last link name: %s\n", ((kinematic_state->getLinkModel(joint_model_group->getLinkModelNames().back()))->getName()).c_str());
            
            
            // calculate tcp velocities for debug
            tcp_velocities = jacobian*joint_velocities_;
            ROS_INFO_STREAM("TCP velocities: \n" << tcp_velocities.transpose());
            // msg for debug
            tcp_msg.header.stamp = ros::Time::now();
	    tcp_msg.header.frame_id = "tcp_vel";
            tcp_msg.twist.linear.x = tcp_velocities(0, 0);
            tcp_msg.twist.linear.y = tcp_velocities(1, 0);
            tcp_msg.twist.linear.z = tcp_velocities(2, 0);
            tcp_msg.twist.angular.x = tcp_velocities(3, 0);
            tcp_msg.twist.angular.y = tcp_velocities(4, 0);
            tcp_msg.twist.angular.z = tcp_velocities(5, 0);
            pub_tcp_speed.publish(tcp_msg);
            
            // calculate desired joint velocity according to desired tcp velocity
	    ROS_INFO("V_Z: %lf",tcp_velocities(2, 0));
            joint_ctrl_velocities = jacobian.inverse() * desired_velocities;
            // fill the desired joint velocity to msg, which will be sent to ur_modern_driver module
            for(int i = 0; i < trj.points[0].velocities.size(); i++)
            {
	       ROS_INFO("Joint %d: %f", i, joint_ctrl_velocities(i, 0));
               trj.points[0].velocities[i] = joint_ctrl_velocities(i, 0);
            }
   
     // Forward Kinematics
  // ^^^^^^^^^^^^^^^^^^
  // Now, we can compute forward kinematics for a set of random joint
  // values. Note that we would like to find the pose of the
  // "r_wrist_roll_link" which is the most distal link in the
  // "right_arm" of the robot.
//   std::vector <double> joint_angles_after_sec;
//               for(int i = 0; i < trj.points[0].velocities.size(); i++)
//             {
// 	       joint_angles_after_sec.push_back(trj.points[0].positions[i]);
//             }
//   kinematic_state->setJointPositions(joint_model_group, joint_angles_after_sec);//    setToRandomPositions(joint_model_group);
//   const Eigen::Affine3d &end_effector_state = kinematic_state->getGlobalLinkTransform("tool0");
//   /* Print end-effector pose. Remember that this is in the model frame */
//   ROS_INFO_STREAM("Translation: " << end_effector_state.translation());
//   ROS_INFO_STREAM("Rotation: " << end_effector_state.rotation());
//   joint_angles_after_sec.clear();
            
            
  joint_values_.clear();
  is_recieved_new_joint_state_ = false;
  is_desired_twist_new_ = false;
  }   
}

void URtwist::send_joint_vel()
{
              for(int i = 0; i < trj.points[0].velocities.size(); i++)
            {
               if ((trj.points[0].velocities[i] > 0.04)){
		trj.points[0].velocities[i] = joint_ctrl_velocities(i, 0); }
		if ((trj.points[0].velocities[i] < -0.04)){
		 trj.points[0].velocities[i] = -0.04; }
            }
            trj.header.stamp = ros::Time::now();
        pub_joint_speed.publish(trj);
}

void URtwist::jointStateCallback(const sensor_msgs::JointState::ConstPtr& msg)
{

    if(msg->velocity.size() == 6)
    {
        for(int i = 0; i < msg->velocity.size(); i++)
        {
//    	    ROS_INFO("%d joint_name: %s", i, msg->name[i].c_str());
// 	    ROS_INFO("actual velocities: %lf", msg->velocity[i]);
            joint_values_.push_back(msg->position[i]);
	    joint_velocities_(i, 0) = msg->velocity[i];
// 	    ROS_INFO("actual positions: %lf", msg->position[i]);	    
        }
    }
    is_recieved_new_joint_state_ = true;
}
int main(int argc, char** argv)
{
  bool is_touch = false;
  float penetration;
  STATE_NUMBER = 0;
  float v_z,v_x,v_y, w_z, w_x,w_y;
  v_z = v_x =v_y= w_z= w_x=w_y= 0;
  
    ros::init(argc, argv, "init_before_any_exploration_node");
    ros::NodeHandle nh;
    
    ros::Rate loop_rate(125);
    ROS_INFO("pub_poses_exper");
    PoseShow PoseShow_test;
    
//     URutil  move_joint_wrist_1_joint;
    // to init subscribers
    ros::spinOnce();
    PoseShow_test.pose_init_create();
    ros::spinOnce();
    PoseShow_test.br_init_pose();
    ros::spinOnce();
    Z_DOWN = Z_INIT - 0.145;
    X_2 = X_INIT - 0.068;
    Y_2 = Y_INIT - 0.068;
    X_2 = X_INIT + 0.0181; // next cell
    X_2 = X_INIT + 0.0181; // next cell
    
    Y_2 = Y_INIT + 0.0181; // next cell
    
    
//     Y_2 = Y_INIT + 0.0362;
//     Y_2 = Y_INIT + 0.0543;


    PoseShow_test.pose_des_create();
    ros::spinOnce();
    PoseShow_test.br_des_pose();
    ros::spinOnce();
    ROS_INFO("before twist init");
    
        URtwist URtwist_test;

    while( ros::ok() ){
      
      
      PoseShow_test.br_init_pose();
      PoseShow_test.br_des_pose();
      PoseShow_test.pose_now();
      
      if (X_NOW < X_2){
	v_x = 0.005;
      }
      if (X_NOW >= X_2){
	v_x = 0;
      }
            if (Y_NOW < Y_2){
	v_y = 0.005;
      }
      if (Y_NOW >= Y_2){
	v_y = 0;
      }
      
      if (Z_NOW > Z_DOWN){
	v_z = -0.009;
	if (is_touch == true){v_z = -0.001;}
      }
      if (Z_NOW <= Z_DOWN){
	v_z = 0;
	ROS_INFO("Close to touch");
	std::cin >> penetration;
	if (penetration>0.007){penetration = 0.007;}
	Z_DOWN = Z_DOWN - penetration;
	is_touch = true;
      }
      URtwist_test.desired_twist(v_x, v_y, v_z, w_x, w_y, w_z);
      URtwist_test.solveik();
      ROS_INFO("Z_NOW: %lf",Z_NOW);
      ROS_INFO("Z_INIT: %lf",Z_INIT);
            ROS_INFO("Z_DOWN: %lf",Z_DOWN);

      URtwist_test.send_joint_vel();
//      move_joint_wrist_1_joint.send_speeds(); 
     ros::spinOnce();
     loop_rate.sleep();
    }
    return 0;
}   