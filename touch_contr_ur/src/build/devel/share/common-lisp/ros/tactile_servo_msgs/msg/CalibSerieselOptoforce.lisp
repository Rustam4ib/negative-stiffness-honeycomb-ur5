; Auto-generated. Do not edit!


(cl:in-package tactile_servo_msgs-msg)


;//! \htmlinclude CalibSerieselOptoforce.msg.html

(cl:defclass <CalibSerieselOptoforce> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (adc0
    :reader adc0
    :initarg :adc0
    :type cl:fixnum
    :initform 0)
   (adc1
    :reader adc1
    :initarg :adc1
    :type cl:fixnum
    :initform 0)
   (adc2
    :reader adc2
    :initarg :adc2
    :type cl:fixnum
    :initform 0)
   (adc3
    :reader adc3
    :initarg :adc3
    :type cl:fixnum
    :initform 0)
   (adc4
    :reader adc4
    :initarg :adc4
    :type cl:fixnum
    :initform 0)
   (adc5
    :reader adc5
    :initarg :adc5
    :type cl:fixnum
    :initform 0)
   (adc6
    :reader adc6
    :initarg :adc6
    :type cl:fixnum
    :initform 0)
   (adc7
    :reader adc7
    :initarg :adc7
    :type cl:fixnum
    :initform 0)
   (adc8
    :reader adc8
    :initarg :adc8
    :type cl:fixnum
    :initform 0)
   (adc9
    :reader adc9
    :initarg :adc9
    :type cl:fixnum
    :initform 0)
   (adc10
    :reader adc10
    :initarg :adc10
    :type cl:fixnum
    :initform 0)
   (adc11
    :reader adc11
    :initarg :adc11
    :type cl:fixnum
    :initform 0)
   (adc12
    :reader adc12
    :initarg :adc12
    :type cl:fixnum
    :initform 0)
   (adc13
    :reader adc13
    :initarg :adc13
    :type cl:fixnum
    :initform 0)
   (adc14
    :reader adc14
    :initarg :adc14
    :type cl:fixnum
    :initform 0)
   (adc15
    :reader adc15
    :initarg :adc15
    :type cl:fixnum
    :initform 0)
   (nano
    :reader nano
    :initarg :nano
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench)))
)

(cl:defclass CalibSerieselOptoforce (<CalibSerieselOptoforce>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibSerieselOptoforce>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibSerieselOptoforce)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_msgs-msg:<CalibSerieselOptoforce> is deprecated: use tactile_servo_msgs-msg:CalibSerieselOptoforce instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:header-val is deprecated.  Use tactile_servo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'adc0-val :lambda-list '(m))
(cl:defmethod adc0-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:adc0-val is deprecated.  Use tactile_servo_msgs-msg:adc0 instead.")
  (adc0 m))

(cl:ensure-generic-function 'adc1-val :lambda-list '(m))
(cl:defmethod adc1-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:adc1-val is deprecated.  Use tactile_servo_msgs-msg:adc1 instead.")
  (adc1 m))

(cl:ensure-generic-function 'adc2-val :lambda-list '(m))
(cl:defmethod adc2-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:adc2-val is deprecated.  Use tactile_servo_msgs-msg:adc2 instead.")
  (adc2 m))

(cl:ensure-generic-function 'adc3-val :lambda-list '(m))
(cl:defmethod adc3-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:adc3-val is deprecated.  Use tactile_servo_msgs-msg:adc3 instead.")
  (adc3 m))

(cl:ensure-generic-function 'adc4-val :lambda-list '(m))
(cl:defmethod adc4-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:adc4-val is deprecated.  Use tactile_servo_msgs-msg:adc4 instead.")
  (adc4 m))

(cl:ensure-generic-function 'adc5-val :lambda-list '(m))
(cl:defmethod adc5-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:adc5-val is deprecated.  Use tactile_servo_msgs-msg:adc5 instead.")
  (adc5 m))

(cl:ensure-generic-function 'adc6-val :lambda-list '(m))
(cl:defmethod adc6-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:adc6-val is deprecated.  Use tactile_servo_msgs-msg:adc6 instead.")
  (adc6 m))

(cl:ensure-generic-function 'adc7-val :lambda-list '(m))
(cl:defmethod adc7-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:adc7-val is deprecated.  Use tactile_servo_msgs-msg:adc7 instead.")
  (adc7 m))

(cl:ensure-generic-function 'adc8-val :lambda-list '(m))
(cl:defmethod adc8-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:adc8-val is deprecated.  Use tactile_servo_msgs-msg:adc8 instead.")
  (adc8 m))

(cl:ensure-generic-function 'adc9-val :lambda-list '(m))
(cl:defmethod adc9-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:adc9-val is deprecated.  Use tactile_servo_msgs-msg:adc9 instead.")
  (adc9 m))

(cl:ensure-generic-function 'adc10-val :lambda-list '(m))
(cl:defmethod adc10-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:adc10-val is deprecated.  Use tactile_servo_msgs-msg:adc10 instead.")
  (adc10 m))

