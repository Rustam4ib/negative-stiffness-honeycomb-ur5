; Auto-generated. Do not edit!


(cl:in-package tactile_servo_msgs-msg)


;//! \htmlinclude touch_sensor_read.msg.html

(cl:defclass <touch_sensor_read> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (a0
    :reader a0
    :initarg :a0
    :type cl:float
    :initform 0.0)
   (a1
    :reader a1
    :initarg :a1
    :type cl:float
    :initform 0.0)
   (a2
    :reader a2
    :initarg :a2
    :type cl:float
    :initform 0.0)
   (a3
    :reader a3
    :initarg :a3
    :type cl:float
    :initform 0.0)
   (a4
    :reader a4
    :initarg :a4
    :type cl:float
    :initform 0.0)
   (a5
    :reader a5
    :initarg :a5
    :type cl:float
    :initform 0.0)
   (a6
    :reader a6
    :initarg :a6
    :type cl:float
    :initform 0.0)
   (a7
    :reader a7
    :initarg :a7
    :type cl:float
    :initform 0.0)
   (a8
    :reader a8
    :initarg :a8
    :type cl:float
    :initform 0.0)
   (a9
    :reader a9
    :initarg :a9
    :type cl:float
    :initform 0.0)
   (a10
    :reader a10
    :initarg :a10
    :type cl:float
    :initform 0.0)
   (a11
    :reader a11
    :initarg :a11
    :type cl:float
    :initform 0.0)
   (a12
    :reader a12
    :initarg :a12
    :type cl:float
    :initform 0.0)
   (a13
    :reader a13
    :initarg :a13
    :type cl:float
    :initform 0.0)
   (a14
    :reader a14
    :initarg :a14
    :type cl:float
    :initform 0.0)
   (a15
    :reader a15
    :initarg :a15
    :type cl:float
    :initform 0.0))
)

