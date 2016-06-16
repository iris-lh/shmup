local Controls
do
  local _class_0
  local _base_0 = {
    lmb = 'l',
    rmb = 'r',
    up = 'w',
    down = 's',
    left = 'a',
    right = 'd',
    shoot = 'space'
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self) end,
    __base = _base_0,
    __name = "Controls"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Controls = _class_0
  return _class_0
end
