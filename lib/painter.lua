local Colors = require('lib.colors')
local color = Colors()
local Painter
do
  local _class_0
  local _base_0 = {
    paint = function(self, input)
      for k, v in pairs(color.list) do
        if v[5] == input then
          return love.graphics.setColor({
            v[1],
            v[2],
            v[3],
            v[4]
          })
        end
      end
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function() end,
    __base = _base_0,
    __name = "Painter"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Painter = _class_0
  return _class_0
end
