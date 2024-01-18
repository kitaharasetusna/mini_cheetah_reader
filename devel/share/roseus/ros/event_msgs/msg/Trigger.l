;; Auto-generated. Do not edit!


(when (boundp 'event_msgs::Trigger)
  (if (not (find-package "EVENT_MSGS"))
    (make-package "EVENT_MSGS"))
  (shadow 'Trigger (find-package "EVENT_MSGS")))
(unless (find-package "EVENT_MSGS::TRIGGER")
  (make-package "EVENT_MSGS::TRIGGER"))

(in-package "ROS")
;;//! \htmlinclude Trigger.msg.html


(intern "*TRIGGER_TYPE_TIMESTAMP_RESET*" (find-package "EVENT_MSGS::TRIGGER"))
(shadow '*TRIGGER_TYPE_TIMESTAMP_RESET* (find-package "EVENT_MSGS::TRIGGER"))
(defconstant event_msgs::Trigger::*TRIGGER_TYPE_TIMESTAMP_RESET* 0)
(intern "*TRIGGER_TYPE_EXTERNAL_SIGNAL_RISING_EDGE*" (find-package "EVENT_MSGS::TRIGGER"))
(shadow '*TRIGGER_TYPE_EXTERNAL_SIGNAL_RISING_EDGE* (find-package "EVENT_MSGS::TRIGGER"))
(defconstant event_msgs::Trigger::*TRIGGER_TYPE_EXTERNAL_SIGNAL_RISING_EDGE* 1)
(intern "*TRIGGER_TYPE_EXTERNAL_SIGNAL_FALLING_EDGE*" (find-package "EVENT_MSGS::TRIGGER"))
(shadow '*TRIGGER_TYPE_EXTERNAL_SIGNAL_FALLING_EDGE* (find-package "EVENT_MSGS::TRIGGER"))
(defconstant event_msgs::Trigger::*TRIGGER_TYPE_EXTERNAL_SIGNAL_FALLING_EDGE* 2)
(intern "*TRIGGER_TYPE_EXTERNAL_SIGNAL_PULSE*" (find-package "EVENT_MSGS::TRIGGER"))
(shadow '*TRIGGER_TYPE_EXTERNAL_SIGNAL_PULSE* (find-package "EVENT_MSGS::TRIGGER"))
(defconstant event_msgs::Trigger::*TRIGGER_TYPE_EXTERNAL_SIGNAL_PULSE* 3)
(intern "*TRIGGER_TYPE_EXTERNAL_GENERATOR_RISING_EDGE*" (find-package "EVENT_MSGS::TRIGGER"))
(shadow '*TRIGGER_TYPE_EXTERNAL_GENERATOR_RISING_EDGE* (find-package "EVENT_MSGS::TRIGGER"))
(defconstant event_msgs::Trigger::*TRIGGER_TYPE_EXTERNAL_GENERATOR_RISING_EDGE* 4)
(intern "*TRIGGER_TYPE_EXTERNAL_GENERATOR_FALLING_EDGE*" (find-package "EVENT_MSGS::TRIGGER"))
(shadow '*TRIGGER_TYPE_EXTERNAL_GENERATOR_FALLING_EDGE* (find-package "EVENT_MSGS::TRIGGER"))
(defconstant event_msgs::Trigger::*TRIGGER_TYPE_EXTERNAL_GENERATOR_FALLING_EDGE* 5)
(intern "*TRIGGER_TYPE_APS_FRAME_START*" (find-package "EVENT_MSGS::TRIGGER"))
(shadow '*TRIGGER_TYPE_APS_FRAME_START* (find-package "EVENT_MSGS::TRIGGER"))
(defconstant event_msgs::Trigger::*TRIGGER_TYPE_APS_FRAME_START* 6)
(intern "*TRIGGER_TYPE_APS_FRAME_END*" (find-package "EVENT_MSGS::TRIGGER"))
(shadow '*TRIGGER_TYPE_APS_FRAME_END* (find-package "EVENT_MSGS::TRIGGER"))
(defconstant event_msgs::Trigger::*TRIGGER_TYPE_APS_FRAME_END* 7)
(intern "*TRIGGER_APS_EXPOSURE_START*" (find-package "EVENT_MSGS::TRIGGER"))
(shadow '*TRIGGER_APS_EXPOSURE_START* (find-package "EVENT_MSGS::TRIGGER"))
(defconstant event_msgs::Trigger::*TRIGGER_APS_EXPOSURE_START* 8)
(intern "*TRIGGER_APS_EXPOSURE_END*" (find-package "EVENT_MSGS::TRIGGER"))
(shadow '*TRIGGER_APS_EXPOSURE_END* (find-package "EVENT_MSGS::TRIGGER"))
(defconstant event_msgs::Trigger::*TRIGGER_APS_EXPOSURE_END* 9)
(defclass event_msgs::Trigger
  :super ros::object
  :slots (_type _timestamp ))

(defmethod event_msgs::Trigger
  (:init
   (&key
    ((:type __type) 0)
    ((:timestamp __timestamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _timestamp __timestamp)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; int8 _type
    1
    ;; time _timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _type
       (write-byte _type s)
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get event_msgs::Trigger :md5sum-) "df02cf07523e10b927e1abf4e9af62cf")
(setf (get event_msgs::Trigger :datatype-) "event_msgs/Trigger")
(setf (get event_msgs::Trigger :definition-)
      "# A DVS trigger

# Numeric value representing the type of trigger signal received
int8 type
# Time of occurence
time timestamp

# Below are constant numeric values describing eah type of trigger
# A timestamp reset occurred.
int8 TRIGGER_TYPE_TIMESTAMP_RESET=0

# A rising edge was detected (External Input module on device).
int8 TRIGGER_TYPE_EXTERNAL_SIGNAL_RISING_EDGE=1

# A falling edge was detected (External Input module on device).
int8 TRIGGER_TYPE_EXTERNAL_SIGNAL_FALLING_EDGE=2

# A pulse was detected (External Input module on device).
int8 TRIGGER_TYPE_EXTERNAL_SIGNAL_PULSE=3

# A rising edge was generated (External Generator module on device).
int8 TRIGGER_TYPE_EXTERNAL_GENERATOR_RISING_EDGE=4

# A falling edge was generated (External Generator module on device).
int8 TRIGGER_TYPE_EXTERNAL_GENERATOR_FALLING_EDGE=5

# An APS frame capture has started (Frame Event will follow).
int8 TRIGGER_TYPE_APS_FRAME_START=6

# An APS frame capture has completed (Frame Event is contemporary).
int8 TRIGGER_TYPE_APS_FRAME_END=7

# An APS frame exposure has started (Frame Event will follow).
int8 TRIGGER_APS_EXPOSURE_START=8

# An APS frame exposure has completed (Frame Event will follow).
int8 TRIGGER_APS_EXPOSURE_END=9


")



(provide :event_msgs/Trigger "df02cf07523e10b927e1abf4e9af62cf")


