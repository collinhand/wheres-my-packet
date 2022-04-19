extends Node2D
export var destroyable = true
export var baseTile = true
export var tile_cost = 0
export var adjacentTiles = []
var Board 
var Inventory 

# Called when the node enters the scene tree for the first time.
func _ready():
	Board = get_parent()
	Inventory= get_parent().get_parent().get_node("Inventory")

func getAdjacentTiles():
	
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if !baseTile:
				if (Inventory.selectedTile != "NULL"):					
					Board.placeTile(self.position)
					queue_free()
			else:
				return
			print(shape_idx)
	pass # Replace with function body.
