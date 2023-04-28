; Auto-generated. Do not edit!


(cl:in-package tactile_servo_msgs-msg)


;//! \htmlinclude compare_eigens.msg.html

(cl:defclass <compare_eigens> (roslisp-msg-protocol:ros-message)
  ((vec_eigen1_x
    :reader vec_eigen1_x
    :initarg :vec_eigen1_x
    :type cl:float
    :initform 0.0)
   (vec_eigen1_y
    :reader vec_eigen1_y
    :initarg :vec_eigen1_y
    :type cl:float
    :initform 0.0)
   (val_eigen1
    :reader val_eigen1
    :initarg :val_eigen1
    :type cl:float
    :initform 0.0)
   (vec_eigen2_x
    :reader vec_eigen2_x
    :initarg :vec_eigen2_x
    :type cl:float
    :initform 0.0)
   (vec_eigen2_y
    :reader vec_eigen2_y
    :initarg :vec_eigen2_y
    :type cl:float
    :initform 0.0)
   (val_eigen2
    :reader val_eigen2
    :initarg :val_eigen2
    :type cl:float
    :initform 0.0))
)

(cl:defclass compare_eigens (<compare_eigens>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <compare_eigens>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'compare_eigens)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_msgs-msg:<compare_eigens> is deprecated: use tactile_servo_msgs-msg:compare_eigens instead.")))

(cl:ensure-generic-function 'vec_eigen1_x-val :lambda-list '(m))
(cl:defmethod vec_eigen1_x-val ((m <compare_eigens>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:vec_eigen1_x-val is deprecated.  Use tactile_servo_msgs-msg:vec_eigen1_x instead.")
  (vec_eigen1_x m))

(cl:ensure-generic-function 'vec_eigen1_y-val :lambda-list '(m))
(cl:defmethod vec_eigen1_y-val ((m <compare_eigens>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:vec_eigen1_y-val is deprecated.  Use tactile_servo_msgs-msg:vec_eigen1_y instead.")
  (vec_eigen1_y m))

(cl:ensure-generic-function 'val_eigen1-val :lambda-list '(m))
(cl:defmethod val_eigen1-val ((m <compare_eigens>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:val_eigen1-val is deprecated.  Use tactile_servo_msgs-msg:val_eigen1 instead.")
  (val_eigen1 m))

(cl:ensure-generic-function 'vec_eigen2_x-val :lambda-list '(m))
(cl:defmethod vec_eigen2_x-val ((m <compare_eigens>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:vec_eigen2_x-val is deprecated.  Use tactile_servo_msgs-msg:vec_eigen2_x instead.")
  (vec_eigen2_x m))

(cl:ensure-generic-function 'vec_eigen2_y-val :lambda-list '(m))
(cl:defmethod vec_eigen2_y-val ((m <compare_eigens>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:vec_eigen2_y-val is deprecated.  Use tactile_servo_msgs-msg:vec_eigen2_y instead.")
  (vec_eigen2_y m))

(cl:ensure-generic-function 'val_eigen2-val :lambda-list '(m))
(cl:defmethod val_eigen2-val ((m <compare_eigens>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:val_eigen2-val is deprecated.  Use tactile_servo_msgs-msg:val_eigen2 instead.")
  (val_eigen2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <compare_eigens>) ostream)
  "Serializes a message object of type '<compare_eigens>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vec_eigen1_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vec_eigen1_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'val_eigen1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vec_eigen2_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vec_eigen2_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'val_eigen2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <compare_eigens>) istream)
  "Deserializes a message object of type '<compare_eigens>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vec_eigen1_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vec_eigen1_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'val_eigen1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vec_eigen2_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vec_eigen2_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'val_eigen2) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<compare_eigens>)))
  "Returns string type for a message object of type '<compare_eigens>"
  "tactile_servo_msgs/compare_eigens")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'compare_eigens)))
  "Returns string type for a message object of type 'compare_eigens"
  "tactile_servo_msgs/compare_eigens")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<compare_eigens>)))
  "Returns md5sum for a message object of type '<compare_eigens>"
  "67c049bbb4b73b3b423f74d38f657f1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'compare_eigens)))
  "Returns md5sum for a message object of type 'compare_eigens"
  "67c049bbb4b73b3b423f74d38f657f1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<compare_eigens>)))
  "Returns full string definition for message of type '<compare_eigens>"
  (cl:format cl:nil "float64 vec_eigen1_x~%float64 vec_eigen1_y~%float64 val_eigen1~%float64 vec_eigen2_x~%float64 vec_eigen2_y~%float64 val_eigen2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'compare_eigens)))
  "Returns full string definition for message of type 'compare_eigens"
  (cl:format cl:nil "float64 vec_eigen1_x~%float64 vec_eigen1_y~%float64 val_eigen1~%float64 vec_eigen2_x~%float64 vec_eigen2_y~%float64 val_eigen2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <compare_eigens>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <compare_eigens>))
  "Converts a ROS message object to a list"
  (cl:list 'compare_eigens
    (cl:cons ':vec_eigen1_x (vec_eigen1_x msg))
    (cl:cons ':vec_eigen1_y (vec_eigen1_y msg))
    (cl:cons ':val_eigen1 (val_eigen1 msg))
    (cl:cons ':vec_eigen2_x (vec_eigen2_x msg))
    (cl:cons ':vec_eigen2_y (vec_eigen2_y msg))
    (cl:cons ':val_eigen2 (val_eigen2 msg))
))
