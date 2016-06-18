Button = require 'lib.button'
Painter = require 'lib.painter'

paint = Painter\paint

font_dpsd = love.graphics.newFont 'lib/fonts/DPSDbeyond.otf', 15

btn = {
	reset: Button 700, 10, 75, 20, 'gray', 'Reset'
	quit: Button 715, 40, 60, 20, 'gray', 'Quit'
}



class UI
	new: =>
	update: =>
		if btn.quit\is_hover! and btn.quit\is_clicked!
			love.event.quit!

		if btn.reset\is_hover! and btn.reset\is_clicked!
			btn.reset.text = 'YEET!'

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
		for i,button in pairs btn
			button\draw!