Painter = require 'lib.painter'
Controls = require 'lib.controls'

paint = Painter\paint
ctrl = Controls!

class Button
	new: (@x, @y, @w, @h, @idle_color, @text) =>

	is_hover: =>
		mouse_x, mouse_y = love.mouse.getPosition!

		if mouse_x >= @x and 
			mouse_x <= @x+@w and 

			mouse_y >= @y and 
			mouse_y <= @y+@h
			return true 

	is_clicked: =>
		if love.mouse.isDown ctrl.lmb
			return true

	draw: =>
		if @is_hover!
			paint @idle_color
			love.graphics.rectangle 'fill', @x, @y, @w, @h
			paint 'black'
			love.graphics.print @text, @x, @y
		else
			paint @idle_color
			love.graphics.rectangle 'line', @x, @y, @w, @h
			love.graphics.print @text, @x, @y