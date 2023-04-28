#!/usr/bin/env python
import time
import roslib; roslib.load_manifest('ur_driver')
import rospy
import actionlib
from control_msgs.msg import *
from trajectory_msgs.msg import *

from sensor_msgs.msg import JointState


JOINT_NAMES = ['shoulder_pan_joint', 'shoulder_lift_joint', 'elbow_joint',
               'wrist_1_joint', 'wrist_2_joint', 'wrist_3_joint']



#Q1 = [-1.542321885120117, -1.9549960366078087, -1.135353662998166, -1.623457177981729, 1.5708161343218883, -3.113070668096523]
#Q1 = [-2.3852426470757644, -1.9549679200182837, -1.1353882478733461, -1.623448395660966, 1.5709414797978063, -3.1130769213222313]
#Q1 = [-2.2666142370196853, -1.9544695616182333, -1.13625428868508, -1.6230194682673593, 1.568358435914264, -3.114161625502689]
#Q1 = [-2.407941593561177, -1.954501903046511, -1.1367149367240952, -1.6226067315616, 1.5683669806666218, -3.1141130174864706]
#Q1 = [-2.2984610268009584, -1.954478989208492, -1.136733791904613, -1.6226229342336724, 1.5658726200473831, -3.1141292201585435]
#Q1 = [-1.6626045017083326, -1.8521480959782481, -1.8576722801674819, -2.5500200573687124, 0.3750023962457699, -1.5777901284898315]
#Q1 = [-1.875544671154107, -1.9716879271110352, -1.9344017626887957, -2.6413248948389656, 0.1590461960567327, -0.8133414567884829]
Q1 = [-1.805603060010772, -2.1381987804705576, -1.6717515077046117, -2.345683474027035, 0.22936358775518437, -1.0242319730466969]

client = None

def move1():
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES
    joint_states = rospy.wait_for_message("joint_states", JointState)
    joints_pos = joint_states.position
    g.trajectory.points = [
        JointTrajectoryPoint(positions=joints_pos, velocities=[0]*6, time_from_start=rospy.Duration(0.0)),
        JointTrajectoryPoint(positions=Q1, velocities=[0]*6, time_from_start=rospy.Duration(5.0))]
    client.send_goal(g)
    try:
        client.wait_for_result()
    except KeyboardInterrupt:
        client.cancel_goal()
        raise
   

def main():
    global client
    try:
        rospy.init_node("test_move", anonymous=True, disable_signals=True)
        client = actionlib.SimpleActionClient('follow_joint_trajectory', FollowJointTrajectoryAction)
        print "Waiting for server..."
        client.wait_for_server()
        print "Connected to server"
        move1()
    except KeyboardInterrupt:
        rospy.signal_shutdown("KeyboardInterrupt")
        raise

if __name__ == '__main__': main()
