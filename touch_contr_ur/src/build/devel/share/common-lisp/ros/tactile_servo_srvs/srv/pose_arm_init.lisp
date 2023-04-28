; Auto-generated. Do not edit!


(cl:in-package tactile_servo_srvs-srv)


;//! \htmlinclude pose_arm_init-request.msg.html

(cl:defclass <pose_arm_init-request> (roslisp-msg-protocol:ros-message)
  ((init
    :reader init
    :initarg :init
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass pose_arm_init-request (<pose_arm_init-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_arm_init-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_arm_init-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_srvs-srv:<pose_arm_init-request> is deprecated: use tactile_servo_srvs-srv:pose_arm_init-request instead.")))

(cl:ensure-generic-function 'init-val :lambda-list '(m))
(cl:defmethod init-val ((m <pose_arm_init-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:init-val is deprecated.  Use tactile_servo_srvs-srv:init instead.")
  (init m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_arm_init-request>) ostream)
  "Serializes a message object of type '<pose_arm_init-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'init) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_arm_init-request>) istream)
  "Deserializes a message object of type '<pose_arm_init-request>"
    (cl:setf (cl:slot-value msg 'init) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_arm_init-request>)))
  "Returns string type for a service object of type '<pose_arm_init-request>"
  "tactile_servo_srvs/pose_arm_initRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_arm_init-request)))
  "Returns string type for a service object of type 'pose_arm_init-request"
  "tactile_servo_srvs/pose_arm_initRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_arm_init-request>)))
  "Returns md5sum for a message object of type '<pose_arm_init-request>"
  "46241584f8d15752cfaafef65fb4333e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_arm_init-request)))
  "Returns md5sum for a message object of type 'pose_arm_init-request"
  "46241584f8d15752cfaafef65fb4333e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_arm_init-request>)))
  "Returns full string definition for message of type '<pose_arm_init-request>"
  (cl:format cl:nil "bool init~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_arm_init-request)))
  "Returns full string definition for message of type 'pose_arm_init-request"
  (cl:format cl:nil "bool init~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_arm_init-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_arm_init-request>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_arm_init-request
    (cl:cons ':init (init msg))
))
;//! \htmlinclude pose_arm_init-response.msg.html

(cl:defclass <pose_arm_init-response> (roslisp-msg-protocol:ros-message)
  ((initialized
    :reader initialized
    :initarg :initialized
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass pose_arm_init-response (<pose_arm_init-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_arm_init-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_arm_init-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_srvs-srv:<pose_arm_init-response> is deprecated: use tactile_servo_srvs-srv:pose_arm_init-response instead.")))

(cl:ensure-generic-function 'initialized-val :lambda-list '(m))
(cl:defmethod initialized-val ((m <pose_arm_init-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:initialized-val is deprecated.  Use tactile_servo_srvs-srv:initialized instead.")
  (initialized m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_arm_init-response>) ostream)
  "Serializes a message object of type '<pose_arm_init-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'initialized) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_arm_init-response>) istream)
  "Deserializes a message object of type '<pose_arm_init-response>"
    (cl:setf (cl:slot-value msg 'initialized) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_arm_init-response>)))
  "Returns string type for a service object of type '<pose_arm_init-response>"
  "tactile_servo_srvs/pose_arm_initResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_arm_init-response)))
  "Returns string type for a service object of type 'pose_arm_init-response"
  "tactile_servo_srvs/pose_arm_initResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_arm_init-response>)))
  "Returns md5sum for a message object of type '<pose_arm_init-response>"
  "46241584f8d15752cfaafef65fb4333e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_arm_init-response)))
  "Returns md5sum for a message object of type 'pose_arm_init-response"
  "46241584f8d15752cfaafef65fb4333e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_arm_init-response>)))
  "Returns full string definition for message of type '<pose_arm_init-response>"
  (cl:format cl:nil "~%bool initialized~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_arm_init-response)))
  "Returns full string definition for message of type 'pose_arm_init-response"
  (cl:format cl:nil "~%bool initialized~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_arm_init-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_arm_init-response>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_arm_init-response
    (cl:cons ':initialized (initialized msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'pose_arm_init)))
  'pose_arm_init-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'pose_arm_init)))
  'pose_arm_init-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_arm_init)))
  "Returns string type for a service object of type '<pose_arm_init>"
  "tactile_servo_srvs/pose_arm_init")