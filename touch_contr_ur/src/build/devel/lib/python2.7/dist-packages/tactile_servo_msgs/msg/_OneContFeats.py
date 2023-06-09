# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from tactile_servo_msgs/OneContFeats.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class OneContFeats(genpy.Message):
  _md5sum = "fdece2a38b99c6197914e4ea70b8fffb"
  _type = "tactile_servo_msgs/OneContFeats"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float64 centerpressure_x
float64 centerpressure_y
float64 contactForce
float64 centerContact_x
float64 centerContact_y
float64 contactOrientation
float64 zmp_x
float64 zmp_y
bool is_contact
int32 num_pixels_contact
float64 highest_force_cell
float64 real_total_force

"""
  __slots__ = ['centerpressure_x','centerpressure_y','contactForce','centerContact_x','centerContact_y','contactOrientation','zmp_x','zmp_y','is_contact','num_pixels_contact','highest_force_cell','real_total_force']
  _slot_types = ['float64','float64','float64','float64','float64','float64','float64','float64','bool','int32','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       centerpressure_x,centerpressure_y,contactForce,centerContact_x,centerContact_y,contactOrientation,zmp_x,zmp_y,is_contact,num_pixels_contact,highest_force_cell,real_total_force

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(OneContFeats, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.centerpressure_x is None:
        self.centerpressure_x = 0.
      if self.centerpressure_y is None:
        self.centerpressure_y = 0.
      if self.contactForce is None:
        self.contactForce = 0.
      if self.centerContact_x is None:
        self.centerContact_x = 0.
      if self.centerContact_y is None:
        self.centerContact_y = 0.
      if self.contactOrientation is None:
        self.contactOrientation = 0.
      if self.zmp_x is None:
        self.zmp_x = 0.
      if self.zmp_y is None:
        self.zmp_y = 0.
      if self.is_contact is None:
        self.is_contact = False
      if self.num_pixels_contact is None:
        self.num_pixels_contact = 0
      if self.highest_force_cell is None:
        self.highest_force_cell = 0.
      if self.real_total_force is None:
        self.real_total_force = 0.
    else:
      self.centerpressure_x = 0.
      self.centerpressure_y = 0.
      self.contactForce = 0.
      self.centerContact_x = 0.
      self.centerContact_y = 0.
      self.contactOrientation = 0.
      self.zmp_x = 0.
      self.zmp_y = 0.
      self.is_contact = False
      self.num_pixels_contact = 0
      self.highest_force_cell = 0.
      self.real_total_force = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_8dBi2d.pack(_x.centerpressure_x, _x.centerpressure_y, _x.contactForce, _x.centerContact_x, _x.centerContact_y, _x.contactOrientation, _x.zmp_x, _x.zmp_y, _x.is_contact, _x.num_pixels_contact, _x.highest_force_cell, _x.real_total_force))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 85
      (_x.centerpressure_x, _x.centerpressure_y, _x.contactForce, _x.centerContact_x, _x.centerContact_y, _x.contactOrientation, _x.zmp_x, _x.zmp_y, _x.is_contact, _x.num_pixels_contact, _x.highest_force_cell, _x.real_total_force,) = _struct_8dBi2d.unpack(str[start:end])
      self.is_contact = bool(self.is_contact)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_8dBi2d.pack(_x.centerpressure_x, _x.centerpressure_y, _x.contactForce, _x.centerContact_x, _x.centerContact_y, _x.contactOrientation, _x.zmp_x, _x.zmp_y, _x.is_contact, _x.num_pixels_contact, _x.highest_force_cell, _x.real_total_force))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 85
      (_x.centerpressure_x, _x.centerpressure_y, _x.contactForce, _x.centerContact_x, _x.centerContact_y, _x.contactOrientation, _x.zmp_x, _x.zmp_y, _x.is_contact, _x.num_pixels_contact, _x.highest_force_cell, _x.real_total_force,) = _struct_8dBi2d.unpack(str[start:end])
      self.is_contact = bool(self.is_contact)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_8dBi2d = struct.Struct("<8dBi2d")
