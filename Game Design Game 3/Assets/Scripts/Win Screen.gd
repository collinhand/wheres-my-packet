extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	# set money spent label
	self.get_node("Panel/spent").text = "YOU SPENT $" + str(Global.levelScores[Global.currentLevel])
	
	# set level label
	self.get_node("Panel/lvl_passed").text = "LEVEL " + str(Global.currentLevel) + " PASSED!"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func quit_pressed():
	print("Quitting game")
	get_tree().quit()
	pass # Replace with function body.


func retry_pressed():
	print("Set current level to " + str(Global.currentLevel) + ". Loading level " + str(Global.currentLevel) + ".")
	get_tree().change_scene("res://Assets/Scenes/level" + str(Global.currentLevel) + ".tscn")
	pass # Replace with function body.


func next_lvl_pressed():
	Global.currentLevel = Global.currentLevel + 1
	print("Set current level to " + str(Global.currentLevel) + ". Loading level " + str(Global.currentLevel) + ".")
	get_tree().change_scene("res://Assets/Scenes/level" + str(Global.currentLevel) + ".tscn")
	
	if Global.currentLevel > 3: # if no more levels, load win screen
		print("Game over. Loading final win screen.")
		get_tree().change_scene("res://Assets/Scenes/Game_Over.tscn")
	pass # Replace with function body.
