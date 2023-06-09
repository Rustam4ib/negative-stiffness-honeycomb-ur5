// Generated by gencpp from file tactile_servo_srvs/begin_control.msg
// DO NOT EDIT!


#ifndef TACTILE_SERVO_SRVS_MESSAGE_BEGIN_CONTROL_H
#define TACTILE_SERVO_SRVS_MESSAGE_BEGIN_CONTROL_H

#include <ros/service_traits.h>


#include <tactile_servo_srvs/begin_controlRequest.h>
#include <tactile_servo_srvs/begin_controlResponse.h>


namespace tactile_servo_srvs
{

struct begin_control
{

typedef begin_controlRequest Request;
typedef begin_controlResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct begin_control
} // namespace tactile_servo_srvs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tactile_servo_srvs::begin_control > {
  static const char* value()
  {
    return "f8510db0e51054ee9f4d5a55ab97ee71";
  }

  static const char* value(const ::tactile_servo_srvs::begin_control&) { return value(); }
};

template<>
struct DataType< ::tactile_servo_srvs::begin_control > {
  static const char* value()
  {
    return "tactile_servo_srvs/begin_control";
  }

  static const char* value(const ::tactile_servo_srvs::begin_control&) { return value(); }
};


// service_traits::MD5Sum< ::tactile_servo_srvs::begin_controlRequest> should match 
// service_traits::MD5Sum< ::tactile_servo_srvs::begin_control > 
template<>
struct MD5Sum< ::tactile_servo_srvs::begin_controlRequest>
{
  static const char* value()
  {
    return MD5Sum< ::tactile_servo_srvs::begin_control >::value();
  }
  static const char* value(const ::tactile_servo_srvs::begin_controlRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tactile_servo_srvs::begin_controlRequest> should match 
// service_traits::DataType< ::tactile_servo_srvs::begin_control > 
template<>
struct DataType< ::tactile_servo_srvs::begin_controlRequest>
{
  static const char* value()
  {
    return DataType< ::tactile_servo_srvs::begin_control >::value();
  }
  static const char* value(const ::tactile_servo_srvs::begin_controlRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tactile_servo_srvs::begin_controlResponse> should match 
// service_traits::MD5Sum< ::tactile_servo_srvs::begin_control > 
template<>
struct MD5Sum< ::tactile_servo_srvs::begin_controlResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tactile_servo_srvs::begin_control >::value();
  }
  static const char* value(const ::tactile_servo_srvs::begin_controlResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tactile_servo_srvs::begin_controlResponse> should match 
// service_traits::DataType< ::tactile_servo_srvs::begin_control > 
template<>
struct DataType< ::tactile_servo_srvs::begin_controlResponse>
{
  static const char* value()
  {
    return DataType< ::tactile_servo_srvs::begin_control >::value();
  }
  static const char* value(const ::tactile_servo_srvs::begin_controlResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TACTILE_SERVO_SRVS_MESSAGE_BEGIN_CONTROL_H
