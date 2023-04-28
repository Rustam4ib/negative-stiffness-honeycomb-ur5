; Auto-generated. Do not edit!


(cl:in-package tactile_servo_msgs-msg)


;//! \htmlinclude PlanFeats.msg.html

(cl:defclass <PlanFeats> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (TypeContact
    :reader TypeContact
    :initarg :TypeContact
    :type cl:string
    :initform "")
   (numContours
    :reader numContours
    :initarg :numContours
    :type cl:integer
    :initform 0)
   (isCorner
    :reader isCorner
    :initarg :isCorner
    :type cl:boolean
    :initform cl:nil)
   (contactArea
    :reader contactArea
    :initarg :contactArea
    :type cl:float
    :initform 0.0))
)

(cl:defclass PlanFeats (<PlanFeats>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanFeats>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanFeats)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_msgs-msg:<PlanFeats> is deprecated: use tactile_servo_msgs-msg:PlanFeats instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlanFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:header-val is deprecated.  Use tactile_servo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'TypeContact-val :lambda-list '(m))
(cl:defmethod TypeContact-val ((m <PlanFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:TypeContact-val is deprecated.  Use tactile_servo_msgs-msg:TypeContact instead.")
  (TypeContact m))

(cl:ensure-generic-function 'numContours-val :lambda-list '(m))
(cl:defmethod numContours-val ((m <PlanFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:numContours-val is deprecated.  Use tactile_servo_msgs-msg:numContours instead.")
  (numContours m))

(cl:ensure-generic-function 'isCorner-val :lambda-list '(m))
(cl:defmethod isCorner-val ((m <PlanFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:isCorner-val is deprecated.  Use tactile_servo_msgs-msg:isCorner instead.")
  (isCorner m))

(cl:ensure-generic-function 'contactArea-val :lambda-list '(m))
(cl:defmethod contactArea-val ((m <PlanFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:contactArea-val is deprecated.  Use tactile_servo_msgs-msg:contactArea instead.")
  (contactArea m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanFeats>) ostream)
  "Serializes a message object of type '<PlanFeats>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'TypeContact))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'TypeContact))
  (cl:let* ((signed (cl:slot-value msg 'numContours)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isCorner) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'contactArea))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanFeats>) istream)
  "Deserializes a message object of type '<PlanFeats>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'TypeContact) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'TypeContact) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numContours) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'isCorner) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'contactArea) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanFeats>)))
  "Returns string type for a message object of type '<PlanFeats>"
  "tactile_servo_msgs/PlanFeats")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanFeats)))
  "Returns string type for a message object of type 'PlanFeats"
  "tactile_servo_msgs/PlanFeats")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanFeats>)))
  "Returns md5sum for a message object of type '<PlanFeats>"
  "f6ba0ac762b3ea36a8d1c92ae7084acf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanFeats)))
  "Returns md5sum for a message object of type 'PlanFeats"
  "f6ba0ac762b3ea36a8d1c92ae7084acf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanFeats>)))
  "Returns full string definition for message of type '<PlanFeats>"
  (cl:format cl:nil "Header header~%string TypeContact~%int32 numContours~%bool isCorner  ~%float64 contactArea~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanFeats)))
  "Returns full string definition for message of type 'PlanFeats"
  (cl:format cl:nil "Header header~%string TypeContact~%int32 numContours~%bool isCorner  ~%float64 contactArea~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanFeats>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'TypeContact))
     4
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanFeats>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanFeats
    (cl:cons ':header (header msg))
    (cl:cons ':TypeContact (TypeContact msg))
    (cl:cons ':numContours (numContours msg))
    (cl:cons ':isCorner (isCorner msg))
    (cl:cons ':contactArea (contactArea msg))
))
