
(cl:in-package :asdf)

(defsystem "tactile_servo_srvs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "set_external_motion" :depends-on ("_package_set_external_motion"))
    (:file "_package_set_external_motion" :depends-on ("_package"))
    (:file "pose_arm_init" :depends-on ("_package_pose_arm_init"))
    (:file "_package_pose_arm_init" :depends-on ("_package"))
    (:file "start_servo_controller" :depends-on ("_package_start_servo_controller"))
    (:file "_package_start_servo_controller" :depends-on ("_package"))
    (:file "choose_configuration_singularity" :depends-on ("_package_choose_configuration_singularity"))
    (:file "_package_choose_configuration_singularity" :depends-on ("_package"))
    (:file "select_matrix" :depends-on ("_package_select_matrix"))
    (:file "_package_select_matrix" :depends-on ("_package"))
    (:file "begin_control" :depends-on ("_package_begin_control"))
    (:file "_package_begin_control" :depends-on ("_package"))
    (:file "set_des_feats_srv" :depends-on ("_package_set_des_feats_srv"))
    (:file "_package_set_des_feats_srv" :depends-on ("_package"))
  ))