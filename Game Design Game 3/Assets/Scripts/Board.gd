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

func updateGUI():
	Inventory.MoneySpentLabel.text = str(Inventory.MONEY_SPENT) # update GUI with new value
	Inventory.FreeCableNum.text = str(Inventory.FREE_CABLE_CNT)
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
func _input(_event):
	if Input.is_key_pressed(KEY_SPACE) and !simStarted:	
		emit_signal("_simStarted")	
		print("Sim started")
		simStarted = true
	pass	

