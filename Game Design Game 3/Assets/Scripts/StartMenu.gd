extends Control


func _on_StartButton_pressed():
	#get_tree().change_scene("res://Assets/Scenes/Root.tscn")
	get_tree().change_scene("res://Assets/Scenes/level/level1.tscn")



func _on_QuitButton_pressed():
	get_tree().quit()


func _on_ExitButton_pressed():
	pass # Replace with function body.
