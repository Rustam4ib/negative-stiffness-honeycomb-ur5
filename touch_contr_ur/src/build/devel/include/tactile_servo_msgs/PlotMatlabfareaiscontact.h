// Generated by gencpp from file tactile_servo_msgs/PlotMatlabfareaiscontact.msg
// DO NOT EDIT!


#ifndef TACTILE_SERVO_MSGS_MESSAGE_PLOTMATLABFAREAISCONTACT_H
#define TACTILE_SERVO_MSGS_MESSAGE_PLOTMATLABFAREAISCONTACT_H


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
struct PlotMatlabfareaiscontact_
{
  typedef PlotMatlabfareaiscontact_<ContainerAllocator> Type;

  PlotMatlabfareaiscontact_()
    : header()
    , fx(0.0)
    , fy(0.0)
    , fz(0.0)
    , fwx(0.0)
    , fwy(0.0)
    , fwz(0.0)
    , coc_x(0.0)
    , coc_y(0.0)
    , farea(0.0)
    , iscontact(0.0)
    , f(0.0)
    , zmp_x(0.0)
    , zmp_y(0.0)
    , orient_z(0.0)
    , cop_x(0.0)
    , cop_y(0.0)
    , coc_xd(0.0)
    , coc_yd(0.0)
    , fd(0.0)
    , zmp_xd(0.0)
    , zmp_yd(0.0)
    , orient_zd(0.0)
    , cop_xd(0.0)
    , cop_yd(0.0)
    , num_contours(0)
    , x_now(0.0)
    , y_now(0.0)
    , z_now(0.0)
    , wx_now(0.0)
    , wy_now(0.0)
    , wz_now(0.0)
    , ww_now(0.0)
    , x_des(0.0)
    , y_des(0.0)
    , z_des(0.0)
    , wx_des(0.0)
    , wy_des(0.0)
    , wz_des(0.0)
    , ww_des(0.0)
    , x_c(0.0)
    , y_c(0.0)
    , z_c(0.0)
    , dt(0.0)
    , time(0.0)
    , test_time2(0.0)  {
    }
  PlotMatlabfareaiscontact_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , fx(0.0)
    , fy(0.0)
    , fz(0.0)
    , fwx(0.0)
    , fwy(0.0)
    , fwz(0.0)
    , coc_x(0.0)
    , coc_y(0.0)
    , farea(0.0)
    , iscontact(0.0)
    , f(0.0)
    , zmp_x(0.0)
    , zmp_y(0.0)
    , orient_z(0.0)
    , cop_x(0.0)
    , cop_y(0.0)
    , coc_xd(0.0)
    , coc_yd(0.0)
    , fd(0.0)
    , zmp_xd(0.0)
    , zmp_yd(0.0)
    , orient_zd(0.0)
    , cop_xd(0.0)
    , cop_yd(0.0)
    , num_contours(0)
    , x_now(0.0)
    , y_now(0.0)
    , z_now(0.0)
    , wx_now(0.0)
    , wy_now(0.0)
    , wz_now(0.0)
    , ww_now(0.0)
    , x_des(0.0)
    , y_des(0.0)
    , z_des(0.0)
    , wx_des(0.0)
    , wy_des(0.0)
    , wz_des(0.0)
    , ww_des(0.0)
    , x_c(0.0)
    , y_c(0.0)
    , z_c(0.0)
    , dt(0.0)
    , time(0.0)
    , test_time2(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _fx_type;
  _fx_type fx;

   typedef double _fy_type;
  _fy_type fy;

   typedef double _fz_type;
  _fz_type fz;

   typedef double _fwx_type;
  _fwx_type fwx;

   typedef double _fwy_type;
  _fwy_type fwy;

   typedef double _fwz_type;
  _fwz_type fwz;

   typedef double _coc_x_type;
  _coc_x_type coc_x;

   typedef double _coc_y_type;
  _coc_y_type coc_y;

   typedef double _farea_type;
  _farea_type farea;

   typedef double _iscontact_type;
  _iscontact_type iscontact;

   typedef double _f_type;
  _f_type f;

   typedef double _zmp_x_type;
  _zmp_x_type zmp_x;

   typedef double _zmp_y_type;
  _zmp_y_type zmp_y;

   typedef double _orient_z_type;
  _orient_z_type orient_z;

   typedef double _cop_x_type;
  _cop_x_type cop_x;

   typedef double _cop_y_type;
  _cop_y_type cop_y;

   typedef double _coc_xd_type;
  _coc_xd_type coc_xd;

   typedef double _coc_yd_type;
  _coc_yd_type coc_yd;

   typedef double _fd_type;
  _fd_type fd;

   typedef double _zmp_xd_type;
  _zmp_xd_type zmp_xd;

   typedef double _zmp_yd_type;
  _zmp_yd_type zmp_yd;

   typedef double _orient_zd_type;
  _orient_zd_type orient_zd;

   typedef double _cop_xd_type;
  _cop_xd_type cop_xd;

   typedef double _cop_yd_type;
  _cop_yd_type cop_yd;

   typedef int32_t _num_contours_type;
  _num_contours_type num_contours;

   typedef double _x_now_type;
  _x_now_type x_now;

   typedef double _y_now_type;
  _y_now_type y_now;

   typedef double _z_now_type;
  _z_now_type z_now;

   typedef double _wx_now_type;
  _wx_now_type wx_now;

   typedef double _wy_now_type;
  _wy_now_type wy_now;

   typedef double _wz_now_type;
  _wz_now_type wz_now;

   typedef double _ww_now_type;
  _ww_now_type ww_now;

   typedef double _x_des_type;
  _x_des_type x_des;

   typedef double _y_des_type;
  _y_des_type y_des;

   typedef double _z_des_type;
  _z_des_type z_des;

   typedef double _wx_des_type;
  _wx_des_type wx_des;

   typedef double _wy_des_type;
  _wy_des_type wy_des;

   typedef double _wz_des_type;
  _wz_des_type wz_des;

   typedef double _ww_des_type;
  _ww_des_type ww_des;

   typedef double _x_c_type;
  _x_c_type x_c;

   typedef double _y_c_type;
  _y_c_type y_c;

   typedef double _z_c_type;
  _z_c_type z_c;

   typedef double _dt_type;
  _dt_type dt;

   typedef double _time_type;
  _time_type time;

   typedef double _test_time2_type;
  _test_time2_type test_time2;




  typedef boost::shared_ptr< ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator> const> ConstPtr;

}; // struct PlotMatlabfareaiscontact_

typedef ::tactile_servo_msgs::PlotMatlabfareaiscontact_<std::allocator<void> > PlotMatlabfareaiscontact;

typedef boost::shared_ptr< ::tactile_servo_msgs::PlotMatlabfareaiscontact > PlotMatlabfareaiscontactPtr;
typedef boost::shared_ptr< ::tactile_servo_msgs::PlotMatlabfareaiscontact const> PlotMatlabfareaiscontactConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator> >
{
  static const char* value()
  {
    return "918b4968142e48a7cee7614487692aec";
  }

  static const char* value(const ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x918b4968142e48a7ULL;
  static const uint64_t static_value2 = 0xcee7614487692aecULL;
};

template<class ContainerAllocator>
struct DataType< ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tactile_servo_msgs/PlotMatlabfareaiscontact";
  }

