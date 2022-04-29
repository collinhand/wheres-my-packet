extends Node2D

var curTile
var timer
var Board
var nextDir
# Called when the node enters the scene tree for the first time.
func setUpTimer():
	timer = Timer.new()
	add_child(timer)
	timer.connect("timeout",self,"_on_Timer_timeout")
	timer.set_wait_time(1.0)
	timer.set_one_shot(false)
func _ready():
	curTile = get_parent()
	Board = curTile.get_parent()
	setUpTimer()
	timer.start()
func moveToNextTile(nextTile):
		curTile.hasPacket = false
		curTile.remove_child(self)
		curTile = nextTile
		curTile.hasPacket = true
		curTile.add_child(self)
		if nextTile.tile_type == "Client":
			nextDir = nextTile.OutputDirection[0]
			nextTile.myPacket = self			
		else:
			nextDir = nextTile.OutputDirection
func _on_Timer_timeout():
	findNextTile()

func findNextTile():
	for nextTile in curTile.adjacentTiles:
		var nextTileX = nextTile.position.x
		var nextTileY = nextTile.position.y
		var curTileX = curTile.position.x
		var curTileY = curTile.position.y
		if nextTile.tile_type == "Cable":
			#if there is an aligned cable to the right
			if nextTileX>curTileX:
				if nextTile.InputDirection == "LEFT" and nextDir=="RIGHT":
					if nextTile.hasPacket==false:
						moveToNextTile(nextTile)
			#if there is an aligned cable to the left
			elif nextTileX<curTileX:
				if nextTile.InputDirection == "RIGHT"and nextDir=="LEFT":
					moveToNextTile(nextTile)
			#if there is an aligned cable above
			elif nextTileY<curTileY and nextDir =="UP":
				if nextTile.InputDirection == "DOWN":
					moveToNextTile(nextTile)
			#if there is an aligned cable below
			elif nextTileY>curTileY and nextDir=="DOWN":
				if nextTile.InputDirection == "UP":
					moveToNextTile(nextTile)
		elif nextTile.tile_type == "Client":
			if nextTileY>curTileY and nextDir=="DOWN":
				if nextTile.InputDirection[0] == "UP" or nextTile.InputDirection[1] and nextDir =="DOWN":
					moveToNextTile(nextTile)
