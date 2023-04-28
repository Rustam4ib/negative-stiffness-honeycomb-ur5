; Auto-generated. Do not edit!


(cl:in-package tactile_servo_msgs-msg)


;//! \htmlinclude tunePidjoint.msg.html

(cl:defclass <tunePidjoint> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (err_in
    :reader err_in
    :initarg :err_in
    :type cl:float
    :initform 0.0)
   (err_out
    :reader err_out
    :initarg :err_out
    :type cl:float
    :initform 0.0)
   (dt
    :reader dt
    :initarg :dt
    :type cl:float
    :initform 0.0)
   (val_now
    :reader val_now
    :initarg :val_now
    :type cl:float
    :initform 0.0)
   (val_new
    :reader val_new
    :initarg :val_new
    :type cl:float
    :initform 0.0))
)

(cl:defclass tunePidjoint (<tunePidjoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tunePidjoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tunePidjoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_msgs-msg:<tunePidjoint> is deprecated: use tactile_servo_msgs-msg:tunePidjoint instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <tunePidjoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:header-val is deprecated.  Use tactile_servo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'err_in-val :lambda-list '(m))
(cl:defmethod err_in-val ((m <tunePidjoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:err_in-val is deprecated.  Use tactile_servo_msgs-msg:err_in instead.")
  (err_in m))

(cl:ensure-generic-function 'err_out-val :lambda-list '(m))
(cl:defmethod err_out-val ((m <tunePidjoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:err_out-val is deprecated.  Use tactile_servo_msgs-msg:err_out instead.")
  (err_out m))

(cl:ensure-generic-function 'dt-val :lambda-list '(m))
(cl:defmethod dt-val ((m <tunePidjoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:dt-val is deprecated.  Use tactile_servo_msgs-msg:dt instead.")
  (dt m))

(cl:ensure-generic-function 'val_now-val :lambda-list '(m))
(cl:defmethod val_now-val ((m <tunePidjoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:val_now-val is deprecated.  Use tactile_servo_msgs-msg:val_now instead.")
  (val_now m))

(cl:ensure-generic-function 'val_new-val :lambda-list '(m))
(cl:defmethod val_new-val ((m <tunePidjoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:val_new-val is deprecated.  Use tactile_servo_msgs-msg:val_new instead.")
  (val_new m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tunePidjoint>) ostream)
  "Serializes a message object of type '<tunePidjoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'err_in))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'err_out))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'val_now))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'val_new))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tunePidjoint>) istream)
  "Deserializes a message object of type '<tunePidjoint>"
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
    (cl:setf (cl:slot-value msg 'err_in) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'err_out) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dt) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'val_now) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'val_new) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tunePidjoint>)))
  "Returns string type for a message object of type '<tunePidjoint>"
  "tactile_servo_msgs/tunePidjoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tunePidjoint)))
  "Returns string type for a message object of type 'tunePidjoint"
  "tactile_servo_msgs/tunePidjoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tunePidjoint>)))
  "Returns md5sum for a message object of type '<tunePidjoint>"
  "a172d7f24dc9bff9c3c39d757afa54e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tunePidjoint)))
  "Returns md5sum for a message object of type 'tunePidjoint"
  "a172d7f24dc9bff9c3c39d757afa54e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tunePidjoint>)))
  "Returns full string definition for message of type '<tunePidjoint>"
  (cl:format cl:nil "Header header~%float64 err_in~%float64 err_out~%float64 dt~%float64 val_now~%float64 val_new~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tunePidjoint)))
  "Returns full string definition for message of type 'tunePidjoint"
  (cl:format cl:nil "Header header~%float64 err_in~%float64 err_out~%float64 dt~%float64 val_now~%float64 val_new~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tunePidjoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tunePidjoint>))
  "Converts a ROS message object to a list"
  (cl:list 'tunePidjoint
    (cl:cons ':header (header msg))
    (cl:cons ':err_in (err_in msg))
    (cl:cons ':err_out (err_out msg))
    (cl:cons ':dt (dt msg))
    (cl:cons ':val_now (val_now msg))
    (cl:cons ':val_new (val_new msg))
))
