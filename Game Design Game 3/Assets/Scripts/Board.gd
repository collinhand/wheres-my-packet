extends Node2D

var offset = 64

var Inventory 
var Empty_tile 
var Cable_tile
var Switch_tile

# Called when the node enters the scene tree for the first time.
func _ready():
	Empty_tile = load("res://Assets/Scenes/Empty_Tile.tscn")
	Cable_tile = load("res://Assets/Scenes/Cable_1_tile.tscn")
	Switch_tile = load("res://Assets/Scenes/Switch_1_tile.tscn")
	Inventory  = get_parent().get_node("Inventory")
	getTiles()

var currentTiles = Array()
#for debuging/testing


			
func getTiles():
	for i in get_child_count():
		currentTiles.append(get_child(i))


func simulationTick():
	pass
func placeTile(newPos):
	print(newPos)
	if Inventory.selectedTile == "Cable_1":
		Inventory.CABLE_COUNT += 1
		var instance = Cable_tile.instance()
		instance.position = newPos
		add_child(instance)
		
		# add logic here for subtracting cost/ resetting free cables if necessary
		
		if (Inventory.CABLE_COUNT > 3): # if all free cables not used
			Inventory.MONEY_SPENT += 1  # take money from players account
			self.get_parent().get_node("HBoxContainer/SpentLabel").text =  str("$") + str(Inventory.MONEY_SPENT) # update GUI with new value
		else:
			self.get_parent().get_node("HBoxContainer2/CableNum").text = str(3 - Inventory.CABLE_COUNT)
			
	elif Inventory.selectedTile == "Switch": # if switch
		var instance = Switch_tile.instance()
		#instance.
		instance.position = newPos
		add_child(instance)
		
		# add logic here for subtracting cost/ resetting free cables if necessary
		
		Inventory.MONEY_SPENT += 3 # take money from players account
		self.get_parent().get_node("HBoxContainer/SpentLabel").text = str("$") + str(Inventory.MONEY_SPENT) # update GUI with new value
		
	elif Inventory.selectedTile == "Erase": # if erase selected
		var instance = Empty_tile.instance()
		instance.position = newPos
		add_child(instance)
		
		# add logic here for subtracting cost/ resetting free cables if necessary
		
	
	
 
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
