; Auto-generated. Do not edit!


(cl:in-package tactile_servo_msgs-msg)


;//! \htmlinclude COCtoZMP.msg.html

(cl:defclass <COCtoZMP> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (num_pixels_contact
    :reader num_pixels_contact
    :initarg :num_pixels_contact
    :type cl:integer
    :initform 0)
   (coc_to_zmp_smooth
    :reader coc_to_zmp_smooth
    :initarg :coc_to_zmp_smooth
    :type cl:float
    :initform 0.0))
)

(cl:defclass COCtoZMP (<COCtoZMP>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <COCtoZMP>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'COCtoZMP)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_msgs-msg:<COCtoZMP> is deprecated: use tactile_servo_msgs-msg:COCtoZMP instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <COCtoZMP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:header-val is deprecated.  Use tactile_servo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'num_pixels_contact-val :lambda-list '(m))
(cl:defmethod num_pixels_contact-val ((m <COCtoZMP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:num_pixels_contact-val is deprecated.  Use tactile_servo_msgs-msg:num_pixels_contact instead.")
  (num_pixels_contact m))

(cl:ensure-generic-function 'coc_to_zmp_smooth-val :lambda-list '(m))
(cl:defmethod coc_to_zmp_smooth-val ((m <COCtoZMP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:coc_to_zmp_smooth-val is deprecated.  Use tactile_servo_msgs-msg:coc_to_zmp_smooth instead.")
  (coc_to_zmp_smooth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <COCtoZMP>) ostream)
  "Serializes a message object of type '<COCtoZMP>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'num_pixels_contact)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'coc_to_zmp_smooth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <COCtoZMP>) istream)
  "Deserializes a message object of type '<COCtoZMP>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_pixels_contact) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'coc_to_zmp_smooth) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<COCtoZMP>)))
  "Returns string type for a message object of type '<COCtoZMP>"
  "tactile_servo_msgs/COCtoZMP")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'COCtoZMP)))
  "Returns string type for a message object of type 'COCtoZMP"
  "tactile_servo_msgs/COCtoZMP")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<COCtoZMP>)))
  "Returns md5sum for a message object of type '<COCtoZMP>"
  "0d817ec84cd3c8d3b73bcf52114de648")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'COCtoZMP)))
  "Returns md5sum for a message object of type 'COCtoZMP"
  "0d817ec84cd3c8d3b73bcf52114de648")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<COCtoZMP>)))
  "Returns full string definition for message of type '<COCtoZMP>"
  (cl:format cl:nil "Header header~%int32 num_pixels_contact~%float64 coc_to_zmp_smooth~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'COCtoZMP)))
  "Returns full string definition for message of type 'COCtoZMP"
  (cl:format cl:nil "Header header~%int32 num_pixels_contact~%float64 coc_to_zmp_smooth~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <COCtoZMP>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <COCtoZMP>))
  "Converts a ROS message object to a list"
  (cl:list 'COCtoZMP
    (cl:cons ':header (header msg))
    (cl:cons ':num_pixels_contact (num_pixels_contact msg))
    (cl:cons ':coc_to_zmp_smooth (coc_to_zmp_smooth msg))
))
