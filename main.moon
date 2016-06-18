Colors = require 'lib.colors'
Painter = require 'lib.painter'
UI = require 'lib.ui'
Player = require 'lib.player'

ui= UI!

player = Player 200, 200, 75, 75, 10

color = Colors!
painter = Painter!
paint = painter\paint

startup = true

love.load = ->



love.update = (dt) ->
	player\control!
	ui\update!



love.draw = ->
	player\draw!
	ui\draw!