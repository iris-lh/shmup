Colors = require 'lib.colors'
Painter = require 'lib.painter'
UI = require 'lib.ui'
Player = require 'lib.player'

ui= UI!

reset = ->
	player = Player 200, 200, 75, 75, 10

	color = Colors!
	painter = Painter!
	paint = painter\paint

startup = true

love.load = ->



love.update = (dt) ->
	player\control!



love.draw = ->
	-- border
	--paint 'white'
	--love.graphics.rectangle 'line', 0, 0, 800, 600

	player\draw!
	ui\draw!