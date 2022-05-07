extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func quit_pressed():
	get_tree().quit()
	pass # Replace with function body.


func retry_pressed():
	get_tree().change_scene("res://Assets/Scenes/Root.tscn")
	pass # Replace with function body.


func next_lvl_pressed():
	Global.currentLevel = Global.currentLevel + 1
	print("Set current level to " + str(Global.currentLevel) + ". Loading level " + str(Global.currentLevel) + ".")
	get_tree().change_scene("res://Assets/Scenes/level" + str(Global.currentLevel) + ".tscn")
	pass # Replace with function body.
