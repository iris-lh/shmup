Painter = require 'lib.painter'
paint = Painter\paint

class Bullet
	new: (@x, @y, @w, @h, @speed) =>
	draw: =>
		paint 'red'
		love.graphics.rectangle 'line', @x, @y, @w, @h