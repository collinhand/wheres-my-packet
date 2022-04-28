extends Node2D
export var destroyable = true
export var baseTile = true
export var tile_cost = 0

var adjacentTiles = []
var Board 
var Inventory
var Counter = 0;
var tile_type ="Client"
# Called when the node enters the scene tree for the first time.
func _ready():
	Board = get_parent()
	Inventory = get_parent().get_parent().get_node("Inventory")
	Board.connect("_simStarted",self,"_on_Board__simStarted")
# when tile is clicked 
func _on_Area2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed:
		match event.button_index:
			BUTTON_LEFT:
				print("the client tile cannot be modified.")
			BUTTON_RIGHT:
				print("the client tile cannot be modified.")

# when tile is placed or deleted updates adjacency array
func _on_Area2D_area_entered(area):
	adjacentTiles.append(area.get_parent())
#starts simulation timer
func _on_Board__simStarted():
	print("Client :"+self.name +" start")

