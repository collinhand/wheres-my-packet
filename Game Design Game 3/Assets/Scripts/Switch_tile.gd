extends Node2D
export var destroyable = true
export var baseTile = true
export var tile_cost = 0
export var adjacentTiles = []
export var Outputs = ["UP","DOWN"]
export var Inputs = ["LEFT","RIGHT"]
var Board 
var Inventory 
var hasPacket = false
var tile_type = "Switch"
var j = 0
var nextOutput = Outputs[j]
var timer
func setUpTimer():
	timer = Timer.new()
	add_child(timer)
	timer.connect("timeout",self,"_on_Timer_timeout")
	timer.set_wait_time(1.0)
	timer.set_one_shot(false)
# Called when the node enters the scene tree for the first time.
func _ready():
	Board = get_parent()
	Inventory = get_parent().get_parent().get_node("Inventory")
	Board.connect("_simStarted",self,"_on_Board__simStarted")

func _process(_delta):
	
	pass
	
func getInputDirection():
	var rotation:int = self.rotation_degrees
	rotation = rotation % 180
	match rotation :
		0:
			Inputs = ["LEFT","RIGHT"]
			Outputs = ["UP","DOWN"]
		90:
			Inputs = ["UP","DOWN"]
			Outputs= ["LEFT","RIGHT"]
			pass
	nextOutput = Outputs[j]	
func _on_Timer_timeout():
	if !hasPacket :
			j = (j+1)%2
			nextOutput = Outputs[j]
	else:
		nextOutput = Outputs[0]

#when the simulation is started start the servers timer
func _on_Board__simStarted():
	setUpTimer()
	timer.start()
	pass	

func _on_Area2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed:
		match event.button_index:
			BUTTON_LEFT:
				if baseTile:
					if (Inventory.selectedTile != "NULL"):					
						Board.placeTile(self.position)
						queue_free()
				else:
					return
			BUTTON_RIGHT:
				Board.deleteTile(self)
			BUTTON_WHEEL_DOWN:
				self.rotation_degrees += 90
				getInputDirection()
			BUTTON_WHEEL_UP:
				self.rotation_degrees-= 90
				getInputDirection()
func array_clean(arrayOld):
	var arrayNew = []
	for i in arrayOld:
		if is_instance_valid(i):
			arrayNew.append(i)
	adjacentTiles=arrayNew
func _on_Area2D_area_entered(area):
	adjacentTiles.append(area.get_parent())
	array_clean(adjacentTiles)

