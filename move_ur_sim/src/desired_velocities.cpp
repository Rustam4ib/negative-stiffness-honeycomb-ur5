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

typedef Eigen::Matrix<double, 6, 1>  VECTOR6_1;


std::string JOINT_NAMES[6]={"shoulder_pan_joint","shoulder_lift_joint", 
			    "elbow_joint",  	 "wrist_1_joint", 
			    "wrist_2_joint",	 "wrist_3_joint"};
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
	
	void veloc_cb(const geometry_msgs::Twist::ConstPtr& msg);
	ros::Subscriber vel_sub;
};
URtwist::URtwist(): robot_model_loader("robot_description") {
//       ROS_INFO(" twist init");

//   joint_ctrl_velocities(6, 1);
//   tcp_velocities(6, 1);
//   desired_velocities(6, 1);
//         ROS_INFO(" twist init_eigen");

//   joint_velocities_(6,1);
  vel_sub = nh.subscribe("/desired_Vx_Vy_Vz", 100, &URtwist::veloc_cb, this);

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
void URtwist::veloc_cb(const geometry_msgs::Twist::ConstPtr& msg)
{

	    

    desired_velocities(0, 0) = msg->linear.x;
    desired_velocities(1, 0) = msg->linear.y;
    desired_velocities(2, 0) = msg->linear.z;
    desired_velocities(3, 0) = msg->angular.x;
    desired_velocities(4, 0) = msg->angular.y;
    desired_velocities(5, 0) = msg->angular.z;
    is_desired_twist_new_ = true;
//    	    ROS_INFO("%d joint_name: %s", i, msg->name[i].c_str());
// 	    ROS_INFO("actual velocities: %lf", msg->velocity[i]);
// 	    ROS_INFO("actual positions: %lf", msg->position[i]);
}

void URtwist::solveik()
{		
  if ((is_desired_twist_new_ == true)&&(is_recieved_new_joint_state_ == true)) {
              //set robot configuration
            kinematic_state->setJointGroupPositions(joint_model_group, joint_values_);
            //get jacobian of this configuration
            kinematic_state->getJacobian(joint_model_group, kinematic_state->getLinkModel(joint_model_group->getLinkModelNames().back()), reference_point_position, jacobian);
            // ROS_INFO_STREAM("Jacobian: \n" << jacobian);
            //ROS_INFO("Last link name: %s\n", ((kinematic_state->getLinkModel(joint_model_group->getLinkModelNames().back()))->getName()).c_str());
            
            
            // calculate tcp velocities for debug
            tcp_velocities = jacobian*joint_velocities_;
//             ROS_INFO_STREAM("TCP velocities: \n" << tcp_velocities.transpose());
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
// 	    ROS_INFO("V_Z: %lf",tcp_velocities(2, 0));
            joint_ctrl_velocities = jacobian.inverse() * desired_velocities;
            // fill the desired joint velocity to msg, which will be sent to ur_modern_driver module
            for(int i = 0; i < trj.points[0].velocities.size(); i++)
            {
// 	       ROS_INFO("Joint %d: %f", i, joint_ctrl_velocities(i, 0));
               trj.points[0].velocities[i] = joint_ctrl_velocities(i, 0);
            }
   
  joint_values_.clear();
  is_recieved_new_joint_state_ = false;
  is_desired_twist_new_ = false;
  }   
}

void URtwist::send_joint_vel()
{
              for(int i = 0; i < trj.points[0].velocities.size(); i++)
            {
               if ((trj.points[0].velocities[i] > 0.3)){
		trj.points[0].velocities[i] = 0.3; }
		if ((trj.points[0].velocities[i] < -0.3)){
		 trj.points[0].velocities[i] = -0.3; }
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
 
    ros::init(argc, argv, "velTOjoints");
    ros::NodeHandle nh;
    
    ros::Rate loop_rate(125);
    ROS_INFO("velTOjoints");
    
//     URutil  move_joint_wrist_1_joint;
    // to init subscribers
    ros::spinOnce();
    URtwist URtwist_test;

    while( ros::ok() ){
      
      URtwist_test.solveik();
      URtwist_test.send_joint_vel();
     ros::spinOnce();
     loop_rate.sleep();
    }
    return 0;
}   