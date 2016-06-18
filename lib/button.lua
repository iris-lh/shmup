local Painter = require('lib.painter')
local Controls = require('lib.controls')
local paint
do
  local _base_0 = Painter
  local _fn_0 = _base_0.paint
  paint = function(...)
    return _fn_0(_base_0, ...)
  end
end
local ctrl = Controls()
local Button
do
  local _class_0
  local _base_0 = {
    is_hover = function(self)
      local mouse_x, mouse_y = love.mouse.getPosition()
      if mouse_x >= self.x and mouse_x <= self.x + self.w and mouse_y >= self.y and mouse_y <= self.y + self.h then
        return true
      end
    end,
    is_clicked = function(self)
      if love.mouse.isDown(ctrl.lmb) then
        return true
      end
    end,
    draw = function(self)
      if self:is_hover() then
        paint(self.idle_color)
        love.graphics.rectangle('fill', self.x, self.y, self.w, self.h)
        paint('black')
        return love.graphics.print(self.text, self.x, self.y)
      else
        paint(self.idle_color)
        love.graphics.rectangle('line', self.x, self.y, self.w, self.h)
        return love.graphics.print(self.text, self.x, self.y)
      end
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self, x, y, w, h, idle_color, text)
      self.x, self.y, self.w, self.h, self.idle_color, self.text = x, y, w, h, idle_color, text
    end,
    __base = _base_0,
    __name = "Button"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Button = _class_0
  return _class_0
end