(cl:defclass touch_sensor_read (<touch_sensor_read>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <touch_sensor_read>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'touch_sensor_read)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_msgs-msg:<touch_sensor_read> is deprecated: use tactile_servo_msgs-msg:touch_sensor_read instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <touch_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:header-val is deprecated.  Use tactile_servo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'a0-val :lambda-list '(m))
(cl:defmethod a0-val ((m <touch_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:a0-val is deprecated.  Use tactile_servo_msgs-msg:a0 instead.")
  (a0 m))

(cl:ensure-generic-function 'a1-val :lambda-list '(m))
(cl:defmethod a1-val ((m <touch_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:a1-val is deprecated.  Use tactile_servo_msgs-msg:a1 instead.")
  (a1 m))

(cl:ensure-generic-function 'a2-val :lambda-list '(m))
(cl:defmethod a2-val ((m <touch_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:a2-val is deprecated.  Use tactile_servo_msgs-msg:a2 instead.")
  (a2 m))

(cl:ensure-generic-function 'a3-val :lambda-list '(m))
(cl:defmethod a3-val ((m <touch_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:a3-val is deprecated.  Use tactile_servo_msgs-msg:a3 instead.")
  (a3 m))

(cl:ensure-generic-function 'a4-val :lambda-list '(m))
(cl:defmethod a4-val ((m <touch_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:a4-val is deprecated.  Use tactile_servo_msgs-msg:a4 instead.")
  (a4 m))

(cl:ensure-generic-function 'a5-val :lambda-list '(m))
(cl:defmethod a5-val ((m <touch_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:a5-val is deprecated.  Use tactile_servo_msgs-msg:a5 instead.")
  (a5 m))

(cl:ensure-generic-function 'a6-val :lambda-list '(m))
(cl:defmethod a6-val ((m <touch_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:a6-val is deprecated.  Use tactile_servo_msgs-msg:a6 instead.")
  (a6 m))

(cl:ensure-generic-function 'a7-val :lambda-list '(m))
(cl:defmethod a7-val ((m <touch_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:a7-val is deprecated.  Use tactile_servo_msgs-msg:a7 instead.")
  (a7 m))

(cl:ensure-generic-function 'a8-val :lambda-list '(m))
(cl:defmethod a8-val ((m <touch_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:a8-val is deprecated.  Use tactile_servo_msgs-msg:a8 instead.")
  (a8 m))

(cl:ensure-generic-function 'a9-val :lambda-list '(m))
(cl:defmethod a9-val ((m <touch_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:a9-val is deprecated.  Use tactile_servo_msgs-msg:a9 instead.")
  (a9 m))

(cl:ensure-generic-function 'a10-val :lambda-list '(m))
(cl:defmethod a10-val ((m <touch_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:a10-val is deprecated.  Use tactile_servo_msgs-msg:a10 instead.")
  (a10 m))

(cl:ensure-generic-function 'a11-val :lambda-list '(m))
(cl:defmethod a11-val ((m <touch_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:a11-val is deprecated.  Use tactile_servo_msgs-msg:a11 instead.")
  (a11 m))

(cl:ensure-generic-function 'a12-val :lambda-list '(m))
(cl:defmethod a12-val ((m <touch_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:a12-val is deprecated.  Use tactile_servo_msgs-msg:a12 instead.")
  (a12 m))

(cl:ensure-generic-function 'a13-val :lambda-list '(m))
(cl:defmethod a13-val ((m <touch_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:a13-val is deprecated.  Use tactile_servo_msgs-msg:a13 instead.")
  (a13 m))

(cl:ensure-generic-function 'a14-val :lambda-list '(m))
(cl:defmethod a14-val ((m <touch_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:a14-val is deprecated.  Use tactile_servo_msgs-msg:a14 instead.")
  (a14 m))

(cl:ensure-generic-function 'a15-val :lambda-list '(m))
(cl:defmethod a15-val ((m <touch_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:a15-val is deprecated.  Use tactile_servo_msgs-msg:a15 instead.")
  (a15 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <touch_sensor_read>) ostream)
  "Serializes a message object of type '<touch_sensor_read>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a7))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a8))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a9))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a10))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a11))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a12))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a13))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a14))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a15))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <touch_sensor_read>) istream)
  "Deserializes a message object of type '<touch_sensor_read>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a6) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a7) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a8) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a9) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a10) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a11) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a12) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a13) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a14) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a15) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<touch_sensor_read>)))
  "Returns string type for a message object of type '<touch_sensor_read>"
  "tactile_servo_msgs/touch_sensor_read")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'touch_sensor_read)))
  "Returns string type for a message object of type 'touch_sensor_read"
  "tactile_servo_msgs/touch_sensor_read")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<touch_sensor_read>)))
  "Returns md5sum for a message object of type '<touch_sensor_read>"
  "4df8b4ab4ecaf13d960bd76650e851a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'touch_sensor_read)))
  "Returns md5sum for a message object of type 'touch_sensor_read"
  "4df8b4ab4ecaf13d960bd76650e851a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<touch_sensor_read>)))
  "Returns full string definition for message of type '<touch_sensor_read>"
  (cl:format cl:nil "# Custome Analog input message~%Header header~%float32 a0~%float32 a1~%float32 a2~%float32 a3~%float32 a4~%float32 a5~%float32 a6~%float32 a7~%float32 a8~%float32 a9~%float32 a10~%float32 a11~%float32 a12~%float32 a13~%float32 a14~%float32 a15~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'touch_sensor_read)))
  "Returns full string definition for message of type 'touch_sensor_read"
  (cl:format cl:nil "# Custome Analog input message~%Header header~%float32 a0~%float32 a1~%float32 a2~%float32 a3~%float32 a4~%float32 a5~%float32 a6~%float32 a7~%float32 a8~%float32 a9~%float32 a10~%float32 a11~%float32 a12~%float32 a13~%float32 a14~%float32 a15~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <touch_sensor_read>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <touch_sensor_read>))
  "Converts a ROS message object to a list"
  (cl:list 'touch_sensor_read
    (cl:cons ':header (header msg))
    (cl:cons ':a0 (a0 msg))
    (cl:cons ':a1 (a1 msg))
    (cl:cons ':a2 (a2 msg))
    (cl:cons ':a3 (a3 msg))
    (cl:cons ':a4 (a4 msg))
    (cl:cons ':a5 (a5 msg))
    (cl:cons ':a6 (a6 msg))
    (cl:cons ':a7 (a7 msg))
    (cl:cons ':a8 (a8 msg))
    (cl:cons ':a9 (a9 msg))
    (cl:cons ':a10 (a10 msg))
    (cl:cons ':a11 (a11 msg))
    (cl:cons ':a12 (a12 msg))
    (cl:cons ':a13 (a13 msg))
    (cl:cons ':a14 (a14 msg))
    (cl:cons ':a15 (a15 msg))
))
