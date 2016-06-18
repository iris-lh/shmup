Colors = require 'lib.colors'
Painter = require 'lib.painter'
Controls = require 'lib.controls'
Bullet = require 'lib.bullet'

color = Colors!
painter = Painter! 
ctrl = Controls!

paint = painter\paint



class Player
	new: (@x, @y, @w, @h, @speed) =>
	draw: =>
		paint 'green'
		love.graphics.rectangle 'line', @x, @y, @w, @h
		--bullet\draw!

	update: =>
		pressed = love.keyboard.isDown

		-- HORIZONTAL MOVEMENT
		if (pressed ctrl.left) and (pressed ctrl.right)
			nil
		elseif pressed ctrl.left
			@x -= @speed
		elseif pressed ctrl.right
			@x += @speed

		-- VERTICAL MOVEMENT
		if (pressed ctrl.up) and (pressed ctrl.down)
			nil
		elseif pressed ctrl.up
			@y -= @speed
		elseif pressed ctrl.down
			@y += @speed
