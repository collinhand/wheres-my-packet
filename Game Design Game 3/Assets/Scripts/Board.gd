extends Node2D

var offset = 64

var Inventory 
var Empty_tile 
var Cable_tile
var Switch_tile
var currentTiles = Array()
var simStarted = false
signal _simStarted
# Called when the node enters the scene tree for the first time.
func _ready():
	Empty_tile = load("res://Assets/Scenes/Empty_Tile.tscn")
	Cable_tile = load("res://Assets/Scenes/Cable_1_tile.tscn")
	Switch_tile = load("res://Assets/Scenes/Switch_1_tile.tscn")
	Inventory  = get_parent().get_node("Inventory")
	getTiles()			
# function for getting all tiles on the board mainly for debugging
func getTiles():
	for i in get_child_count():
		currentTiles.append(get_child(i))
	pass

func instanceTile(tile,pos):
	var tileInstance = tile.instance()
	tileInstance.position = pos
	add_child(tileInstance)
	return tileInstance
func _process(_delta):
	var clientsReady =0
	for i in get_tree().get_nodes_in_group("Clients"):
		if i.NeededPackets == 0:
			clientsReady +=1
			
	if clientsReady == get_tree().get_nodes_in_group("Clients").size():
		print("Game Won, player spent " + str(Inventory.MONEY_SPENT))
		
		# save then reset money spent and cable count
		Global.levelScores[Global.currentLevel] = Inventory.MONEY_SPENT
		Inventory.MONEY_SPENT = 0
		Inventory.FREE_CABLE_CNT = 0
		
		# show win screen
		get_tree().change_scene("res://Assets/Scenes/Win Screen.tscn")
		
func updateGUI():
	Inventory.MoneySpentLabel.text = "$" + str(Inventory.MONEY_SPENT) # update GUI with new value
	Inventory.FreeCableNum.text = str(Inventory.FREE_CABLE_CNT)
	
	if Inventory.FREE_CABLE_CNT <= 0:
		Inventory.CablePrice.text = "$1"
	else:
		Inventory.CablePrice.text = "$0"
# called by a tile to replace the current tile in that location with a new one ex. Empty -> Cable v1
func placeTile(T): 
	var tile
	if simStarted:
		return
	if Inventory.selectedTile == "Cable_1":
		tile = instanceTile(Cable_tile,T.position)
		if Inventory.FREE_CABLE_CNT == 0:
			Inventory.MONEY_SPENT +=tile.tile_cost
		else:
			Inventory.FREE_CABLE_CNT -=1
	elif Inventory.selectedTile == "Switch": # if switch
		tile = instanceTile(Switch_tile,T.position)
		Inventory.MONEY_SPENT += tile.tile_cost
	if T.baseTile == true: #delete empty tile from board
		T.queue_free()
	updateGUI()
	$buttonSound.play()
#reverse of place tile deletes currently placed tile and places an empty one back
func deleteTile(T):
	var _tile 
	if simStarted:
		return
	if T.destroyable:
		_tile = instanceTile(Empty_tile,T.position)
		if T.tile_type == "Cable":		
			if Inventory.FREE_CABLE_CNT != Inventory.MAX_FREE_CABLES:
				Inventory.FREE_CABLE_CNT +=1
			else:
				Inventory.MONEY_SPENT -=T.tile_cost
		else:
			Inventory.MONEY_SPENT-=T.tile_cost
		if Inventory.MONEY_SPENT <0:
			Inventory.MONEY_SPENT = 0
		updateGUI()	
		T.queue_free() # delete tile that was there
		$buttonSound2.play()
func _input(_event):
	if Input.is_key_pressed(KEY_SPACE) and !simStarted:	
		emit_signal("_simStarted")	
		print("Sim started")
		simStarted = true
		
	# instant win for debugging
	if Input.is_key_pressed(KEY_ENTER):
		print("Game Won")
		get_tree().change_scene("res://Assets/Scenes/Win Screen.tscn")
		
		#$buttonSound3.play()
		
		# reset money spent and cable count
		Inventory.MONEY_SPENT = 0
		Inventory.FREE_CABLE_CNT = 0
		
	if Input.is_key_pressed(KEY_BACKSPACE):
		print("Resetting level")
		get_tree().change_scene("res://Assets/Scenes/level" + str(Global.currentLevel) + ".tscn")
		
		#$buttonSound3.play()
		#$buttonSound2.play()
	pass


