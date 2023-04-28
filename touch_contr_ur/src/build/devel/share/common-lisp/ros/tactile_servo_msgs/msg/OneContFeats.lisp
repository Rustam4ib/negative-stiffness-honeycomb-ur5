; Auto-generated. Do not edit!


(cl:in-package tactile_servo_msgs-msg)


;//! \htmlinclude OneContFeats.msg.html

(cl:defclass <OneContFeats> (roslisp-msg-protocol:ros-message)
  ((centerpressure_x
    :reader centerpressure_x
    :initarg :centerpressure_x
    :type cl:float
    :initform 0.0)
   (centerpressure_y
    :reader centerpressure_y
    :initarg :centerpressure_y
    :type cl:float
    :initform 0.0)
   (contactForce
    :reader contactForce
    :initarg :contactForce
    :type cl:float
    :initform 0.0)
   (centerContact_x
    :reader centerContact_x
    :initarg :centerContact_x
    :type cl:float
    :initform 0.0)
   (centerContact_y
    :reader centerContact_y
    :initarg :centerContact_y
    :type cl:float
    :initform 0.0)
   (contactOrientation
    :reader contactOrientation
    :initarg :contactOrientation
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
    :initform 0.0)
   (is_contact
    :reader is_contact
    :initarg :is_contact
    :type cl:boolean
    :initform cl:nil)
   (num_pixels_contact
    :reader num_pixels_contact
    :initarg :num_pixels_contact
    :type cl:integer
    :initform 0)
   (highest_force_cell
    :reader highest_force_cell
    :initarg :highest_force_cell
    :type cl:float
    :initform 0.0)
   (real_total_force
    :reader real_total_force
    :initarg :real_total_force
    :type cl:float
    :initform 0.0))
)

