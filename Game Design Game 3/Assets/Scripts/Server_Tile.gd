extends Node2D
export var destroyable = true
export var baseTile = true
export var tile_cost = 0
export var PacketsToSend =0
export var Outputs = ["LEFT","RIGHT","UP","DOWN"]

var packet_scene
var adjacentTiles = []
var myPacket
var hasPacket = false
var Board 
var Inventory
var Counter = 0;
var timer = null
var tile_type = "Server"
var nextOutput =1 

#setup code
func setUpTimer():
	timer = Timer.new()
	add_child(timer)
	timer.connect("timeout",self,"_on_Timer_timeout")
	timer.set_wait_time(0.5)
	timer.set_one_shot(false)
# Called when the node enters the scene tree for the first time.
func _ready():
	Board = get_parent()
	Inventory = get_parent().get_parent().get_node("Inventory")
	packet_scene = load("res://Assets/Scenes/Packet.tscn")
	Board.connect("_simStarted",self,"_on_Board__simStarted")
	setUpTimer()
#cleans array of adjacent tiles after a tile is deleted or placed
func array_clean(arrayOld):
	var arrayNew = []
	for i in arrayOld:
		if is_instance_valid(i):
			arrayNew.append(i)
	adjacentTiles=arrayNew
#unique function for server that spawns packets and sends them to available inputs
func sendPacket():
	if hasPacket:
		nextOutput = (nextOutput + 1)%4
		myPacket.nextDir = Outputs[nextOutput]
	elif PacketsToSend != 0 and !hasPacket:		
		myPacket = packet_scene.instance()		
		add_child(myPacket)
		hasPacket= true
		print("Packet Sent")
		PacketsToSend-=1
	elif PacketsToSend == 0:
		timer.stop()
	pass

#signals - called when a signal is sent out by something else
 
#sends a packet on a 1 second timer whenever the timer runs out
func _on_Timer_timeout():
	sendPacket()
#when the simulation is started start the servers timer
func _on_Board__simStarted():
	timer.start()
	pass	
# whenever the server is clicked notify player that they cannot do anything to it
func _on_Area2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed:
			match event.button_index:
				BUTTON_LEFT:
					print("the server tile cannot be modified.")
				BUTTON_RIGHT:
					print("the server tile cannot be modified.")
				BUTTON_MIDDLE:
					array_clean(adjacentTiles)
					for i in adjacentTiles.size():						
						print(adjacentTiles[i].name)
# whenever a tile adjacent to server is detected add it to adjacent tiles array
func _on_Area2D_area_entered(area):
	adjacentTiles.append(area.get_parent())
	array_clean(adjacentTiles)
	pass # Replace with function body.
