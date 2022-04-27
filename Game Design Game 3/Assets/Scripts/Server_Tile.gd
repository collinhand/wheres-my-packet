extends Node2D
export var destroyable = true
export var baseTile = true
export var tile_cost = 0
export var PacketsToSend =0
var adjacentTiles = []
var Board 
var Inventory
var Counter = 0;
var timer = null


# Called when the node enters the scene tree for the first time.
func _ready():
	timer = Timer.new()
	add_child(timer)
	
	timer.connect("timeout",self,"_on_Timer_timeout")
	timer.set_wait_time(1.0)
	timer.set_one_shot(false)
	#timer.start()
	pass # Replace with function body.

func sendPacket():
	if PacketsToSend != 0:
		for i in adjacentTiles:
			if adjacentTiles[i].tile_type == "Cable v1":
				print("cable found")
		print("Packet Sent")
		PacketsToSend-=1
	else:
		timer.stop()
	pass
func _on_Timer_timeout():
	sendPacket()
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
					print("the server tile cannot be modified.")
				BUTTON_RIGHT:
					print("the server tile cannot be modified.")
				BUTTON_MIDDLE:
					array_clean(adjacentTiles)
					for i in adjacentTiles.size():						
						print(adjacentTiles[i].name)

func _on_Area2D_area_entered(area):
	adjacentTiles.insert(0,area.get_parent())
	print(area.get_parent().name)
	pass # Replace with function body.
