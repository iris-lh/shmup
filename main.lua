local Colors = require('lib.colors')
local Painter = require('lib.painter')
local UI = require('lib.ui')
local Player = require('lib.player')
local ui = UI()
local player = Player(200, 200, 75, 75, 10)
local color = Colors()
local painter = Painter()
local paint
do
  local _base_0 = painter
  local _fn_0 = _base_0.paint
  paint = function(...)
    return _fn_0(_base_0, ...)
  end
end
local startup = true
love.load = function() end
love.update = function(dt)
  return player:control()
end
love.draw = function()
  player:draw()
  return ui:draw()
end
