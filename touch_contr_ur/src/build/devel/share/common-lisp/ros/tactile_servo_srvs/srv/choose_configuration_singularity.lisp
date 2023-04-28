; Auto-generated. Do not edit!


(cl:in-package tactile_servo_srvs-srv)


;//! \htmlinclude choose_configuration_singularity-request.msg.html

(cl:defclass <choose_configuration_singularity-request> (roslisp-msg-protocol:ros-message)
  ((choose_configuration
    :reader choose_configuration
    :initarg :choose_configuration
    :type cl:integer
    :initform 0))
)

(cl:defclass choose_configuration_singularity-request (<choose_configuration_singularity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <choose_configuration_singularity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'choose_configuration_singularity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_srvs-srv:<choose_configuration_singularity-request> is deprecated: use tactile_servo_srvs-srv:choose_configuration_singularity-request instead.")))

(cl:ensure-generic-function 'choose_configuration-val :lambda-list '(m))
(cl:defmethod choose_configuration-val ((m <choose_configuration_singularity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:choose_configuration-val is deprecated.  Use tactile_servo_srvs-srv:choose_configuration instead.")
  (choose_configuration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <choose_configuration_singularity-request>) ostream)
  "Serializes a message object of type '<choose_configuration_singularity-request>"
  (cl:let* ((signed (cl:slot-value msg 'choose_configuration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <choose_configuration_singularity-request>) istream)
  "Deserializes a message object of type '<choose_configuration_singularity-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'choose_configuration) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<choose_configuration_singularity-request>)))
  "Returns string type for a service object of type '<choose_configuration_singularity-request>"
  "tactile_servo_srvs/choose_configuration_singularityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'choose_configuration_singularity-request)))
  "Returns string type for a service object of type 'choose_configuration_singularity-request"
  "tactile_servo_srvs/choose_configuration_singularityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<choose_configuration_singularity-request>)))
  "Returns md5sum for a message object of type '<choose_configuration_singularity-request>"
  "10ee8dd987888b1b0dd9111a4eae0a74")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'choose_configuration_singularity-request)))
  "Returns md5sum for a message object of type 'choose_configuration_singularity-request"
  "10ee8dd987888b1b0dd9111a4eae0a74")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<choose_configuration_singularity-request>)))
  "Returns full string definition for message of type '<choose_configuration_singularity-request>"
  (cl:format cl:nil "int64 choose_configuration~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'choose_configuration_singularity-request)))
  "Returns full string definition for message of type 'choose_configuration_singularity-request"
  (cl:format cl:nil "int64 choose_configuration~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <choose_configuration_singularity-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <choose_configuration_singularity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'choose_configuration_singularity-request
    (cl:cons ':choose_configuration (choose_configuration msg))
))
;//! \htmlinclude choose_configuration_singularity-response.msg.html

(cl:defclass <choose_configuration_singularity-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:integer
    :initform 0))
)

(cl:defclass choose_configuration_singularity-response (<choose_configuration_singularity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <choose_configuration_singularity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'choose_configuration_singularity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_srvs-srv:<choose_configuration_singularity-response> is deprecated: use tactile_servo_srvs-srv:choose_configuration_singularity-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <choose_configuration_singularity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:success-val is deprecated.  Use tactile_servo_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <choose_configuration_singularity-response>) ostream)
  "Serializes a message object of type '<choose_configuration_singularity-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <choose_configuration_singularity-response>) istream)
  "Deserializes a message object of type '<choose_configuration_singularity-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<choose_configuration_singularity-response>)))
  "Returns string type for a service object of type '<choose_configuration_singularity-response>"
  "tactile_servo_srvs/choose_configuration_singularityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'choose_configuration_singularity-response)))
  "Returns string type for a service object of type 'choose_configuration_singularity-response"
  "tactile_servo_srvs/choose_configuration_singularityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<choose_configuration_singularity-response>)))
  "Returns md5sum for a message object of type '<choose_configuration_singularity-response>"
  "10ee8dd987888b1b0dd9111a4eae0a74")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'choose_configuration_singularity-response)))
  "Returns md5sum for a message object of type 'choose_configuration_singularity-response"
  "10ee8dd987888b1b0dd9111a4eae0a74")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<choose_configuration_singularity-response>)))
  "Returns full string definition for message of type '<choose_configuration_singularity-response>"
  (cl:format cl:nil "~%int64 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'choose_configuration_singularity-response)))
  "Returns full string definition for message of type 'choose_configuration_singularity-response"
  (cl:format cl:nil "~%int64 success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <choose_configuration_singularity-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <choose_configuration_singularity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'choose_configuration_singularity-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'choose_configuration_singularity)))
  'choose_configuration_singularity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'choose_configuration_singularity)))
  'choose_configuration_singularity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'choose_configuration_singularity)))
  "Returns string type for a service object of type '<choose_configuration_singularity>"
  "tactile_servo_srvs/choose_configuration_singularity")