  static const char* value(const ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
float64 fx\n\
float64 fy\n\
float64 fz\n\
float64 fwx\n\
float64 fwy\n\
float64 fwz\n\
float64 coc_x\n\
float64 coc_y\n\
float64 farea\n\
float64 iscontact\n\
float64 f\n\
float64 zmp_x\n\
float64 zmp_y\n\
float64 orient_z\n\
float64 cop_x\n\
float64 cop_y\n\
float64 coc_xd\n\
float64 coc_yd\n\
float64 fd\n\
float64 zmp_xd\n\
float64 zmp_yd\n\
float64 orient_zd\n\
float64 cop_xd\n\
float64 cop_yd\n\
int32 num_contours\n\
float64 x_now\n\
float64 y_now\n\
float64 z_now\n\
float64 wx_now\n\
float64 wy_now\n\
float64 wz_now\n\
float64 ww_now\n\
float64 x_des\n\
float64 y_des\n\
float64 z_des\n\
float64 wx_des\n\
float64 wy_des\n\
float64 wz_des\n\
float64 ww_des\n\
float64 x_c\n\
float64 y_c\n\
float64 z_c\n\
float64 dt\n\
float64 time\n\
float64 test_time2\n\
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

  static const char* value(const ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.fx);
      stream.next(m.fy);
      stream.next(m.fz);
      stream.next(m.fwx);
      stream.next(m.fwy);
      stream.next(m.fwz);
      stream.next(m.coc_x);
      stream.next(m.coc_y);
      stream.next(m.farea);
      stream.next(m.iscontact);
      stream.next(m.f);
      stream.next(m.zmp_x);
      stream.next(m.zmp_y);
      stream.next(m.orient_z);
      stream.next(m.cop_x);
      stream.next(m.cop_y);
      stream.next(m.coc_xd);
      stream.next(m.coc_yd);
      stream.next(m.fd);
      stream.next(m.zmp_xd);
      stream.next(m.zmp_yd);
      stream.next(m.orient_zd);
      stream.next(m.cop_xd);
      stream.next(m.cop_yd);
      stream.next(m.num_contours);
      stream.next(m.x_now);
      stream.next(m.y_now);
      stream.next(m.z_now);
      stream.next(m.wx_now);
      stream.next(m.wy_now);
      stream.next(m.wz_now);
      stream.next(m.ww_now);
      stream.next(m.x_des);
      stream.next(m.y_des);
      stream.next(m.z_des);
      stream.next(m.wx_des);
      stream.next(m.wy_des);
      stream.next(m.wz_des);
      stream.next(m.ww_des);
      stream.next(m.x_c);
      stream.next(m.y_c);
      stream.next(m.z_c);
      stream.next(m.dt);
      stream.next(m.time);
      stream.next(m.test_time2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlotMatlabfareaiscontact_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tactile_servo_msgs::PlotMatlabfareaiscontact_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "fx: ";
    Printer<double>::stream(s, indent + "  ", v.fx);
    s << indent << "fy: ";
    Printer<double>::stream(s, indent + "  ", v.fy);
    s << indent << "fz: ";
    Printer<double>::stream(s, indent + "  ", v.fz);
    s << indent << "fwx: ";
    Printer<double>::stream(s, indent + "  ", v.fwx);
    s << indent << "fwy: ";
    Printer<double>::stream(s, indent + "  ", v.fwy);
    s << indent << "fwz: ";
    Printer<double>::stream(s, indent + "  ", v.fwz);
    s << indent << "coc_x: ";
    Printer<double>::stream(s, indent + "  ", v.coc_x);
    s << indent << "coc_y: ";
    Printer<double>::stream(s, indent + "  ", v.coc_y);
    s << indent << "farea: ";
    Printer<double>::stream(s, indent + "  ", v.farea);
    s << indent << "iscontact: ";
    Printer<double>::stream(s, indent + "  ", v.iscontact);
    s << indent << "f: ";
    Printer<double>::stream(s, indent + "  ", v.f);
    s << indent << "zmp_x: ";
    Printer<double>::stream(s, indent + "  ", v.zmp_x);
    s << indent << "zmp_y: ";
    Printer<double>::stream(s, indent + "  ", v.zmp_y);
    s << indent << "orient_z: ";
    Printer<double>::stream(s, indent + "  ", v.orient_z);
    s << indent << "cop_x: ";
    Printer<double>::stream(s, indent + "  ", v.cop_x);
    s << indent << "cop_y: ";
    Printer<double>::stream(s, indent + "  ", v.cop_y);
    s << indent << "coc_xd: ";
    Printer<double>::stream(s, indent + "  ", v.coc_xd);
    s << indent << "coc_yd: ";
    Printer<double>::stream(s, indent + "  ", v.coc_yd);
    s << indent << "fd: ";
    Printer<double>::stream(s, indent + "  ", v.fd);
    s << indent << "zmp_xd: ";
    Printer<double>::stream(s, indent + "  ", v.zmp_xd);
    s << indent << "zmp_yd: ";
    Printer<double>::stream(s, indent + "  ", v.zmp_yd);
    s << indent << "orient_zd: ";
    Printer<double>::stream(s, indent + "  ", v.orient_zd);
    s << indent << "cop_xd: ";
    Printer<double>::stream(s, indent + "  ", v.cop_xd);
    s << indent << "cop_yd: ";
    Printer<double>::stream(s, indent + "  ", v.cop_yd);
    s << indent << "num_contours: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num_contours);
    s << indent << "x_now: ";
    Printer<double>::stream(s, indent + "  ", v.x_now);
    s << indent << "y_now: ";
    Printer<double>::stream(s, indent + "  ", v.y_now);
    s << indent << "z_now: ";
    Printer<double>::stream(s, indent + "  ", v.z_now);
    s << indent << "wx_now: ";
    Printer<double>::stream(s, indent + "  ", v.wx_now);
    s << indent << "wy_now: ";
    Printer<double>::stream(s, indent + "  ", v.wy_now);
    s << indent << "wz_now: ";
    Printer<double>::stream(s, indent + "  ", v.wz_now);
    s << indent << "ww_now: ";
    Printer<double>::stream(s, indent + "  ", v.ww_now);
    s << indent << "x_des: ";
    Printer<double>::stream(s, indent + "  ", v.x_des);
    s << indent << "y_des: ";
    Printer<double>::stream(s, indent + "  ", v.y_des);
    s << indent << "z_des: ";
    Printer<double>::stream(s, indent + "  ", v.z_des);
    s << indent << "wx_des: ";
    Printer<double>::stream(s, indent + "  ", v.wx_des);
    s << indent << "wy_des: ";
    Printer<double>::stream(s, indent + "  ", v.wy_des);
    s << indent << "wz_des: ";
    Printer<double>::stream(s, indent + "  ", v.wz_des);
    s << indent << "ww_des: ";
    Printer<double>::stream(s, indent + "  ", v.ww_des);
    s << indent << "x_c: ";
    Printer<double>::stream(s, indent + "  ", v.x_c);
    s << indent << "y_c: ";
    Printer<double>::stream(s, indent + "  ", v.y_c);
    s << indent << "z_c: ";
    Printer<double>::stream(s, indent + "  ", v.z_c);
    s << indent << "dt: ";
    Printer<double>::stream(s, indent + "  ", v.dt);
    s << indent << "time: ";
    Printer<double>::stream(s, indent + "  ", v.time);
    s << indent << "test_time2: ";
    Printer<double>::stream(s, indent + "  ", v.test_time2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TACTILE_SERVO_MSGS_MESSAGE_PLOTMATLABFAREAISCONTACT_H
