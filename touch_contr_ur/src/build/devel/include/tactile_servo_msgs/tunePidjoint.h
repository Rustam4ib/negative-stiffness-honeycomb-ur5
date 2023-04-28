// Generated by gencpp from file tactile_servo_msgs/tunePidjoint.msg
// DO NOT EDIT!


#ifndef TACTILE_SERVO_MSGS_MESSAGE_TUNEPIDJOINT_H
#define TACTILE_SERVO_MSGS_MESSAGE_TUNEPIDJOINT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace tactile_servo_msgs
{
template <class ContainerAllocator>
struct tunePidjoint_
{
  typedef tunePidjoint_<ContainerAllocator> Type;

  tunePidjoint_()
    : header()
    , err_in(0.0)
    , err_out(0.0)
    , dt(0.0)
    , val_now(0.0)
    , val_new(0.0)  {
    }
  tunePidjoint_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , err_in(0.0)
    , err_out(0.0)
    , dt(0.0)
    , val_now(0.0)
    , val_new(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _err_in_type;
  _err_in_type err_in;

   typedef double _err_out_type;
  _err_out_type err_out;

   typedef double _dt_type;
  _dt_type dt;

   typedef double _val_now_type;
  _val_now_type val_now;

   typedef double _val_new_type;
  _val_new_type val_new;




  typedef boost::shared_ptr< ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator> const> ConstPtr;

}; // struct tunePidjoint_

typedef ::tactile_servo_msgs::tunePidjoint_<std::allocator<void> > tunePidjoint;

typedef boost::shared_ptr< ::tactile_servo_msgs::tunePidjoint > tunePidjointPtr;
typedef boost::shared_ptr< ::tactile_servo_msgs::tunePidjoint const> tunePidjointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tactile_servo_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'tactile_servo_msgs': ['/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a172d7f24dc9bff9c3c39d757afa54e8";
  }

  static const char* value(const ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa172d7f24dc9bff9ULL;
  static const uint64_t static_value2 = 0xc3c39d757afa54e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tactile_servo_msgs/tunePidjoint";
  }

  static const char* value(const ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
float64 err_in\n\
float64 err_out\n\
float64 dt\n\
float64 val_now\n\
float64 val_new\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.err_in);
      stream.next(m.err_out);
      stream.next(m.dt);
      stream.next(m.val_now);
      stream.next(m.val_new);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct tunePidjoint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tactile_servo_msgs::tunePidjoint_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "err_in: ";
    Printer<double>::stream(s, indent + "  ", v.err_in);
    s << indent << "err_out: ";
    Printer<double>::stream(s, indent + "  ", v.err_out);
    s << indent << "dt: ";
    Printer<double>::stream(s, indent + "  ", v.dt);
    s << indent << "val_now: ";
    Printer<double>::stream(s, indent + "  ", v.val_now);
    s << indent << "val_new: ";
    Printer<double>::stream(s, indent + "  ", v.val_new);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TACTILE_SERVO_MSGS_MESSAGE_TUNEPIDJOINT_H