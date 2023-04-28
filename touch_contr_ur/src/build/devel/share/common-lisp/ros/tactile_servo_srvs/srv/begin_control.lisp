; Auto-generated. Do not edit!


(cl:in-package tactile_servo_srvs-srv)


;//! \htmlinclude begin_control-request.msg.html

(cl:defclass <begin_control-request> (roslisp-msg-protocol:ros-message)
  ((begin_control
    :reader begin_control
    :initarg :begin_control
    :type cl:integer
    :initform 0))
)

(cl:defclass begin_control-request (<begin_control-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <begin_control-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'begin_control-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_srvs-srv:<begin_control-request> is deprecated: use tactile_servo_srvs-srv:begin_control-request instead.")))

(cl:ensure-generic-function 'begin_control-val :lambda-list '(m))
(cl:defmethod begin_control-val ((m <begin_control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:begin_control-val is deprecated.  Use tactile_servo_srvs-srv:begin_control instead.")
  (begin_control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <begin_control-request>) ostream)
  "Serializes a message object of type '<begin_control-request>"
  (cl:let* ((signed (cl:slot-value msg 'begin_control)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <begin_control-request>) istream)
  "Deserializes a message object of type '<begin_control-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'begin_control) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<begin_control-request>)))
  "Returns string type for a service object of type '<begin_control-request>"
  "tactile_servo_srvs/begin_controlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'begin_control-request)))
  "Returns string type for a service object of type 'begin_control-request"
  "tactile_servo_srvs/begin_controlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<begin_control-request>)))
  "Returns md5sum for a message object of type '<begin_control-request>"
  "f8510db0e51054ee9f4d5a55ab97ee71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'begin_control-request)))
  "Returns md5sum for a message object of type 'begin_control-request"
  "f8510db0e51054ee9f4d5a55ab97ee71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<begin_control-request>)))
  "Returns full string definition for message of type '<begin_control-request>"
  (cl:format cl:nil "int64 begin_control~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'begin_control-request)))
  "Returns full string definition for message of type 'begin_control-request"
  (cl:format cl:nil "int64 begin_control~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <begin_control-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <begin_control-request>))
  "Converts a ROS message object to a list"
  (cl:list 'begin_control-request
    (cl:cons ':begin_control (begin_control msg))
))
;//! \htmlinclude begin_control-response.msg.html

(cl:defclass <begin_control-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:integer
    :initform 0))
)

(cl:defclass begin_control-response (<begin_control-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <begin_control-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'begin_control-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_srvs-srv:<begin_control-response> is deprecated: use tactile_servo_srvs-srv:begin_control-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <begin_control-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:success-val is deprecated.  Use tactile_servo_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <begin_control-response>) ostream)
  "Serializes a message object of type '<begin_control-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <begin_control-response>) istream)
  "Deserializes a message object of type '<begin_control-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<begin_control-response>)))
  "Returns string type for a service object of type '<begin_control-response>"
  "tactile_servo_srvs/begin_controlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'begin_control-response)))
  "Returns string type for a service object of type 'begin_control-response"
  "tactile_servo_srvs/begin_controlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<begin_control-response>)))
  "Returns md5sum for a message object of type '<begin_control-response>"
  "f8510db0e51054ee9f4d5a55ab97ee71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'begin_control-response)))
  "Returns md5sum for a message object of type 'begin_control-response"
  "f8510db0e51054ee9f4d5a55ab97ee71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<begin_control-response>)))
  "Returns full string definition for message of type '<begin_control-response>"
  (cl:format cl:nil "~%int64 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'begin_control-response)))
  "Returns full string definition for message of type 'begin_control-response"
  (cl:format cl:nil "~%int64 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <begin_control-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <begin_control-response>))
  "Converts a ROS message object to a list"
  (cl:list 'begin_control-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'begin_control)))
  'begin_control-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'begin_control)))
  'begin_control-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'begin_control)))
  "Returns string type for a service object of type '<begin_control>"
  "tactile_servo_srvs/begin_control")