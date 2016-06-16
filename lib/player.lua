local Colors = require('lib.colors')
local Painter = require('lib.painter')
local Controls = require('lib.controls')
local Bullet = require('lib.bullet')
local color = Colors()
local painter = Painter()
local ctrl = Controls()
local paint
do
  local _base_0 = painter
  local _fn_0 = _base_0.paint
  paint = function(...)
    return _fn_0(_base_0, ...)
  end
end
local Player
do
  local _class_0
  local _base_0 = {
    draw = function(self)
      paint('green')
      return love.graphics.rectangle('line', self.x, self.y, self.w, self.h)
    end,
    control = function(self)
      local pressed = love.keyboard.isDown
      if (pressed(ctrl.left)) and (pressed(ctrl.right)) then
        local _ = nil
      elseif pressed(ctrl.left) then
        self.x = self.x - self.speed
      elseif pressed(ctrl.right) then
        self.x = self.x + self.speed
      end
      if (pressed(ctrl.up)) and (pressed(ctrl.down)) then
        local _ = nil
      elseif pressed(ctrl.up) then
        self.y = self.y - self.speed
      elseif pressed(ctrl.down) then
        self.y = self.y + self.speed
      end
      if pressed(ctrl.shoot) then
        local bullet = Bullet(self.x, self.y, 15, 30, 20)
      end
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self, x, y, w, h, speed)
      self.x, self.y, self.w, self.h, self.speed = x, y, w, h, speed
    end,
    __base = _base_0,
    __name = "Player"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Player = _class_0
  return _class_0
end
