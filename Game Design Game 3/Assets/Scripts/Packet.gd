extends Node2D

var curTile
var timer
var Board
var firstDir
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
	if nextTile.myPacket == null:
		curTile.myPacket = null
		curTile.remove_child(self)
		curTile = nextTile
		curTile.add_child(self)
func _on_Timer_timeout():
	findNextTile()

func findNextTile():
	for nextTile in curTile.adjacentTiles:
		if nextTile.tile_type == "Cable":
			#if there is an aligned cable to the right
			if nextTile.position.x>curTile.position.x:
				if nextTile.InputDirection == "LEFT" and firstDir=="RIGHT":
					moveToNextTile(nextTile)
			#if there is an aligned cable to the left
			elif nextTile.position.x<curTile.position.x:
				if nextTile.InputDirection == "RIGHT"and firstDir=="LEFT":
					moveToNextTile(nextTile)
			#if there is an aligned cable above
			elif nextTile.position.y<curTile.position.y and firstDir =="UP":
				if nextTile.InputDirection == "DOWN":
					moveToNextTile(nextTile)
			elif nextTile.position.y>curTile.position.y and firstDir=="DOWN":
				if nextTile.InputDirection == "UP":
					moveToNextTile(nextTile)
