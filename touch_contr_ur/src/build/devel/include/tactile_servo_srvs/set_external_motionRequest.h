// Generated by gencpp from file tactile_servo_srvs/set_external_motionRequest.msg
// DO NOT EDIT!


#ifndef TACTILE_SERVO_SRVS_MESSAGE_SET_EXTERNAL_MOTIONREQUEST_H
#define TACTILE_SERVO_SRVS_MESSAGE_SET_EXTERNAL_MOTIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tactile_servo_srvs
{
template <class ContainerAllocator>
struct set_external_motionRequest_
{
  typedef set_external_motionRequest_<ContainerAllocator> Type;

  set_external_motionRequest_()
    : delta_x(0.0)
    , delta_y(0.0)
    , delta_z(0.0)
    , delta_wx(0.0)
    , delta_wy(0.0)
    , delta_wz(0.0)  {
    }
  set_external_motionRequest_(const ContainerAllocator& _alloc)
    : delta_x(0.0)
    , delta_y(0.0)
    , delta_z(0.0)
    , delta_wx(0.0)
    , delta_wy(0.0)
    , delta_wz(0.0)  {
  (void)_alloc;
    }



   typedef double _delta_x_type;
  _delta_x_type delta_x;

   typedef double _delta_y_type;
  _delta_y_type delta_y;

   typedef double _delta_z_type;
  _delta_z_type delta_z;

   typedef double _delta_wx_type;
  _delta_wx_type delta_wx;

   typedef double _delta_wy_type;
  _delta_wy_type delta_wy;

   typedef double _delta_wz_type;
  _delta_wz_type delta_wz;




  typedef boost::shared_ptr< ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct set_external_motionRequest_

typedef ::tactile_servo_srvs::set_external_motionRequest_<std::allocator<void> > set_external_motionRequest;

typedef boost::shared_ptr< ::tactile_servo_srvs::set_external_motionRequest > set_external_motionRequestPtr;
typedef boost::shared_ptr< ::tactile_servo_srvs::set_external_motionRequest const> set_external_motionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tactile_servo_srvs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "69dd10fc61d44b5c035de881c7b9fa3f";
  }

  static const char* value(const ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x69dd10fc61d44b5cULL;
  static const uint64_t static_value2 = 0x035de881c7b9fa3fULL;
};

template<class ContainerAllocator>
struct DataType< ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tactile_servo_srvs/set_external_motionRequest";
  }

  static const char* value(const ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 delta_x\n\
float64 delta_y\n\
float64 delta_z\n\
float64 delta_wx\n\
float64 delta_wy\n\
float64 delta_wz\n\
";
  }

  static const char* value(const ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.delta_x);
      stream.next(m.delta_y);
      stream.next(m.delta_z);
      stream.next(m.delta_wx);
      stream.next(m.delta_wy);
      stream.next(m.delta_wz);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct set_external_motionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tactile_servo_srvs::set_external_motionRequest_<ContainerAllocator>& v)
  {
    s << indent << "delta_x: ";
    Printer<double>::stream(s, indent + "  ", v.delta_x);
    s << indent << "delta_y: ";
    Printer<double>::stream(s, indent + "  ", v.delta_y);
    s << indent << "delta_z: ";
    Printer<double>::stream(s, indent + "  ", v.delta_z);
    s << indent << "delta_wx: ";
    Printer<double>::stream(s, indent + "  ", v.delta_wx);
    s << indent << "delta_wy: ";
    Printer<double>::stream(s, indent + "  ", v.delta_wy);
    s << indent << "delta_wz: ";
    Printer<double>::stream(s, indent + "  ", v.delta_wz);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TACTILE_SERVO_SRVS_MESSAGE_SET_EXTERNAL_MOTIONREQUEST_H
