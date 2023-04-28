# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from tactile_servo_srvs/select_matrixRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class select_matrixRequest(genpy.Message):
  _md5sum = "82ccbe8ea8a90c6e89f74c41c4d77e19"
  _type = "tactile_servo_srvs/select_matrixRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int64 copx
int64 copy
int64 force
int64 cocx
int64 cocy
int64 orient
"""
  __slots__ = ['copx','copy','force','cocx','cocy','orient']
  _slot_types = ['int64','int64','int64','int64','int64','int64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       copx,copy,force,cocx,cocy,orient

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(select_matrixRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.copx is None:
        self.copx = 0
      if self.copy is None:
        self.copy = 0
      if self.force is None:
        self.force = 0
      if self.cocx is None:
        self.cocx = 0
      if self.cocy is None:
        self.cocy = 0
      if self.orient is None:
        self.orient = 0
    else:
      self.copx = 0
      self.copy = 0
      self.force = 0
      self.cocx = 0
      self.cocy = 0
      self.orient = 0

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
      buff.write(_struct_6q.pack(_x.copx, _x.copy, _x.force, _x.cocx, _x.cocy, _x.orient))
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
      end += 48
      (_x.copx, _x.copy, _x.force, _x.cocx, _x.cocy, _x.orient,) = _struct_6q.unpack(str[start:end])
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
      buff.write(_struct_6q.pack(_x.copx, _x.copy, _x.force, _x.cocx, _x.cocy, _x.orient))
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
      end += 48
      (_x.copx, _x.copy, _x.force, _x.cocx, _x.cocy, _x.orient,) = _struct_6q.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_6q = struct.Struct("<6q")
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from tactile_servo_srvs/select_matrixResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class select_matrixResponse(genpy.Message):
  _md5sum = "0f26af2399fbfbc8170d9a60ed7b9846"
  _type = "tactile_servo_srvs/select_matrixResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
int64 success

"""
  __slots__ = ['success']
  _slot_types = ['int64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       success

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(select_matrixResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.success is None:
        self.success = 0
    else:
      self.success = 0

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
      buff.write(_struct_q.pack(self.success))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 8
      (self.success,) = _struct_q.unpack(str[start:end])
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
      buff.write(_struct_q.pack(self.success))
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
      start = end
      end += 8
      (self.success,) = _struct_q.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_q = struct.Struct("<q")
class select_matrix(object):
  _type          = 'tactile_servo_srvs/select_matrix'
  _md5sum = '477eddf35d1c9126254cd3a55ca19343'
  _request_class  = select_matrixRequest
  _response_class = select_matrixResponse
