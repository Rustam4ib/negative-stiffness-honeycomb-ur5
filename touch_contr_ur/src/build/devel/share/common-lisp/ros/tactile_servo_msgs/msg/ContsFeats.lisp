; Auto-generated. Do not edit!


(cl:in-package tactile_servo_msgs-msg)


;//! \htmlinclude ContsFeats.msg.html

(cl:defclass <ContsFeats> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (control_features
    :reader control_features
    :initarg :control_features
    :type (cl:vector tactile_servo_msgs-msg:OneContFeats)
   :initform (cl:make-array 0 :element-type 'tactile_servo_msgs-msg:OneContFeats :initial-element (cl:make-instance 'tactile_servo_msgs-msg:OneContFeats))))
)

(cl:defclass ContsFeats (<ContsFeats>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContsFeats>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContsFeats)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_msgs-msg:<ContsFeats> is deprecated: use tactile_servo_msgs-msg:ContsFeats instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ContsFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:header-val is deprecated.  Use tactile_servo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'control_features-val :lambda-list '(m))
(cl:defmethod control_features-val ((m <ContsFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:control_features-val is deprecated.  Use tactile_servo_msgs-msg:control_features instead.")
  (control_features m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContsFeats>) ostream)
  "Serializes a message object of type '<ContsFeats>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'control_features))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'control_features))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContsFeats>) istream)
  "Deserializes a message object of type '<ContsFeats>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'control_features) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'control_features)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tactile_servo_msgs-msg:OneContFeats))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContsFeats>)))
  "Returns string type for a message object of type '<ContsFeats>"
  "tactile_servo_msgs/ContsFeats")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContsFeats)))
  "Returns string type for a message object of type 'ContsFeats"
  "tactile_servo_msgs/ContsFeats")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContsFeats>)))
  "Returns md5sum for a message object of type '<ContsFeats>"
  "44c38b3dcf679267b4ec9aa49b84b60d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContsFeats)))
  "Returns md5sum for a message object of type 'ContsFeats"
  "44c38b3dcf679267b4ec9aa49b84b60d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContsFeats>)))
  "Returns full string definition for message of type '<ContsFeats>"
  (cl:format cl:nil "Header header                                   # stamp~%tactile_servo_msgs/OneContFeats[] control_features           # array of contacts~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: tactile_servo_msgs/OneContFeats~%float64 centerpressure_x~%float64 centerpressure_y~%float64 contactForce~%float64 centerContact_x~%float64 centerContact_y~%float64 contactOrientation~%float64 zmp_x~%float64 zmp_y~%bool is_contact~%int32 num_pixels_contact~%float64 highest_force_cell~%float64 real_total_force~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContsFeats)))
  "Returns full string definition for message of type 'ContsFeats"
  (cl:format cl:nil "Header header                                   # stamp~%tactile_servo_msgs/OneContFeats[] control_features           # array of contacts~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: tactile_servo_msgs/OneContFeats~%float64 centerpressure_x~%float64 centerpressure_y~%float64 contactForce~%float64 centerContact_x~%float64 centerContact_y~%float64 contactOrientation~%float64 zmp_x~%float64 zmp_y~%bool is_contact~%int32 num_pixels_contact~%float64 highest_force_cell~%float64 real_total_force~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContsFeats>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'control_features) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContsFeats>))
  "Converts a ROS message object to a list"
  (cl:list 'ContsFeats
    (cl:cons ':header (header msg))
    (cl:cons ':control_features (control_features msg))
))
