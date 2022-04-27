extends Node2D
export var destroyable = true
export var baseTile = true
export var tile_cost = 0

var tile_type 
var Board 
var Inventory 
var adjacentTiles = []
# Called when the node enters the scene tree for the first time.
func _ready():
	Board = get_parent()
	Inventory = get_parent().get_parent().get_node("Inventory")
	tile_type = "Empty"


func getAdjacentTiles():
	
	pass


func array_clean(arrayOld):
	var arrayNew = []
	for i in arrayOld:
		if is_instance_valid(i):
			arrayNew.append(i)
	adjacentTiles=arrayNew
func _on_Area2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed:
		match event.button_index:
			BUTTON_LEFT:
				if baseTile:
					if (Inventory.selectedTile != "NULL"):					
						Board.placeTile(self)
				else:
					return
			BUTTON_RIGHT:
				if !baseTile:
					self.rotation_degrees+=90
			BUTTON_MIDDLE:
				array_clean(adjacentTiles)
				for i in adjacentTiles.size():
					print(adjacentTiles[i].name)
	pass # Replace with function body.


func _on_Area2D_area_entered(area):
	adjacentTiles.append(area.get_parent())
	pass # Replace with function body.
