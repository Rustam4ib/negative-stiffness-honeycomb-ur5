; Auto-generated. Do not edit!


(cl:in-package tactile_servo_srvs-srv)


;//! \htmlinclude set_external_motion-request.msg.html

(cl:defclass <set_external_motion-request> (roslisp-msg-protocol:ros-message)
  ((delta_x
    :reader delta_x
    :initarg :delta_x
    :type cl:float
    :initform 0.0)
   (delta_y
    :reader delta_y
    :initarg :delta_y
    :type cl:float
    :initform 0.0)
   (delta_z
    :reader delta_z
    :initarg :delta_z
    :type cl:float
    :initform 0.0)
   (delta_wx
    :reader delta_wx
    :initarg :delta_wx
    :type cl:float
    :initform 0.0)
   (delta_wy
    :reader delta_wy
    :initarg :delta_wy
    :type cl:float
    :initform 0.0)
   (delta_wz
    :reader delta_wz
    :initarg :delta_wz
    :type cl:float
    :initform 0.0))
)

(cl:defclass set_external_motion-request (<set_external_motion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_external_motion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_external_motion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_srvs-srv:<set_external_motion-request> is deprecated: use tactile_servo_srvs-srv:set_external_motion-request instead.")))

(cl:ensure-generic-function 'delta_x-val :lambda-list '(m))
(cl:defmethod delta_x-val ((m <set_external_motion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:delta_x-val is deprecated.  Use tactile_servo_srvs-srv:delta_x instead.")
  (delta_x m))

(cl:ensure-generic-function 'delta_y-val :lambda-list '(m))
(cl:defmethod delta_y-val ((m <set_external_motion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:delta_y-val is deprecated.  Use tactile_servo_srvs-srv:delta_y instead.")
  (delta_y m))

(cl:ensure-generic-function 'delta_z-val :lambda-list '(m))
(cl:defmethod delta_z-val ((m <set_external_motion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:delta_z-val is deprecated.  Use tactile_servo_srvs-srv:delta_z instead.")
  (delta_z m))

(cl:ensure-generic-function 'delta_wx-val :lambda-list '(m))
(cl:defmethod delta_wx-val ((m <set_external_motion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:delta_wx-val is deprecated.  Use tactile_servo_srvs-srv:delta_wx instead.")
  (delta_wx m))

(cl:ensure-generic-function 'delta_wy-val :lambda-list '(m))
(cl:defmethod delta_wy-val ((m <set_external_motion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:delta_wy-val is deprecated.  Use tactile_servo_srvs-srv:delta_wy instead.")
  (delta_wy m))

(cl:ensure-generic-function 'delta_wz-val :lambda-list '(m))
(cl:defmethod delta_wz-val ((m <set_external_motion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:delta_wz-val is deprecated.  Use tactile_servo_srvs-srv:delta_wz instead.")
  (delta_wz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_external_motion-request>) ostream)
  "Serializes a message object of type '<set_external_motion-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'delta_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'delta_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'delta_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'delta_wx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'delta_wy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'delta_wz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_external_motion-request>) istream)
  "Deserializes a message object of type '<set_external_motion-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'delta_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'delta_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'delta_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'delta_wx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'delta_wy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'delta_wz) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_external_motion-request>)))
  "Returns string type for a service object of type '<set_external_motion-request>"
  "tactile_servo_srvs/set_external_motionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_external_motion-request)))
  "Returns string type for a service object of type 'set_external_motion-request"
  "tactile_servo_srvs/set_external_motionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_external_motion-request>)))
  "Returns md5sum for a message object of type '<set_external_motion-request>"
  "5c15389ffcd541f6f1a1a5287c03261c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_external_motion-request)))
  "Returns md5sum for a message object of type 'set_external_motion-request"
  "5c15389ffcd541f6f1a1a5287c03261c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_external_motion-request>)))
  "Returns full string definition for message of type '<set_external_motion-request>"
  (cl:format cl:nil "float64 delta_x~%float64 delta_y~%float64 delta_z~%float64 delta_wx~%float64 delta_wy~%float64 delta_wz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_external_motion-request)))
  "Returns full string definition for message of type 'set_external_motion-request"
  (cl:format cl:nil "float64 delta_x~%float64 delta_y~%float64 delta_z~%float64 delta_wx~%float64 delta_wy~%float64 delta_wz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_external_motion-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_external_motion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_external_motion-request
    (cl:cons ':delta_x (delta_x msg))
    (cl:cons ':delta_y (delta_y msg))
    (cl:cons ':delta_z (delta_z msg))
    (cl:cons ':delta_wx (delta_wx msg))
    (cl:cons ':delta_wy (delta_wy msg))
    (cl:cons ':delta_wz (delta_wz msg))
))
;//! \htmlinclude set_external_motion-response.msg.html

(cl:defclass <set_external_motion-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:integer
    :initform 0))
)

(cl:defclass set_external_motion-response (<set_external_motion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_external_motion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_external_motion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_srvs-srv:<set_external_motion-response> is deprecated: use tactile_servo_srvs-srv:set_external_motion-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <set_external_motion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:success-val is deprecated.  Use tactile_servo_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_external_motion-response>) ostream)
  "Serializes a message object of type '<set_external_motion-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_external_motion-response>) istream)
  "Deserializes a message object of type '<set_external_motion-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_external_motion-response>)))
  "Returns string type for a service object of type '<set_external_motion-response>"
  "tactile_servo_srvs/set_external_motionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_external_motion-response)))
  "Returns string type for a service object of type 'set_external_motion-response"
  "tactile_servo_srvs/set_external_motionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_external_motion-response>)))
  "Returns md5sum for a message object of type '<set_external_motion-response>"
  "5c15389ffcd541f6f1a1a5287c03261c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_external_motion-response)))
  "Returns md5sum for a message object of type 'set_external_motion-response"
  "5c15389ffcd541f6f1a1a5287c03261c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_external_motion-response>)))
  "Returns full string definition for message of type '<set_external_motion-response>"
  (cl:format cl:nil "~%int64 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_external_motion-response)))
  "Returns full string definition for message of type 'set_external_motion-response"
  (cl:format cl:nil "~%int64 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_external_motion-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_external_motion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_external_motion-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_external_motion)))
  'set_external_motion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_external_motion)))
  'set_external_motion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_external_motion)))
  "Returns string type for a service object of type '<set_external_motion>"
  "tactile_servo_srvs/set_external_motion")