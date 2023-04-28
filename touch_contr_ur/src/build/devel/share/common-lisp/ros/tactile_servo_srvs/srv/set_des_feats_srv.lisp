; Auto-generated. Do not edit!


(cl:in-package tactile_servo_srvs-srv)


;//! \htmlinclude set_des_feats_srv-request.msg.html

(cl:defclass <set_des_feats_srv-request> (roslisp-msg-protocol:ros-message)
  ((copx
    :reader copx
    :initarg :copx
    :type cl:float
    :initform 0.0)
   (copy
    :reader copy
    :initarg :copy
    :type cl:float
    :initform 0.0)
   (force
    :reader force
    :initarg :force
    :type cl:float
    :initform 0.0)
   (cocx
    :reader cocx
    :initarg :cocx
    :type cl:float
    :initform 0.0)
   (cocy
    :reader cocy
    :initarg :cocy
    :type cl:float
    :initform 0.0)
   (orient
    :reader orient
    :initarg :orient
    :type cl:float
    :initform 0.0)
   (zmp_x
    :reader zmp_x
    :initarg :zmp_x
    :type cl:float
    :initform 0.0)
   (zmp_y
    :reader zmp_y
    :initarg :zmp_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass set_des_feats_srv-request (<set_des_feats_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_des_feats_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_des_feats_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_srvs-srv:<set_des_feats_srv-request> is deprecated: use tactile_servo_srvs-srv:set_des_feats_srv-request instead.")))

(cl:ensure-generic-function 'copx-val :lambda-list '(m))
(cl:defmethod copx-val ((m <set_des_feats_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:copx-val is deprecated.  Use tactile_servo_srvs-srv:copx instead.")
  (copx m))

(cl:ensure-generic-function 'copy-val :lambda-list '(m))
(cl:defmethod copy-val ((m <set_des_feats_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:copy-val is deprecated.  Use tactile_servo_srvs-srv:copy instead.")
  (copy m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <set_des_feats_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:force-val is deprecated.  Use tactile_servo_srvs-srv:force instead.")
  (force m))

(cl:ensure-generic-function 'cocx-val :lambda-list '(m))
(cl:defmethod cocx-val ((m <set_des_feats_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:cocx-val is deprecated.  Use tactile_servo_srvs-srv:cocx instead.")
  (cocx m))

(cl:ensure-generic-function 'cocy-val :lambda-list '(m))
(cl:defmethod cocy-val ((m <set_des_feats_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:cocy-val is deprecated.  Use tactile_servo_srvs-srv:cocy instead.")
  (cocy m))

(cl:ensure-generic-function 'orient-val :lambda-list '(m))
(cl:defmethod orient-val ((m <set_des_feats_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:orient-val is deprecated.  Use tactile_servo_srvs-srv:orient instead.")
  (orient m))

(cl:ensure-generic-function 'zmp_x-val :lambda-list '(m))
(cl:defmethod zmp_x-val ((m <set_des_feats_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:zmp_x-val is deprecated.  Use tactile_servo_srvs-srv:zmp_x instead.")
  (zmp_x m))

(cl:ensure-generic-function 'zmp_y-val :lambda-list '(m))
(cl:defmethod zmp_y-val ((m <set_des_feats_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:zmp_y-val is deprecated.  Use tactile_servo_srvs-srv:zmp_y instead.")
  (zmp_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_des_feats_srv-request>) ostream)
  "Serializes a message object of type '<set_des_feats_srv-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'copx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'copy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cocx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cocy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'orient))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'zmp_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'zmp_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_des_feats_srv-request>) istream)
  "Deserializes a message object of type '<set_des_feats_srv-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'copx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'copy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'force) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cocx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cocy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orient) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zmp_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zmp_y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_des_feats_srv-request>)))
  "Returns string type for a service object of type '<set_des_feats_srv-request>"
  "tactile_servo_srvs/set_des_feats_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_des_feats_srv-request)))
  "Returns string type for a service object of type 'set_des_feats_srv-request"
  "tactile_servo_srvs/set_des_feats_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_des_feats_srv-request>)))
  "Returns md5sum for a message object of type '<set_des_feats_srv-request>"
  "a9f79bb34d45b76c6fd0a8b06fb9504b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_des_feats_srv-request)))
  "Returns md5sum for a message object of type 'set_des_feats_srv-request"
  "a9f79bb34d45b76c6fd0a8b06fb9504b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_des_feats_srv-request>)))
  "Returns full string definition for message of type '<set_des_feats_srv-request>"
  (cl:format cl:nil "float64 copx~%float64 copy~%float64 force~%float64 cocx~%float64 cocy~%float64 orient~%float64 zmp_x~%float64 zmp_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_des_feats_srv-request)))
  "Returns full string definition for message of type 'set_des_feats_srv-request"
  (cl:format cl:nil "float64 copx~%float64 copy~%float64 force~%float64 cocx~%float64 cocy~%float64 orient~%float64 zmp_x~%float64 zmp_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_des_feats_srv-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_des_feats_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_des_feats_srv-request
    (cl:cons ':copx (copx msg))
    (cl:cons ':copy (copy msg))
    (cl:cons ':force (force msg))
    (cl:cons ':cocx (cocx msg))
    (cl:cons ':cocy (cocy msg))
    (cl:cons ':orient (orient msg))
    (cl:cons ':zmp_x (zmp_x msg))
    (cl:cons ':zmp_y (zmp_y msg))
))
;//! \htmlinclude set_des_feats_srv-response.msg.html

(cl:defclass <set_des_feats_srv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:integer
    :initform 0))
)

(cl:defclass set_des_feats_srv-response (<set_des_feats_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_des_feats_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_des_feats_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_srvs-srv:<set_des_feats_srv-response> is deprecated: use tactile_servo_srvs-srv:set_des_feats_srv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <set_des_feats_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:success-val is deprecated.  Use tactile_servo_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_des_feats_srv-response>) ostream)
  "Serializes a message object of type '<set_des_feats_srv-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_des_feats_srv-response>) istream)
  "Deserializes a message object of type '<set_des_feats_srv-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_des_feats_srv-response>)))
  "Returns string type for a service object of type '<set_des_feats_srv-response>"
  "tactile_servo_srvs/set_des_feats_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_des_feats_srv-response)))
  "Returns string type for a service object of type 'set_des_feats_srv-response"
  "tactile_servo_srvs/set_des_feats_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_des_feats_srv-response>)))
  "Returns md5sum for a message object of type '<set_des_feats_srv-response>"
  "a9f79bb34d45b76c6fd0a8b06fb9504b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_des_feats_srv-response)))
  "Returns md5sum for a message object of type 'set_des_feats_srv-response"
  "a9f79bb34d45b76c6fd0a8b06fb9504b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_des_feats_srv-response>)))
  "Returns full string definition for message of type '<set_des_feats_srv-response>"
  (cl:format cl:nil "~%int64 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_des_feats_srv-response)))
  "Returns full string definition for message of type 'set_des_feats_srv-response"
  (cl:format cl:nil "~%int64 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_des_feats_srv-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_des_feats_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_des_feats_srv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_des_feats_srv)))
  'set_des_feats_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_des_feats_srv)))
  'set_des_feats_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_des_feats_srv)))
  "Returns string type for a service object of type '<set_des_feats_srv>"
  "tactile_servo_srvs/set_des_feats_srv")