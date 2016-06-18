local Button = require('lib.button')
local Painter = require('lib.painter')
local paint
do
  local _base_0 = Painter
  local _fn_0 = _base_0.paint
  paint = function(...)
    return _fn_0(_base_0, ...)
  end
end
local font_dpsd = love.graphics.newFont('lib/fonts/DPSDbeyond.otf', 15)
local btn = {
  reset = Button(700, 10, 75, 20, 'gray', 'Reset'),
  quit = Button(715, 40, 60, 20, 'gray', 'Quit')
}
local UI
do
  local _class_0
  local _base_0 = {
    update = function(self)
      if btn.quit:is_hover() and btn.quit:is_clicked() then
        love.event.quit()
      end
      if btn.reset:is_hover() and btn.reset:is_clicked() then
        btn.reset.text = 'YEET!'
      end
    end,
    draw = function(self)
      paint('white')
      love.graphics.rectangle('line', 0, 0, 800, 600)
      local fps = love.timer.getFPS()
      paint('gray')
      love.graphics.setFont(font_dpsd)
      love.graphics.print(fps .. ' fps', 10, 10)
      love.graphics.setFont(font_dpsd)
      for i, button in pairs(btn) do
        button:draw()
      end
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self) end,
    __base = _base_0,
    __name = "UI"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  UI = _class_0
  return _class_0
end
