local Painter = require('lib.painter')
local paint
do
  local _base_0 = Painter
  local _fn_0 = _base_0.paint
  paint = function(...)
    return _fn_0(_base_0, ...)
  end
end
local Bullet
do
  local _class_0
  local _base_0 = {
    draw = function(self)
      paint('red')
      return love.graphics.rectangle('line', self.x, self.y, self.w, self.h)
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self, x, y, w, h, speed)
      self.x, self.y, self.w, self.h, self.speed = x, y, w, h, speed
    end,
    __base = _base_0,
    __name = "Bullet"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Bullet = _class_0
  return _class_0
end
