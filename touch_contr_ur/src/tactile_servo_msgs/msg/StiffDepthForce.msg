# This message force penetration depth and stifness of the simulated sensor in Gazebo ODE

Header header        # Header timestamp should be acquisition time of image

float64[] force          # forces
float64[] depth          # penetrations
float64[] stiffness_force      # stiffness based on force (gazebo)
float64[] image          # sensor outputs
float64[] stiffness_image      # stiffness based on the tactile image. actual (gazebo) force is multyplied by sensitivity value
###
float64[] forces32
float64[] depth32
float64[] stiffness32
uint32[] index_in_array32
float64 ind_max_force32
float64 max_force32
float64 depth_at_max_force32
float64 stiffness_at_max_force32
float64 ind_min_force32
float64 min_force32
float64 depth_at_min_force32
float64 stiffness_at_min_force32
float64 ind_max_depth32
float64 max_depth32
float64 force_at_max_depth32
float64 stiffness_at_max_depth32
float64 ind_min_depth32
float64 min_depth32
float64 force_at_min_depth32
float64 stiffness_at_min_depth32
float64 ind_max_stiffness32
float64 max_stiffness32
float64 force_at_max_stiffness32
float64 depth_at_max_stiffness32
float64 ind_min_stiffness32
float64 min_stiffness32
float64 force_at_min_stiffness32
float64 depth_at_min_stiffness32
float64 total_force
float64 avg_force
float64 avg_depth

