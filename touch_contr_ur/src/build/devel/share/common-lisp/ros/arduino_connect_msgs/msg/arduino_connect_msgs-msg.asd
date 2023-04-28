
(cl:in-package :asdf)

(defsystem "arduino_connect_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ser_el_sensor_read" :depends-on ("_package_ser_el_sensor_read"))
    (:file "_package_ser_el_sensor_read" :depends-on ("_package"))
  ))