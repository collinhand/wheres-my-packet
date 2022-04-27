extends Node2D
export var destroyable = true
export var baseTile = true
export var tile_cost = 0

var tile_type ="Cable v1"
var adjacentTiles = []
var Board 
var Inventory 

# Called when the node enters the scene tree for the first time.
func _ready():
	Board = get_parent()
	Inventory = get_parent().get_parent().get_node("Inventory")

func getAdjacentTiles():
	
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed:
		match event.button_index:
			BUTTON_LEFT:
				if baseTile:
					if (Inventory.selectedTile != "NULL"):					
						Board.placeTile(self.position)
						queue_free()
				else:
					return
			BUTTON_RIGHT:
				if destroyable	:
					Board.deleteTile(self)
			BUTTON_MIDDLE:	
				self.rotation_degrees += 90

	pass # Replace with function body.


func _on_Area2D_area_entered(area):
	adjacentTiles.append(area.get_parent())
	pass # Replace with function body.
