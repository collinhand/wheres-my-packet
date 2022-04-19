extends Node2D


var offset = 64
var Empty_tile 
var Cable_tile
# Called when the node enters the scene tree for the first time.
func _ready():
	Empty_tile = load("res://Assets/Scenes/Empty_Tile.tscn")
	Cable_tile = load("res://Assets/Scenes/Cable_1_tile.tscn")
	#generateBoard(5,5) 

func generateBoard(x,y):
	for i in x:
		for j in y:
			var instance = Empty_tile.instance()
			var position = Vector2(i*offset,j*offset)
			instance.set_position(position)
			add_child(instance)
			
	
		
	
 
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
