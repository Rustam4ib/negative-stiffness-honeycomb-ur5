; Auto-generated. Do not edit!


(cl:in-package arduino_connect_msgs-msg)


;//! \htmlinclude ser_el_sensor_read.msg.html

(cl:defclass <ser_el_sensor_read> (roslisp-msg-protocol:ros-message)
  ((adc0
    :reader adc0
    :initarg :adc0
    :type cl:fixnum
    :initform 0)
   (adc1
    :reader adc1
    :initarg :adc1
    :type cl:fixnum
    :initform 0)
   (adc2
    :reader adc2
    :initarg :adc2
    :type cl:fixnum
    :initform 0)
   (adc3
    :reader adc3
    :initarg :adc3
    :type cl:fixnum
    :initform 0)
   (adc4
    :reader adc4
    :initarg :adc4
    :type cl:fixnum
    :initform 0)
   (adc5
    :reader adc5
    :initarg :adc5
    :type cl:fixnum
    :initform 0)
   (adc6
    :reader adc6
    :initarg :adc6
    :type cl:fixnum
    :initform 0)
   (adc7
    :reader adc7
    :initarg :adc7
    :type cl:fixnum
    :initform 0)
   (adc8
    :reader adc8
    :initarg :adc8
    :type cl:fixnum
    :initform 0)
   (adc9
    :reader adc9
    :initarg :adc9
    :type cl:fixnum
    :initform 0)
   (adc10
    :reader adc10
    :initarg :adc10
    :type cl:fixnum
    :initform 0)
   (adc11
    :reader adc11
    :initarg :adc11
    :type cl:fixnum
    :initform 0)
   (adc12
    :reader adc12
    :initarg :adc12
    :type cl:fixnum
    :initform 0)
   (adc13
    :reader adc13
    :initarg :adc13
    :type cl:fixnum
    :initform 0)
   (adc14
    :reader adc14
    :initarg :adc14
    :type cl:fixnum
    :initform 0)
   (adc15
    :reader adc15
    :initarg :adc15
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ser_el_sensor_read (<ser_el_sensor_read>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ser_el_sensor_read>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ser_el_sensor_read)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arduino_connect_msgs-msg:<ser_el_sensor_read> is deprecated: use arduino_connect_msgs-msg:ser_el_sensor_read instead.")))

(cl:ensure-generic-function 'adc0-val :lambda-list '(m))
(cl:defmethod adc0-val ((m <ser_el_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_connect_msgs-msg:adc0-val is deprecated.  Use arduino_connect_msgs-msg:adc0 instead.")
  (adc0 m))

(cl:ensure-generic-function 'adc1-val :lambda-list '(m))
(cl:defmethod adc1-val ((m <ser_el_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_connect_msgs-msg:adc1-val is deprecated.  Use arduino_connect_msgs-msg:adc1 instead.")
  (adc1 m))

(cl:ensure-generic-function 'adc2-val :lambda-list '(m))
(cl:defmethod adc2-val ((m <ser_el_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_connect_msgs-msg:adc2-val is deprecated.  Use arduino_connect_msgs-msg:adc2 instead.")
  (adc2 m))

(cl:ensure-generic-function 'adc3-val :lambda-list '(m))
(cl:defmethod adc3-val ((m <ser_el_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_connect_msgs-msg:adc3-val is deprecated.  Use arduino_connect_msgs-msg:adc3 instead.")
  (adc3 m))

(cl:ensure-generic-function 'adc4-val :lambda-list '(m))
(cl:defmethod adc4-val ((m <ser_el_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_connect_msgs-msg:adc4-val is deprecated.  Use arduino_connect_msgs-msg:adc4 instead.")
  (adc4 m))

(cl:ensure-generic-function 'adc5-val :lambda-list '(m))
(cl:defmethod adc5-val ((m <ser_el_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_connect_msgs-msg:adc5-val is deprecated.  Use arduino_connect_msgs-msg:adc5 instead.")
  (adc5 m))

(cl:ensure-generic-function 'adc6-val :lambda-list '(m))
(cl:defmethod adc6-val ((m <ser_el_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_connect_msgs-msg:adc6-val is deprecated.  Use arduino_connect_msgs-msg:adc6 instead.")
  (adc6 m))

(cl:ensure-generic-function 'adc7-val :lambda-list '(m))
(cl:defmethod adc7-val ((m <ser_el_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_connect_msgs-msg:adc7-val is deprecated.  Use arduino_connect_msgs-msg:adc7 instead.")
  (adc7 m))

(cl:ensure-generic-function 'adc8-val :lambda-list '(m))
(cl:defmethod adc8-val ((m <ser_el_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_connect_msgs-msg:adc8-val is deprecated.  Use arduino_connect_msgs-msg:adc8 instead.")
  (adc8 m))

(cl:ensure-generic-function 'adc9-val :lambda-list '(m))
(cl:defmethod adc9-val ((m <ser_el_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_connect_msgs-msg:adc9-val is deprecated.  Use arduino_connect_msgs-msg:adc9 instead.")
  (adc9 m))

(cl:ensure-generic-function 'adc10-val :lambda-list '(m))
(cl:defmethod adc10-val ((m <ser_el_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_connect_msgs-msg:adc10-val is deprecated.  Use arduino_connect_msgs-msg:adc10 instead.")
  (adc10 m))

(cl:ensure-generic-function 'adc11-val :lambda-list '(m))
(cl:defmethod adc11-val ((m <ser_el_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_connect_msgs-msg:adc11-val is deprecated.  Use arduino_connect_msgs-msg:adc11 instead.")
  (adc11 m))

(cl:ensure-generic-function 'adc12-val :lambda-list '(m))
(cl:defmethod adc12-val ((m <ser_el_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_connect_msgs-msg:adc12-val is deprecated.  Use arduino_connect_msgs-msg:adc12 instead.")
  (adc12 m))

(cl:ensure-generic-function 'adc13-val :lambda-list '(m))
(cl:defmethod adc13-val ((m <ser_el_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_connect_msgs-msg:adc13-val is deprecated.  Use arduino_connect_msgs-msg:adc13 instead.")
  (adc13 m))

(cl:ensure-generic-function 'adc14-val :lambda-list '(m))
(cl:defmethod adc14-val ((m <ser_el_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_connect_msgs-msg:adc14-val is deprecated.  Use arduino_connect_msgs-msg:adc14 instead.")
  (adc14 m))

(cl:ensure-generic-function 'adc15-val :lambda-list '(m))
(cl:defmethod adc15-val ((m <ser_el_sensor_read>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_connect_msgs-msg:adc15-val is deprecated.  Use arduino_connect_msgs-msg:adc15 instead.")
  (adc15 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ser_el_sensor_read>) ostream)
  "Serializes a message object of type '<ser_el_sensor_read>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc7)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc7)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc8)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc8)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc9)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc9)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc10)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc10)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc11)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc11)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc12)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc12)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc13)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc13)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc14)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc14)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc15)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc15)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ser_el_sensor_read>) istream)
  "Deserializes a message object of type '<ser_el_sensor_read>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc7)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc7)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc8)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc8)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc9)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc9)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc10)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc10)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc11)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc11)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc12)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc12)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc13)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc13)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc14)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc14)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adc15)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'adc15)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ser_el_sensor_read>)))
  "Returns string type for a message object of type '<ser_el_sensor_read>"
  "arduino_connect_msgs/ser_el_sensor_read")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ser_el_sensor_read)))
  "Returns string type for a message object of type 'ser_el_sensor_read"
  "arduino_connect_msgs/ser_el_sensor_read")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ser_el_sensor_read>)))
  "Returns md5sum for a message object of type '<ser_el_sensor_read>"
  "c28d8cde0db408e55ae28246cf6b4a6b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ser_el_sensor_read)))
  "Returns md5sum for a message object of type 'ser_el_sensor_read"
  "c28d8cde0db408e55ae28246cf6b4a6b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ser_el_sensor_read>)))
  "Returns full string definition for message of type '<ser_el_sensor_read>"
  (cl:format cl:nil "uint16 adc0~%uint16 adc1~%uint16 adc2~%uint16 adc3~%uint16 adc4~%uint16 adc5~%uint16 adc6~%uint16 adc7~%uint16 adc8~%uint16 adc9~%uint16 adc10~%uint16 adc11~%uint16 adc12~%uint16 adc13~%uint16 adc14~%uint16 adc15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ser_el_sensor_read)))
  "Returns full string definition for message of type 'ser_el_sensor_read"
  (cl:format cl:nil "uint16 adc0~%uint16 adc1~%uint16 adc2~%uint16 adc3~%uint16 adc4~%uint16 adc5~%uint16 adc6~%uint16 adc7~%uint16 adc8~%uint16 adc9~%uint16 adc10~%uint16 adc11~%uint16 adc12~%uint16 adc13~%uint16 adc14~%uint16 adc15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ser_el_sensor_read>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ser_el_sensor_read>))
  "Converts a ROS message object to a list"
  (cl:list 'ser_el_sensor_read
    (cl:cons ':adc0 (adc0 msg))
    (cl:cons ':adc1 (adc1 msg))
    (cl:cons ':adc2 (adc2 msg))
    (cl:cons ':adc3 (adc3 msg))
    (cl:cons ':adc4 (adc4 msg))
    (cl:cons ':adc5 (adc5 msg))
    (cl:cons ':adc6 (adc6 msg))
    (cl:cons ':adc7 (adc7 msg))
    (cl:cons ':adc8 (adc8 msg))
    (cl:cons ':adc9 (adc9 msg))
    (cl:cons ':adc10 (adc10 msg))
    (cl:cons ':adc11 (adc11 msg))
    (cl:cons ':adc12 (adc12 msg))
    (cl:cons ':adc13 (adc13 msg))
    (cl:cons ':adc14 (adc14 msg))
    (cl:cons ':adc15 (adc15 msg))
))
