extends Node2D
signal _simStarted

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func on_start_sim_pressed():
	emit_signal("_simStarted")	
	print("Sim started")
	pass # Replace with function body.
