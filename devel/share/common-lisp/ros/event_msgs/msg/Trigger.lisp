; Auto-generated. Do not edit!


(cl:in-package event_msgs-msg)


;//! \htmlinclude Trigger.msg.html

(cl:defclass <Trigger> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0))
)

(cl:defclass Trigger (<Trigger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trigger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trigger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name event_msgs-msg:<Trigger> is deprecated: use event_msgs-msg:Trigger instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Trigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader event_msgs-msg:type-val is deprecated.  Use event_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <Trigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader event_msgs-msg:timestamp-val is deprecated.  Use event_msgs-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Trigger>)))
    "Constants for message type '<Trigger>"
  '((:TRIGGER_TYPE_TIMESTAMP_RESET . 0)
    (:TRIGGER_TYPE_EXTERNAL_SIGNAL_RISING_EDGE . 1)
    (:TRIGGER_TYPE_EXTERNAL_SIGNAL_FALLING_EDGE . 2)
    (:TRIGGER_TYPE_EXTERNAL_SIGNAL_PULSE . 3)
    (:TRIGGER_TYPE_EXTERNAL_GENERATOR_RISING_EDGE . 4)
    (:TRIGGER_TYPE_EXTERNAL_GENERATOR_FALLING_EDGE . 5)
    (:TRIGGER_TYPE_APS_FRAME_START . 6)
    (:TRIGGER_TYPE_APS_FRAME_END . 7)
    (:TRIGGER_APS_EXPOSURE_START . 8)
    (:TRIGGER_APS_EXPOSURE_END . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Trigger)))
    "Constants for message type 'Trigger"
  '((:TRIGGER_TYPE_TIMESTAMP_RESET . 0)
    (:TRIGGER_TYPE_EXTERNAL_SIGNAL_RISING_EDGE . 1)
    (:TRIGGER_TYPE_EXTERNAL_SIGNAL_FALLING_EDGE . 2)
    (:TRIGGER_TYPE_EXTERNAL_SIGNAL_PULSE . 3)
    (:TRIGGER_TYPE_EXTERNAL_GENERATOR_RISING_EDGE . 4)
    (:TRIGGER_TYPE_EXTERNAL_GENERATOR_FALLING_EDGE . 5)
    (:TRIGGER_TYPE_APS_FRAME_START . 6)
    (:TRIGGER_TYPE_APS_FRAME_END . 7)
    (:TRIGGER_APS_EXPOSURE_START . 8)
    (:TRIGGER_APS_EXPOSURE_END . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trigger>) ostream)
  "Serializes a message object of type '<Trigger>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trigger>) istream)
  "Deserializes a message object of type '<Trigger>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trigger>)))
  "Returns string type for a message object of type '<Trigger>"
  "event_msgs/Trigger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trigger)))
  "Returns string type for a message object of type 'Trigger"
  "event_msgs/Trigger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trigger>)))
  "Returns md5sum for a message object of type '<Trigger>"
  "df02cf07523e10b927e1abf4e9af62cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trigger)))
  "Returns md5sum for a message object of type 'Trigger"
  "df02cf07523e10b927e1abf4e9af62cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trigger>)))
  "Returns full string definition for message of type '<Trigger>"
  (cl:format cl:nil "# A DVS trigger~%~%# Numeric value representing the type of trigger signal received~%int8 type~%# Time of occurence~%time timestamp~%~%# Below are constant numeric values describing eah type of trigger~%# A timestamp reset occurred.~%int8 TRIGGER_TYPE_TIMESTAMP_RESET=0~%~%# A rising edge was detected (External Input module on device).~%int8 TRIGGER_TYPE_EXTERNAL_SIGNAL_RISING_EDGE=1~%~%# A falling edge was detected (External Input module on device).~%int8 TRIGGER_TYPE_EXTERNAL_SIGNAL_FALLING_EDGE=2~%~%# A pulse was detected (External Input module on device).~%int8 TRIGGER_TYPE_EXTERNAL_SIGNAL_PULSE=3~%~%# A rising edge was generated (External Generator module on device).~%int8 TRIGGER_TYPE_EXTERNAL_GENERATOR_RISING_EDGE=4~%~%# A falling edge was generated (External Generator module on device).~%int8 TRIGGER_TYPE_EXTERNAL_GENERATOR_FALLING_EDGE=5~%~%# An APS frame capture has started (Frame Event will follow).~%int8 TRIGGER_TYPE_APS_FRAME_START=6~%~%# An APS frame capture has completed (Frame Event is contemporary).~%int8 TRIGGER_TYPE_APS_FRAME_END=7~%~%# An APS frame exposure has started (Frame Event will follow).~%int8 TRIGGER_APS_EXPOSURE_START=8~%~%# An APS frame exposure has completed (Frame Event will follow).~%int8 TRIGGER_APS_EXPOSURE_END=9~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trigger)))
  "Returns full string definition for message of type 'Trigger"
  (cl:format cl:nil "# A DVS trigger~%~%# Numeric value representing the type of trigger signal received~%int8 type~%# Time of occurence~%time timestamp~%~%# Below are constant numeric values describing eah type of trigger~%# A timestamp reset occurred.~%int8 TRIGGER_TYPE_TIMESTAMP_RESET=0~%~%# A rising edge was detected (External Input module on device).~%int8 TRIGGER_TYPE_EXTERNAL_SIGNAL_RISING_EDGE=1~%~%# A falling edge was detected (External Input module on device).~%int8 TRIGGER_TYPE_EXTERNAL_SIGNAL_FALLING_EDGE=2~%~%# A pulse was detected (External Input module on device).~%int8 TRIGGER_TYPE_EXTERNAL_SIGNAL_PULSE=3~%~%# A rising edge was generated (External Generator module on device).~%int8 TRIGGER_TYPE_EXTERNAL_GENERATOR_RISING_EDGE=4~%~%# A falling edge was generated (External Generator module on device).~%int8 TRIGGER_TYPE_EXTERNAL_GENERATOR_FALLING_EDGE=5~%~%# An APS frame capture has started (Frame Event will follow).~%int8 TRIGGER_TYPE_APS_FRAME_START=6~%~%# An APS frame capture has completed (Frame Event is contemporary).~%int8 TRIGGER_TYPE_APS_FRAME_END=7~%~%# An APS frame exposure has started (Frame Event will follow).~%int8 TRIGGER_APS_EXPOSURE_START=8~%~%# An APS frame exposure has completed (Frame Event will follow).~%int8 TRIGGER_APS_EXPOSURE_END=9~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trigger>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trigger>))
  "Converts a ROS message object to a list"
  (cl:list 'Trigger
    (cl:cons ':type (type msg))
    (cl:cons ':timestamp (timestamp msg))
))
