UI = require 'lib.ui'
Player = require 'lib.player'

love.load = ->
	export elements = {
		ui: UI!
		player: Player 200, 200, 75, 75, 10
	}

love.update = (dt) ->
	for i,element in pairs elements
		element\update!
	
love.draw = ->
	for i,element in pairs elements
		element\draw!