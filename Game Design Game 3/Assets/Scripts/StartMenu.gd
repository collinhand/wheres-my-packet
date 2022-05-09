extends Control


func _on_StartButton_pressed():
	Global.currentLevel = 1
	print ("Set current level to 1. Loading level 1.")
	get_tree().change_scene("res://Assets/Scenes/level1.tscn")

func _on_QuitButton_pressed():
	get_tree().quit()


func _on_ExitButton_pressed():
	get_tree().quit()
	pass # Replace with function body.
	
func _ready():
	$FluffingADuck.play()
	pass
