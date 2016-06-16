Painter = require 'lib.painter'
painter = Painter!
paint = painter\paint

class Bullet
	new: (@x, @y, @w, @h, @speed) =>
	draw: =>
		paint 'red'
		love.graphics.rectangle 'line', @x, @y, @w, @h