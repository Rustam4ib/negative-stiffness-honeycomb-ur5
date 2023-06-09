// Generated by gencpp from file tactile_servo_msgs/compare_eigens.msg
// DO NOT EDIT!


#ifndef TACTILE_SERVO_MSGS_MESSAGE_COMPARE_EIGENS_H
#define TACTILE_SERVO_MSGS_MESSAGE_COMPARE_EIGENS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tactile_servo_msgs
{
template <class ContainerAllocator>
struct compare_eigens_
{
  typedef compare_eigens_<ContainerAllocator> Type;

  compare_eigens_()
    : vec_eigen1_x(0.0)
    , vec_eigen1_y(0.0)
    , val_eigen1(0.0)
    , vec_eigen2_x(0.0)
    , vec_eigen2_y(0.0)
    , val_eigen2(0.0)  {
    }
  compare_eigens_(const ContainerAllocator& _alloc)
    : vec_eigen1_x(0.0)
    , vec_eigen1_y(0.0)
    , val_eigen1(0.0)
    , vec_eigen2_x(0.0)
    , vec_eigen2_y(0.0)
    , val_eigen2(0.0)  {
  (void)_alloc;
    }



   typedef double _vec_eigen1_x_type;
  _vec_eigen1_x_type vec_eigen1_x;

   typedef double _vec_eigen1_y_type;
  _vec_eigen1_y_type vec_eigen1_y;

   typedef double _val_eigen1_type;
  _val_eigen1_type val_eigen1;

   typedef double _vec_eigen2_x_type;
  _vec_eigen2_x_type vec_eigen2_x;

   typedef double _vec_eigen2_y_type;
  _vec_eigen2_y_type vec_eigen2_y;

   typedef double _val_eigen2_type;
  _val_eigen2_type val_eigen2;




  typedef boost::shared_ptr< ::tactile_servo_msgs::compare_eigens_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tactile_servo_msgs::compare_eigens_<ContainerAllocator> const> ConstPtr;

}; // struct compare_eigens_

typedef ::tactile_servo_msgs::compare_eigens_<std::allocator<void> > compare_eigens;

typedef boost::shared_ptr< ::tactile_servo_msgs::compare_eigens > compare_eigensPtr;
typedef boost::shared_ptr< ::tactile_servo_msgs::compare_eigens const> compare_eigensConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tactile_servo_msgs::compare_eigens_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tactile_servo_msgs::compare_eigens_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tactile_servo_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'tactile_servo_msgs': ['/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tactile_servo_msgs::compare_eigens_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tactile_servo_msgs::compare_eigens_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tactile_servo_msgs::compare_eigens_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tactile_servo_msgs::compare_eigens_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tactile_servo_msgs::compare_eigens_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tactile_servo_msgs::compare_eigens_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tactile_servo_msgs::compare_eigens_<ContainerAllocator> >
{
  static const char* value()
  {
    return "67c049bbb4b73b3b423f74d38f657f1e";
  }

  static const char* value(const ::tactile_servo_msgs::compare_eigens_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x67c049bbb4b73b3bULL;
  static const uint64_t static_value2 = 0x423f74d38f657f1eULL;
};

template<class ContainerAllocator>
struct DataType< ::tactile_servo_msgs::compare_eigens_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tactile_servo_msgs/compare_eigens";
  }

  static const char* value(const ::tactile_servo_msgs::compare_eigens_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tactile_servo_msgs::compare_eigens_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 vec_eigen1_x\n\
float64 vec_eigen1_y\n\
float64 val_eigen1\n\
float64 vec_eigen2_x\n\
float64 vec_eigen2_y\n\
float64 val_eigen2\n\
";
  }

  static const char* value(const ::tactile_servo_msgs::compare_eigens_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tactile_servo_msgs::compare_eigens_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vec_eigen1_x);
      stream.next(m.vec_eigen1_y);
      stream.next(m.val_eigen1);
      stream.next(m.vec_eigen2_x);
      stream.next(m.vec_eigen2_y);
      stream.next(m.val_eigen2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct compare_eigens_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tactile_servo_msgs::compare_eigens_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tactile_servo_msgs::compare_eigens_<ContainerAllocator>& v)
  {
    s << indent << "vec_eigen1_x: ";
    Printer<double>::stream(s, indent + "  ", v.vec_eigen1_x);
    s << indent << "vec_eigen1_y: ";
    Printer<double>::stream(s, indent + "  ", v.vec_eigen1_y);
    s << indent << "val_eigen1: ";
    Printer<double>::stream(s, indent + "  ", v.val_eigen1);
    s << indent << "vec_eigen2_x: ";
    Printer<double>::stream(s, indent + "  ", v.vec_eigen2_x);
    s << indent << "vec_eigen2_y: ";
    Printer<double>::stream(s, indent + "  ", v.vec_eigen2_y);
    s << indent << "val_eigen2: ";
    Printer<double>::stream(s, indent + "  ", v.val_eigen2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TACTILE_SERVO_MSGS_MESSAGE_COMPARE_EIGENS_H
