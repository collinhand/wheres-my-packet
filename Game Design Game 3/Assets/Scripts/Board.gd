extends Node2D

var offset = 64

var Inventory 
var Empty_tile 
var Cable_tile
# Called when the node enters the scene tree for the first time.
func _ready():
	Empty_tile = load("res://Assets/Scenes/Empty_Tile.tscn")
	Cable_tile = load("res://Assets/Scenes/Cable_1_tile.tscn")
	Inventory  = get_parent().get_node("Inventory")
	getTiles()

var currentTiles = Array()
#for debuging/testing
func generateBoard(x,y):
	for i in x:
		for j in y:
			var instance = Empty_tile.instance()
			var position = Vector2(i*offset,j*offset)
			instance.set_position(position)
			add_child(instance)
			
func getTiles():
	for i in get_child_count():
		currentTiles.append(get_child(i))


func simulationTick():
	pass
func placeTile(newPos):
	print(newPos)
	if Inventory.selectedTile == "Cable_1":
		var instance = Cable_tile.instance()
		instance.position = newPos
		add_child(instance)
	
	
 
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
