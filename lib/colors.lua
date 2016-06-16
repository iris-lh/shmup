local Colors
do
  local _class_0
  local _base_0 = {
    list = {
      black = {
        0,
        0,
        0,
        255,
        'black'
      },
      gray = {
        127,
        127,
        127,
        255,
        'gray'
      },
      white = {
        255,
        255,
        255,
        255,
        'white'
      },
      red = {
        255,
        0,
        0,
        255,
        'red'
      },
      orange = {
        255,
        127,
        0,
        255,
        'orange'
      },
      yellow = {
        255,
        255,
        0,
        255,
        'yellow'
      },
      green = {
        0,
        255,
        0,
        255,
        'green'
      },
      cyan = {
        0,
        255,
        255,
        255,
        'cyan'
      },
      blue = {
        0,
        0,
        255,
        255,
        'blue'
      },
      magenta = {
        255,
        0,
        255,
        255,
        'magenta'
      },
      purple = {
        127,
        0,
        127,
        255,
        'purple'
      }
    }
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function() end,
    __base = _base_0,
    __name = "Colors"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Colors = _class_0
  return _class_0
end