(cl:defclass OneContFeats (<OneContFeats>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OneContFeats>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OneContFeats)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactile_servo_msgs-msg:<OneContFeats> is deprecated: use tactile_servo_msgs-msg:OneContFeats instead.")))

(cl:ensure-generic-function 'centerpressure_x-val :lambda-list '(m))
(cl:defmethod centerpressure_x-val ((m <OneContFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:centerpressure_x-val is deprecated.  Use tactile_servo_msgs-msg:centerpressure_x instead.")
  (centerpressure_x m))

(cl:ensure-generic-function 'centerpressure_y-val :lambda-list '(m))
(cl:defmethod centerpressure_y-val ((m <OneContFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:centerpressure_y-val is deprecated.  Use tactile_servo_msgs-msg:centerpressure_y instead.")
  (centerpressure_y m))

(cl:ensure-generic-function 'contactForce-val :lambda-list '(m))
(cl:defmethod contactForce-val ((m <OneContFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:contactForce-val is deprecated.  Use tactile_servo_msgs-msg:contactForce instead.")
  (contactForce m))

(cl:ensure-generic-function 'centerContact_x-val :lambda-list '(m))
(cl:defmethod centerContact_x-val ((m <OneContFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:centerContact_x-val is deprecated.  Use tactile_servo_msgs-msg:centerContact_x instead.")
  (centerContact_x m))

(cl:ensure-generic-function 'centerContact_y-val :lambda-list '(m))
(cl:defmethod centerContact_y-val ((m <OneContFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:centerContact_y-val is deprecated.  Use tactile_servo_msgs-msg:centerContact_y instead.")
  (centerContact_y m))

(cl:ensure-generic-function 'contactOrientation-val :lambda-list '(m))
(cl:defmethod contactOrientation-val ((m <OneContFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:contactOrientation-val is deprecated.  Use tactile_servo_msgs-msg:contactOrientation instead.")
  (contactOrientation m))

(cl:ensure-generic-function 'zmp_x-val :lambda-list '(m))
(cl:defmethod zmp_x-val ((m <OneContFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:zmp_x-val is deprecated.  Use tactile_servo_msgs-msg:zmp_x instead.")
  (zmp_x m))

(cl:ensure-generic-function 'zmp_y-val :lambda-list '(m))
(cl:defmethod zmp_y-val ((m <OneContFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:zmp_y-val is deprecated.  Use tactile_servo_msgs-msg:zmp_y instead.")
  (zmp_y m))

(cl:ensure-generic-function 'is_contact-val :lambda-list '(m))
(cl:defmethod is_contact-val ((m <OneContFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:is_contact-val is deprecated.  Use tactile_servo_msgs-msg:is_contact instead.")
  (is_contact m))

(cl:ensure-generic-function 'num_pixels_contact-val :lambda-list '(m))
(cl:defmethod num_pixels_contact-val ((m <OneContFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:num_pixels_contact-val is deprecated.  Use tactile_servo_msgs-msg:num_pixels_contact instead.")
  (num_pixels_contact m))

(cl:ensure-generic-function 'highest_force_cell-val :lambda-list '(m))
(cl:defmethod highest_force_cell-val ((m <OneContFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:highest_force_cell-val is deprecated.  Use tactile_servo_msgs-msg:highest_force_cell instead.")
  (highest_force_cell m))

(cl:ensure-generic-function 'real_total_force-val :lambda-list '(m))
(cl:defmethod real_total_force-val ((m <OneContFeats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactile_servo_msgs-msg:real_total_force-val is deprecated.  Use tactile_servo_msgs-msg:real_total_force instead.")
  (real_total_force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OneContFeats>) ostream)
  "Serializes a message object of type '<OneContFeats>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'centerpressure_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'centerpressure_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'contactForce))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'centerContact_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'centerContact_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'contactOrientation))))
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_contact) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'num_pixels_contact)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'highest_force_cell))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'real_total_force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OneContFeats>) istream)
  "Deserializes a message object of type '<OneContFeats>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'centerpressure_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'centerpressure_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'contactForce) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'centerContact_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'centerContact_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'contactOrientation) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'is_contact) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_pixels_contact) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'highest_force_cell) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'real_total_force) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OneContFeats>)))
  "Returns string type for a message object of type '<OneContFeats>"
  "tactile_servo_msgs/OneContFeats")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OneContFeats)))
  "Returns string type for a message object of type 'OneContFeats"
  "tactile_servo_msgs/OneContFeats")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OneContFeats>)))
  "Returns md5sum for a message object of type '<OneContFeats>"
  "fdece2a38b99c6197914e4ea70b8fffb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OneContFeats)))
  "Returns md5sum for a message object of type 'OneContFeats"
  "fdece2a38b99c6197914e4ea70b8fffb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OneContFeats>)))
  "Returns full string definition for message of type '<OneContFeats>"
  (cl:format cl:nil "float64 centerpressure_x~%float64 centerpressure_y~%float64 contactForce~%float64 centerContact_x~%float64 centerContact_y~%float64 contactOrientation~%float64 zmp_x~%float64 zmp_y~%bool is_contact~%int32 num_pixels_contact~%float64 highest_force_cell~%float64 real_total_force~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OneContFeats)))
  "Returns full string definition for message of type 'OneContFeats"
  (cl:format cl:nil "float64 centerpressure_x~%float64 centerpressure_y~%float64 contactForce~%float64 centerContact_x~%float64 centerContact_y~%float64 contactOrientation~%float64 zmp_x~%float64 zmp_y~%bool is_contact~%int32 num_pixels_contact~%float64 highest_force_cell~%float64 real_total_force~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OneContFeats>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     8
     1
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OneContFeats>))
  "Converts a ROS message object to a list"
  (cl:list 'OneContFeats
    (cl:cons ':centerpressure_x (centerpressure_x msg))
    (cl:cons ':centerpressure_y (centerpressure_y msg))
    (cl:cons ':contactForce (contactForce msg))
    (cl:cons ':centerContact_x (centerContact_x msg))
    (cl:cons ':centerContact_y (centerContact_y msg))
    (cl:cons ':contactOrientation (contactOrientation msg))
    (cl:cons ':zmp_x (zmp_x msg))
    (cl:cons ':zmp_y (zmp_y msg))
    (cl:cons ':is_contact (is_contact msg))
    (cl:cons ':num_pixels_contact (num_pixels_contact msg))
    (cl:cons ':highest_force_cell (highest_force_cell msg))
    (cl:cons ':real_total_force (real_total_force msg))
))
