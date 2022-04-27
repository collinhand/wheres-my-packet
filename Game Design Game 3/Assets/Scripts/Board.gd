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
func placeTile(T): 
	if Inventory.selectedTile == "Cable_1":
		var instance = Cable_tile.instance() 
		instance.position = T.position
		add_child(instance)
		if Inventory.FREE_CABLE_CNT == 0:
			Inventory.MONEY_SPENT +=instance.tile_cost
		else:
			Inventory.FREE_CABLE_CNT -=1
		Inventory.MoneySpentLabel.text = str(Inventory.MONEY_SPENT) # update GUI with new value
		Inventory.FreeCableNum.text = str(Inventory.FREE_CABLE_CNT)
	elif Inventory.selectedTile == "Switch": # if switch
		var instance = Switch_tile.instance()
		#instance.
		instance.position = T.position
		add_child(instance)
		
		# add logic here for subtracting cost/ resetting free cables if necessary
		
		Inventory.MONEY_SPENT += 3 # take money from players account
		self.get_parent().get_node("HBoxContainer/SpentLabel").text = str("$") + str(Inventory.MONEY_SPENT) # update GUI with new value
	if T.baseTile == true: #delete empty tile from board
		T.queue_free()
func deleteTile(tile):
	var instance = Empty_tile.instance() #replace empty tile back on board
	instance.position = tile.position
	add_child(instance)
	if Inventory.FREE_CABLE_CNT == Inventory.MAX_FREE_CABLES:
		Inventory.MONEY_SPENT-=tile.tile_cost
	else:
		Inventory.FREE_CABLE_CNT +=1
	
	Inventory.MoneySpentLabel.text = str(Inventory.MONEY_SPENT)
	Inventory.FreeCableNum.text = str(Inventory.FREE_CABLE_CNT)				
	tile.queue_free() # delete tile that was there
	
	
 
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
