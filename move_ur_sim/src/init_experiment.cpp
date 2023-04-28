#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/TwistStamped.h>
#include <sensor_msgs/JointState.h>

#include <trajectory_msgs/JointTrajectory.h>


#define PI 3.1415926

std::string JOINT_NAMES[6]={"shoulder_pan_joint","shoulder_lift_joint", 
			    "elbow_joint",  	 "wrist_1_joint", 
			    "wrist_2_joint",	 "wrist_3_joint"};

//Q1 = [0,-1.57,0,-1.57,0,0];
			    
			    
			    
			    
			    
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
//     if (i == 1){
// 	   joint_init_velocities_[i]=-1.57; 
//     }
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



int main(int argc, char** argv)
{
    ros::init(argc, argv, "init_experiment_node");
    ros::NodeHandle nh;
    
    ros::Rate loop_rate(125);
    ROS_INFO("init_exper");
    
    URutil  move_joint_wrist_1_joint;
    // to init subscribers
    ros::spinOnce();

     while( ros::ok() ){
     move_joint_wrist_1_joint.send_speeds(); 
     ros::spinOnce();
     loop_rate.sleep();
       
    }
    return 0;
}   