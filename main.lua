local UI = require('lib.ui')
local Player = require('lib.player')
love.load = function()
  elements = {
    ui = UI(),
    player = Player(200, 200, 75, 75, 10)
  }
end
love.update = function(dt)
  for i, element in pairs(elements) do
    element:update()
  end
end
love.draw = function()
  for i, element in pairs(elements) do
    element:draw()
  end
end
