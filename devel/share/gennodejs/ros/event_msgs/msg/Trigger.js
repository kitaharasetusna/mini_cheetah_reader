// Auto-generated. Do not edit!

// (in-package event_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Trigger {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Trigger
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Trigger
    let len;
    let data = new Trigger(null);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'event_msgs/Trigger';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df02cf07523e10b927e1abf4e9af62cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A DVS trigger
    
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Trigger(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

// Constants for message
Trigger.Constants = {
  TRIGGER_TYPE_TIMESTAMP_RESET: 0,
  TRIGGER_TYPE_EXTERNAL_SIGNAL_RISING_EDGE: 1,
  TRIGGER_TYPE_EXTERNAL_SIGNAL_FALLING_EDGE: 2,
  TRIGGER_TYPE_EXTERNAL_SIGNAL_PULSE: 3,
  TRIGGER_TYPE_EXTERNAL_GENERATOR_RISING_EDGE: 4,
  TRIGGER_TYPE_EXTERNAL_GENERATOR_FALLING_EDGE: 5,
  TRIGGER_TYPE_APS_FRAME_START: 6,
  TRIGGER_TYPE_APS_FRAME_END: 7,
  TRIGGER_APS_EXPOSURE_START: 8,
  TRIGGER_APS_EXPOSURE_END: 9,
}

module.exports = Trigger;
