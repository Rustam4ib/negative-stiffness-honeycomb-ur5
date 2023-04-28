; Auto-generated. Do not edit!


(cl:in-package tactile_servo_srvs-srv)


;//! \htmlinclude select_matrix-request.msg.html

(cl:defclass <select_matrix-request> (roslisp-msg-protocol:ros-message)
  ((copx
    :reader copx
    :initarg :copx
    :type cl:integer
    :initform 0)
   (copy
    :reader copy
    :initarg :copy
    :type cl:integer
    :initform 0)
   (force
    :reader force
    :initarg :force
    :type cl:integer
    :initform 0)
   (cocx
    :reader cocx
    :initarg :cocx
    :type cl:integer
    :initform 0)
   (cocy
    :reader cocy
    :initarg :cocy
    :type cl:integer
    :initform 0)
   (orient
    :reader orient
    :initarg :orient
    :type cl:integer
    :initform 0))
)

(cl:defclass select_matrix-request (<select_matrix-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <select_matrix-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'select_matrix-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_srvs-srv:<select_matrix-request> is deprecated: use tactile_servo_srvs-srv:select_matrix-request instead.")))

(cl:ensure-generic-function 'copx-val :lambda-list '(m))
(cl:defmethod copx-val ((m <select_matrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:copx-val is deprecated.  Use tactile_servo_srvs-srv:copx instead.")
  (copx m))

(cl:ensure-generic-function 'copy-val :lambda-list '(m))
(cl:defmethod copy-val ((m <select_matrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:copy-val is deprecated.  Use tactile_servo_srvs-srv:copy instead.")
  (copy m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <select_matrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:force-val is deprecated.  Use tactile_servo_srvs-srv:force instead.")
  (force m))

(cl:ensure-generic-function 'cocx-val :lambda-list '(m))
(cl:defmethod cocx-val ((m <select_matrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:cocx-val is deprecated.  Use tactile_servo_srvs-srv:cocx instead.")
  (cocx m))

(cl:ensure-generic-function 'cocy-val :lambda-list '(m))
(cl:defmethod cocy-val ((m <select_matrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:cocy-val is deprecated.  Use tactile_servo_srvs-srv:cocy instead.")
  (cocy m))

(cl:ensure-generic-function 'orient-val :lambda-list '(m))
(cl:defmethod orient-val ((m <select_matrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:orient-val is deprecated.  Use tactile_servo_srvs-srv:orient instead.")
  (orient m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <select_matrix-request>) ostream)
  "Serializes a message object of type '<select_matrix-request>"
  (cl:let* ((signed (cl:slot-value msg 'copx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'copy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'force)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cocx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cocy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'orient)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <select_matrix-request>) istream)
  "Deserializes a message object of type '<select_matrix-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'copx) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'copy) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'force) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cocx) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cocy) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'orient) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<select_matrix-request>)))
  "Returns string type for a service object of type '<select_matrix-request>"
  "tactile_servo_srvs/select_matrixRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'select_matrix-request)))
  "Returns string type for a service object of type 'select_matrix-request"
  "tactile_servo_srvs/select_matrixRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<select_matrix-request>)))
  "Returns md5sum for a message object of type '<select_matrix-request>"
  "477eddf35d1c9126254cd3a55ca19343")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'select_matrix-request)))
  "Returns md5sum for a message object of type 'select_matrix-request"
  "477eddf35d1c9126254cd3a55ca19343")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<select_matrix-request>)))
  "Returns full string definition for message of type '<select_matrix-request>"
  (cl:format cl:nil "int64 copx~%int64 copy~%int64 force~%int64 cocx~%int64 cocy~%int64 orient~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'select_matrix-request)))
  "Returns full string definition for message of type 'select_matrix-request"
  (cl:format cl:nil "int64 copx~%int64 copy~%int64 force~%int64 cocx~%int64 cocy~%int64 orient~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <select_matrix-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <select_matrix-request>))
  "Converts a ROS message object to a list"
  (cl:list 'select_matrix-request
    (cl:cons ':copx (copx msg))
    (cl:cons ':copy (copy msg))
    (cl:cons ':force (force msg))
    (cl:cons ':cocx (cocx msg))
    (cl:cons ':cocy (cocy msg))
    (cl:cons ':orient (orient msg))
))
;//! \htmlinclude select_matrix-response.msg.html

(cl:defclass <select_matrix-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:integer
    :initform 0))
)

(cl:defclass select_matrix-response (<select_matrix-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <select_matrix-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'select_matrix-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_srvs-srv:<select_matrix-response> is deprecated: use tactile_servo_srvs-srv:select_matrix-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <select_matrix-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_srvs-srv:success-val is deprecated.  Use tactile_servo_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <select_matrix-response>) ostream)
  "Serializes a message object of type '<select_matrix-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <select_matrix-response>) istream)
  "Deserializes a message object of type '<select_matrix-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<select_matrix-response>)))
  "Returns string type for a service object of type '<select_matrix-response>"
  "tactile_servo_srvs/select_matrixResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'select_matrix-response)))
  "Returns string type for a service object of type 'select_matrix-response"
  "tactile_servo_srvs/select_matrixResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<select_matrix-response>)))
  "Returns md5sum for a message object of type '<select_matrix-response>"
  "477eddf35d1c9126254cd3a55ca19343")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'select_matrix-response)))
  "Returns md5sum for a message object of type 'select_matrix-response"
  "477eddf35d1c9126254cd3a55ca19343")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<select_matrix-response>)))
  "Returns full string definition for message of type '<select_matrix-response>"
  (cl:format cl:nil "~%int64 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'select_matrix-response)))
  "Returns full string definition for message of type 'select_matrix-response"
  (cl:format cl:nil "~%int64 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <select_matrix-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <select_matrix-response>))
  "Converts a ROS message object to a list"
  (cl:list 'select_matrix-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'select_matrix)))
  'select_matrix-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'select_matrix)))
  'select_matrix-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'select_matrix)))
  "Returns string type for a service object of type '<select_matrix>"
  "tactile_servo_srvs/select_matrix")