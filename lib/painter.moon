Colors = require 'lib.colors'

color = Colors!

class Painter
	paint: (input) =>
		for k,v in pairs color.list
			if v[5] == input
				return love.graphics.setColor {v[1], v[2], v[3], v[4]}