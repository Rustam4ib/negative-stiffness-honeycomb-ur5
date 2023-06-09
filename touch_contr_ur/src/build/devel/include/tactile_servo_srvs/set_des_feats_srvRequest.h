// Generated by gencpp from file tactile_servo_srvs/set_des_feats_srvRequest.msg
// DO NOT EDIT!


#ifndef TACTILE_SERVO_SRVS_MESSAGE_SET_DES_FEATS_SRVREQUEST_H
#define TACTILE_SERVO_SRVS_MESSAGE_SET_DES_FEATS_SRVREQUEST_H


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
struct set_des_feats_srvRequest_
{
  typedef set_des_feats_srvRequest_<ContainerAllocator> Type;

  set_des_feats_srvRequest_()
    : copx(0.0)
    , copy(0.0)
    , force(0.0)
    , cocx(0.0)
    , cocy(0.0)
    , orient(0.0)
    , zmp_x(0.0)
    , zmp_y(0.0)  {
    }
  set_des_feats_srvRequest_(const ContainerAllocator& _alloc)
    : copx(0.0)
    , copy(0.0)
    , force(0.0)
    , cocx(0.0)
    , cocy(0.0)
    , orient(0.0)
    , zmp_x(0.0)
    , zmp_y(0.0)  {
  (void)_alloc;
    }



   typedef double _copx_type;
  _copx_type copx;

   typedef double _copy_type;
  _copy_type copy;

   typedef double _force_type;
  _force_type force;

   typedef double _cocx_type;
  _cocx_type cocx;

   typedef double _cocy_type;
  _cocy_type cocy;

   typedef double _orient_type;
  _orient_type orient;

   typedef double _zmp_x_type;
  _zmp_x_type zmp_x;

   typedef double _zmp_y_type;
  _zmp_y_type zmp_y;




  typedef boost::shared_ptr< ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct set_des_feats_srvRequest_

typedef ::tactile_servo_srvs::set_des_feats_srvRequest_<std::allocator<void> > set_des_feats_srvRequest;

typedef boost::shared_ptr< ::tactile_servo_srvs::set_des_feats_srvRequest > set_des_feats_srvRequestPtr;
typedef boost::shared_ptr< ::tactile_servo_srvs::set_des_feats_srvRequest const> set_des_feats_srvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4c072a9801d7384f931d0acc226254b8";
  }

  static const char* value(const ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4c072a9801d7384fULL;
  static const uint64_t static_value2 = 0x931d0acc226254b8ULL;
};

template<class ContainerAllocator>
struct DataType< ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tactile_servo_srvs/set_des_feats_srvRequest";
  }

  static const char* value(const ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 copx\n\
float64 copy\n\
float64 force\n\
float64 cocx\n\
float64 cocy\n\
float64 orient\n\
float64 zmp_x\n\
float64 zmp_y\n\
";
  }

  static const char* value(const ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.copx);
      stream.next(m.copy);
      stream.next(m.force);
      stream.next(m.cocx);
      stream.next(m.cocy);
      stream.next(m.orient);
      stream.next(m.zmp_x);
      stream.next(m.zmp_y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct set_des_feats_srvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tactile_servo_srvs::set_des_feats_srvRequest_<ContainerAllocator>& v)
  {
    s << indent << "copx: ";
    Printer<double>::stream(s, indent + "  ", v.copx);
    s << indent << "copy: ";
    Printer<double>::stream(s, indent + "  ", v.copy);
    s << indent << "force: ";
    Printer<double>::stream(s, indent + "  ", v.force);
    s << indent << "cocx: ";
    Printer<double>::stream(s, indent + "  ", v.cocx);
    s << indent << "cocy: ";
    Printer<double>::stream(s, indent + "  ", v.cocy);
    s << indent << "orient: ";
    Printer<double>::stream(s, indent + "  ", v.orient);
    s << indent << "zmp_x: ";
    Printer<double>::stream(s, indent + "  ", v.zmp_x);
    s << indent << "zmp_y: ";
    Printer<double>::stream(s, indent + "  ", v.zmp_y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TACTILE_SERVO_SRVS_MESSAGE_SET_DES_FEATS_SRVREQUEST_H
