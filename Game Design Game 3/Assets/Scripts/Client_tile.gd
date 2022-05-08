extends Node2D
export var destroyable = true
export var baseTile = true
export var tile_cost = 0
export var NeededPackets = 0;
export var OutputDirection = ["LEFT","RIGHT"]
export var InputDirection = ["UP","DOWN"]
var adjacentTiles = []
var Board 
var Inventory
var tile_type ="Client"
var myPacket
var hasPacket = false
var NeededPacketsLabel

func _process(_delta):
	if hasPacket:
		myPacket.queue_free()
		hasPacket = false
		NeededPackets -=1
		NeededPacketsLabel.text = str(NeededPackets)
# Called when the node enters the scene tree for the first time.
func _ready():
	Board = get_parent()
	NeededPacketsLabel = get_node("Area2D/PacketLabel")
	Inventory = get_parent().get_parent().get_node("Inventory")
	Board.connect("_simStarted",self,"_on_Board__simStarted")
	
	get_node("Area2D/PacketLabel").text = str(NeededPackets)
	# set inputs/ output colors
	for element in OutputDirection:
		self.get_node(str(element) + "_marker").color = Color( 1, 0.27, 0, 1 )
	for element in InputDirection:
		self.get_node(str(element) + "_marker").color = Color( 0.25, 0.41, 0.88, 1 )
		
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
	pass

