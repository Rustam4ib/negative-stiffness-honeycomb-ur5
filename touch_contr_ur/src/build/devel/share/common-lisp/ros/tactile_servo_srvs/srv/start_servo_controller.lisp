; Auto-generated. Do not edit!


(cl:in-package tactile_servo_srvs-srv)


;//! \htmlinclude start_servo_controller-request.msg.html

(cl:defclass <start_servo_controller-request> (roslisp-msg-protocol:ros-message)
  ((begin_controller
    :reader begin_controller
    :initarg :begin_controller
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass start_servo_controller-request (<start_servo_controller-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start_servo_controller-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start_servo_controller-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_srvs-srv:<start_servo_controller-request> is deprecated: use tactile_servo_srvs-srv:start_servo_controller-request instead.")))

(cl:ensure-generic-function 'begin_controller-val :lambda-list '(m))
(cl:defmethod begin_controller-val ((m <start_servo_controller-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:begin_controller-val is deprecated.  Use tactile_servo_srvs-srv:begin_controller instead.")
  (begin_controller m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start_servo_controller-request>) ostream)
  "Serializes a message object of type '<start_servo_controller-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'begin_controller) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start_servo_controller-request>) istream)
  "Deserializes a message object of type '<start_servo_controller-request>"
    (cl:setf (cl:slot-value msg 'begin_controller) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start_servo_controller-request>)))
  "Returns string type for a service object of type '<start_servo_controller-request>"
  "tactile_servo_srvs/start_servo_controllerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_servo_controller-request)))
  "Returns string type for a service object of type 'start_servo_controller-request"
  "tactile_servo_srvs/start_servo_controllerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start_servo_controller-request>)))
  "Returns md5sum for a message object of type '<start_servo_controller-request>"
  "e2e21116f5b5b751861cd4a451d33268")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start_servo_controller-request)))
  "Returns md5sum for a message object of type 'start_servo_controller-request"
  "e2e21116f5b5b751861cd4a451d33268")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start_servo_controller-request>)))
  "Returns full string definition for message of type '<start_servo_controller-request>"
  (cl:format cl:nil "bool begin_controller~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start_servo_controller-request)))
  "Returns full string definition for message of type 'start_servo_controller-request"
  (cl:format cl:nil "bool begin_controller~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start_servo_controller-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start_servo_controller-request>))
  "Converts a ROS message object to a list"
  (cl:list 'start_servo_controller-request
    (cl:cons ':begin_controller (begin_controller msg))
))
;//! \htmlinclude start_servo_controller-response.msg.html

(cl:defclass <start_servo_controller-response> (roslisp-msg-protocol:ros-message)
  ((controller_runs
    :reader controller_runs
    :initarg :controller_runs
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass start_servo_controller-response (<start_servo_controller-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start_servo_controller-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start_servo_controller-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_srvs-srv:<start_servo_controller-response> is deprecated: use tactile_servo_srvs-srv:start_servo_controller-response instead.")))

(cl:ensure-generic-function 'controller_runs-val :lambda-list '(m))
(cl:defmethod controller_runs-val ((m <start_servo_controller-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:controller_runs-val is deprecated.  Use tactile_servo_srvs-srv:controller_runs instead.")
  (controller_runs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start_servo_controller-response>) ostream)
  "Serializes a message object of type '<start_servo_controller-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'controller_runs) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start_servo_controller-response>) istream)
  "Deserializes a message object of type '<start_servo_controller-response>"
    (cl:setf (cl:slot-value msg 'controller_runs) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start_servo_controller-response>)))
  "Returns string type for a service object of type '<start_servo_controller-response>"
  "tactile_servo_srvs/start_servo_controllerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_servo_controller-response)))
  "Returns string type for a service object of type 'start_servo_controller-response"
  "tactile_servo_srvs/start_servo_controllerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start_servo_controller-response>)))
  "Returns md5sum for a message object of type '<start_servo_controller-response>"
  "e2e21116f5b5b751861cd4a451d33268")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start_servo_controller-response)))
  "Returns md5sum for a message object of type 'start_servo_controller-response"
  "e2e21116f5b5b751861cd4a451d33268")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start_servo_controller-response>)))
  "Returns full string definition for message of type '<start_servo_controller-response>"
  (cl:format cl:nil "~%bool controller_runs~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start_servo_controller-response)))
  "Returns full string definition for message of type 'start_servo_controller-response"
  (cl:format cl:nil "~%bool controller_runs~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start_servo_controller-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start_servo_controller-response>))
  "Converts a ROS message object to a list"
  (cl:list 'start_servo_controller-response
    (cl:cons ':controller_runs (controller_runs msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'start_servo_controller)))
  'start_servo_controller-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'start_servo_controller)))
  'start_servo_controller-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_servo_controller)))
  "Returns string type for a service object of type '<start_servo_controller>"
  "tactile_servo_srvs/start_servo_controller")