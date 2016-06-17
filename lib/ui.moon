Button = require 'lib.button'
Painter = require 'lib.painter'

paint = Painter\paint

font_dpsd = love.graphics.newFont 'lib/fonts/DPSDbeyond.otf', 15



btn_reset = Button 700, 10, 75, 20, 'gray', 'Reset'
btn_quit = Button 715, 40, 60, 20, 'gray', 'Quit'

buttons = {
	btn_reset,
	btn_quit
}



class UI
	new: =>
	draw: =>
		--BORDER
		paint 'white'
		love.graphics.rectangle 'line', 0, 0, 800, 600

		--DIAGNOSTICS
		fps = love.timer.getFPS!
		paint 'gray'
		love.graphics.setFont font_dpsd
		love.graphics.print fps..' fps', 10, 10

		--BUTTONS
		love.graphics.setFont font_dpsd
		for i,button in pairs buttons
			button\draw!