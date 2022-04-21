extends Node2D
export var destroyable = true
export var baseTile = true
export var tile_cost = 0
export var adjacentTiles = []
var Board 
var Inventory
var Counter = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	Board = get_parent()
	Inventory = get_parent().get_parent().get_node("Inventory")\
	
func getAdjacentTiles():
	
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed:
		match event.button_index:
			BUTTON_LEFT:
				print("the client tile cannot be modified.")
			BUTTON_RIGHT:
				print("the client tile cannot be modified.")
	pass # Replace with function body.

