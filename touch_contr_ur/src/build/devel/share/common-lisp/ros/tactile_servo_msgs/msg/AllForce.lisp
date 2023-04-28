; Auto-generated. Do not edit!


(cl:in-package tactile_servo_msgs-msg)


;//! \htmlinclude AllForce.msg.html

(cl:defclass <AllForce> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (real
    :reader real
    :initarg :real
    :type cl:float
    :initform 0.0)
   (desired
    :reader desired
    :initarg :desired
    :type cl:float
    :initform 0.0)
   (weiss
    :reader weiss
    :initarg :weiss
    :type cl:float
    :initform 0.0))
)

(cl:defclass AllForce (<AllForce>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AllForce>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AllForce)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_msgs-msg:<AllForce> is deprecated: use tactile_servo_msgs-msg:AllForce instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AllForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:header-val is deprecated.  Use tactile_servo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'real-val :lambda-list '(m))
(cl:defmethod real-val ((m <AllForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:real-val is deprecated.  Use tactile_servo_msgs-msg:real instead.")
  (real m))

(cl:ensure-generic-function 'desired-val :lambda-list '(m))
(cl:defmethod desired-val ((m <AllForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:desired-val is deprecated.  Use tactile_servo_msgs-msg:desired instead.")
  (desired m))

(cl:ensure-generic-function 'weiss-val :lambda-list '(m))
(cl:defmethod weiss-val ((m <AllForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:weiss-val is deprecated.  Use tactile_servo_msgs-msg:weiss instead.")
  (weiss m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AllForce>) ostream)
  "Serializes a message object of type '<AllForce>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'real))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'desired))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'weiss))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AllForce>) istream)
  "Deserializes a message object of type '<AllForce>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'real) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'weiss) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AllForce>)))
  "Returns string type for a message object of type '<AllForce>"
  "tactile_servo_msgs/AllForce")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AllForce)))
  "Returns string type for a message object of type 'AllForce"
  "tactile_servo_msgs/AllForce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AllForce>)))
  "Returns md5sum for a message object of type '<AllForce>"
  "ef1fc02563dc2cf330e05b255f81bf87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AllForce)))
  "Returns md5sum for a message object of type 'AllForce"
  "ef1fc02563dc2cf330e05b255f81bf87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AllForce>)))
  "Returns full string definition for message of type '<AllForce>"
  (cl:format cl:nil "Header header~%float64 real~%float64 desired~%float64 weiss~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AllForce)))
  "Returns full string definition for message of type 'AllForce"
  (cl:format cl:nil "Header header~%float64 real~%float64 desired~%float64 weiss~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AllForce>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AllForce>))
  "Converts a ROS message object to a list"
  (cl:list 'AllForce
    (cl:cons ':header (header msg))
    (cl:cons ':real (real msg))
    (cl:cons ':desired (desired msg))
    (cl:cons ':weiss (weiss msg))
))
