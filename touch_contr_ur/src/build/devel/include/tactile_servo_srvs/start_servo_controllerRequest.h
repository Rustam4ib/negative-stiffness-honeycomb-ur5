// Generated by gencpp from file tactile_servo_srvs/start_servo_controllerRequest.msg
// DO NOT EDIT!


#ifndef TACTILE_SERVO_SRVS_MESSAGE_START_SERVO_CONTROLLERREQUEST_H
#define TACTILE_SERVO_SRVS_MESSAGE_START_SERVO_CONTROLLERREQUEST_H


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
struct start_servo_controllerRequest_
{
  typedef start_servo_controllerRequest_<ContainerAllocator> Type;

  start_servo_controllerRequest_()
    : begin_controller(false)  {
    }
  start_servo_controllerRequest_(const ContainerAllocator& _alloc)
    : begin_controller(false)  {
  (void)_alloc;
    }



   typedef uint8_t _begin_controller_type;
  _begin_controller_type begin_controller;




  typedef boost::shared_ptr< ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator> const> ConstPtr;

}; // struct start_servo_controllerRequest_

typedef ::tactile_servo_srvs::start_servo_controllerRequest_<std::allocator<void> > start_servo_controllerRequest;

typedef boost::shared_ptr< ::tactile_servo_srvs::start_servo_controllerRequest > start_servo_controllerRequestPtr;
typedef boost::shared_ptr< ::tactile_servo_srvs::start_servo_controllerRequest const> start_servo_controllerRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "87b616c79208197b3869826e5ab2e1f9";
  }

  static const char* value(const ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x87b616c79208197bULL;
  static const uint64_t static_value2 = 0x3869826e5ab2e1f9ULL;
};

template<class ContainerAllocator>
struct DataType< ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tactile_servo_srvs/start_servo_controllerRequest";
  }

  static const char* value(const ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool begin_controller\n\
\n\
";
  }

  static const char* value(const ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.begin_controller);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct start_servo_controllerRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tactile_servo_srvs::start_servo_controllerRequest_<ContainerAllocator>& v)
  {
    s << indent << "begin_controller: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.begin_controller);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TACTILE_SERVO_SRVS_MESSAGE_START_SERVO_CONTROLLERREQUEST_H
