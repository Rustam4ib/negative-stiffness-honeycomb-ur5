from sunau import AUDIO_FILE_ENCODING_ADPCM_G721
import matplotlib.pyplot as plt
from matplotlib.gridspec import GridSpec
from datetime import datetime
from random import sample
import pandas as pd
import time
import numpy as np


#file18 (Experiment for calibration)
#time = np.linspace(0, 10.9, 5442)

df1 = pd.read_csv("/home/rustam/catkin_ws/src/calibrate_rgb_sensor_rustam/src/new setup/pendulum/sunfounder/sensing/trial1_1.csv")
df2 = pd.read_csv("/home/rustam/catkin_ws/src/calibrate_rgb_sensor_rustam/src/new setup/pendulum/sunfounder/sensing/trial2_1.csv")
df3 = pd.read_csv("/home/rustam/catkin_ws/src/calibrate_rgb_sensor_rustam/src/new setup/pendulum/sunfounder/sensing/trial3_1.csv")
df4 = pd.read_csv("/home/rustam/catkin_ws/src/calibrate_rgb_sensor_rustam/src/new setup/pendulum/sunfounder/sensing/trial4_1.csv")
df5 = pd.read_csv("/home/rustam/catkin_ws/src/calibrate_rgb_sensor_rustam/src/new setup/pendulum/sunfounder/sensing/trial5_1.csv")
df6 = pd.read_csv("/home/rustam/catkin_ws/src/calibrate_rgb_sensor_rustam/src/new setup/pendulum/sunfounder/sensing/trial6_1.csv")
df7 = pd.read_csv("/home/rustam/catkin_ws/src/calibrate_rgb_sensor_rustam/src/new setup/pendulum/sunfounder/sensing/trial7_1.csv")
df8 = pd.read_csv("/home/rustam/catkin_ws/src/calibrate_rgb_sensor_rustam/src/new setup/pendulum/sunfounder/sensing/trial8_1.csv")
df9 = pd.read_csv("/home/rustam/catkin_ws/src/calibrate_rgb_sensor_rustam/src/new setup/pendulum/sunfounder/sensing/trial9_1.csv")
df10 = pd.read_csv("/home/rustam/catkin_ws/src/calibrate_rgb_sensor_rustam/src/new setup/pendulum/sunfounder/sensing/trial10_1.csv")


#df2 = pd.read_csv("/home/rustam/catkin_ws/src/calibrate_rgb_sensor_rustam/src/rosbag_data_sexy_graphs/Hard_Object_Detection/before/hard_object_detection/hard_object_detection#2.csv")
#df3 = pd.read_csv("/home/rustam/catkin_ws/src/calibrate_rgb_sensor_rustam/src/rosbag_data_sexy_graphs/Hard_Object_Detection/before/hard_object_detection/hard_object_detection#3.csv")
#df4 = pd.read_csv("/home/rustam/catkin_ws/src/calibrate_rgb_sensor_rustam/src/rosbag_data_sexy_graphs/Hard_Object_Detection/before/hard_object_detection/hard_object_detection#4.csv")
#df5 = pd.read_csv("/home/rustam/catkin_ws/src/calibrate_rgb_sensor_rustam/src/rosbag_data_sexy_graphs/Hard_Object_Detection/before/hard_object_detection/hard_object_detection#5.csv")

'''
top = df["top"]
bot = df["bot"]
z = df["z"]
fz = df["fz"]
topbot = top + bot
normtopbot = -(topbot-16.08)
print(normtopbot)
#print(fz.shape)
'''
time1= np.linspace(0, 1.3, 659)
acc1 = -df1["ax"]

time2 = np.linspace(0, 1.3, 672)
acc2 = -df2["ax"]

time3 = np.linspace(0, 1.3, 656)
acc3 = -df3["ax"]

time4 = np.linspace(0, 1.3, 654)
acc4 = -df4["ax"]

time5 = np.linspace(0, 1.3, 676)
acc5 = -df5["ax"]

time6= np.linspace(0, 1.3, 664)
acc6 = -df6["ax"]

time7 = np.linspace(0, 1.3, 652)
acc7 = -df7["ax"]

time8 = np.linspace(0, 1.3, 672)
acc8 = -df8["ax"]

time9 = np.linspace(0, 1.3, 657)
acc9 = -df9["ax"]

time10 = np.linspace(0, 1.3, 647)
acc10 = -df10["ax"]

fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)
ax.set_title("sensing 10_1 trials")
plt.plot(time1, acc1)
plt.plot(time2, acc2)
plt.plot(time3, acc3)
plt.plot(time4, acc4)
plt.plot(time5, acc5)
plt.plot(time6, acc6)
plt.plot(time7, acc7)
plt.plot(time8, acc8)
plt.plot(time9, acc9)
plt.plot(time10, acc10)
major_ticksx = np.arange(0, 1.5, 0.1)
major_ticksy = np.arange(-0.7, 1.2, 0.1)
ax.set_xticks(major_ticksx)
ax.set_yticks(major_ticksy)
ax.tick_params(axis='both', which='major', labelsize=20)
plt.grid(linestyle='dashed')
ax.set_xlabel('Time, sec',fontsize = 30)
ax.set_ylabel('Acceleration, g',fontsize = 30)
L = ax.legend(loc=2, prop={'size': 20})
for i in range(0,10):
    L.get_texts()[i].set_text("trial%01d" % (i+1))

plt.show()