(cl:ensure-generic-function 'adc11-val :lambda-list '(m))
(cl:defmethod adc11-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:adc11-val is deprecated.  Use tactile_servo_msgs-msg:adc11 instead.")
  (adc11 m))

(cl:ensure-generic-function 'adc12-val :lambda-list '(m))
(cl:defmethod adc12-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:adc12-val is deprecated.  Use tactile_servo_msgs-msg:adc12 instead.")
  (adc12 m))

(cl:ensure-generic-function 'adc13-val :lambda-list '(m))
(cl:defmethod adc13-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:adc13-val is deprecated.  Use tactile_servo_msgs-msg:adc13 instead.")
  (adc13 m))

(cl:ensure-generic-function 'adc14-val :lambda-list '(m))
(cl:defmethod adc14-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:adc14-val is deprecated.  Use tactile_servo_msgs-msg:adc14 instead.")
  (adc14 m))

(cl:ensure-generic-function 'adc15-val :lambda-list '(m))
(cl:defmethod adc15-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:adc15-val is deprecated.  Use tactile_servo_msgs-msg:adc15 instead.")
  (adc15 m))

(cl:ensure-generic-function 'nano-val :lambda-list '(m))
(cl:defmethod nano-val ((m <CalibSerieselOptoforce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:nano-val is deprecated.  Use tactile_servo_msgs-msg:nano instead.")
  (nano m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibSerieselOptoforce>) ostream)
  "Serializes a message object of type '<CalibSerieselOptoforce>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc7)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc7)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc8)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc8)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc9)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc9)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc10)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc10)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc11)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc11)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc12)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc12)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc13)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc13)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc14)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc14)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc15)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc15)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nano) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibSerieselOptoforce>) istream)
  "Deserializes a message object of type '<CalibSerieselOptoforce>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc7)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc7)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc8)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc8)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc9)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc9)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc10)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc10)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc11)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc11)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc12)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc12)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc13)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc13)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc14)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc14)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc15)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc15)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nano) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibSerieselOptoforce>)))
  "Returns string type for a message object of type '<CalibSerieselOptoforce>"
  "tactile_servo_msgs/CalibSerieselOptoforce")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibSerieselOptoforce)))
  "Returns string type for a message object of type 'CalibSerieselOptoforce"
  "tactile_servo_msgs/CalibSerieselOptoforce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibSerieselOptoforce>)))
  "Returns md5sum for a message object of type '<CalibSerieselOptoforce>"
  "89487ec7fb2ca7040c7708621b61dd21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibSerieselOptoforce)))
  "Returns md5sum for a message object of type 'CalibSerieselOptoforce"
  "89487ec7fb2ca7040c7708621b61dd21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibSerieselOptoforce>)))
  "Returns full string definition for message of type '<CalibSerieselOptoforce>"
  (cl:format cl:nil "Header header~%uint16 adc0~%uint16 adc1~%uint16 adc2~%uint16 adc3~%uint16 adc4~%uint16 adc5~%uint16 adc6~%uint16 adc7~%uint16 adc8~%uint16 adc9~%uint16 adc10~%uint16 adc11~%uint16 adc12~%uint16 adc13~%uint16 adc14~%uint16 adc15~%geometry_msgs/Wrench nano~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibSerieselOptoforce)))
  "Returns full string definition for message of type 'CalibSerieselOptoforce"
  (cl:format cl:nil "Header header~%uint16 adc0~%uint16 adc1~%uint16 adc2~%uint16 adc3~%uint16 adc4~%uint16 adc5~%uint16 adc6~%uint16 adc7~%uint16 adc8~%uint16 adc9~%uint16 adc10~%uint16 adc11~%uint16 adc12~%uint16 adc13~%uint16 adc14~%uint16 adc15~%geometry_msgs/Wrench nano~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibSerieselOptoforce>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nano))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibSerieselOptoforce>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibSerieselOptoforce
    (cl:cons ':header (header msg))
    (cl:cons ':adc0 (adc0 msg))
    (cl:cons ':adc1 (adc1 msg))
    (cl:cons ':adc2 (adc2 msg))
    (cl:cons ':adc3 (adc3 msg))
    (cl:cons ':adc4 (adc4 msg))
    (cl:cons ':adc5 (adc5 msg))
    (cl:cons ':adc6 (adc6 msg))
    (cl:cons ':adc7 (adc7 msg))
    (cl:cons ':adc8 (adc8 msg))
    (cl:cons ':adc9 (adc9 msg))
    (cl:cons ':adc10 (adc10 msg))
    (cl:cons ':adc11 (adc11 msg))
    (cl:cons ':adc12 (adc12 msg))
    (cl:cons ':adc13 (adc13 msg))
    (cl:cons ':adc14 (adc14 msg))
    (cl:cons ':adc15 (adc15 msg))
    (cl:cons ':nano (nano msg))
))
