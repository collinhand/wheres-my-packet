extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	# set level scores
	var totalScore = 0
	var score
	
	for i in range (1,7):
		if Global.levelScores[i] == null:
			score = ": SKIP"
		else:
			score = ": $" + str(Global.levelScores[i])
			totalScore += Global.levelScores[i]
		self.get_node("Panel/lvl" + str(i) + "spent").text = "LEVEL " + str(i) + score
	self.get_node("Panel/final_score").text = "$" + str(totalScore)
	$backgroundSound.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func quit_pressed():
	print("Quitting game. Thanks for playing.")
	get_tree().quit()
	pass # Replace with function body.


func retry_pressed():
	print("Set current level to level 1 to reset. Loading level 1.")
	get_tree().change_scene("res://Assets/Scenes/level1.tscn")
	pass # Replace with function body.
