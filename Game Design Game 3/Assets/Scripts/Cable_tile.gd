extends Node2D
export var destroyable = true
export var baseTile = true
export var tile_cost = 0

var tile_type ="Cable"
var hasPacket = false
var adjacentTiles = []
var Board 
var Inventory 
var Sprite
var timer
var InputDirection
var OutputDirection
var regTexture
var rightAngleTexture
var rightAngleTextureMirror
var isRightAngle = false
var mirrored = false
var simStarted = false
func checkRightAngle():
	var adjacentCableCnt=0
	var adjacentCables = []
	for tile in adjacentTiles:
		if tile.tile_type == "Cable":
			adjacentCableCnt+=1
			adjacentCables.append(tile)
	if adjacentCableCnt == 2:
		if (adjacentCables[0].position.x == self.position.x and adjacentCables[1].position.y == self.position.y) or (adjacentCables[1].position.x == self.position.x and adjacentCables[0].position.y == self.position.y):
				get_node("Area2D/Sprite").texture = rightAngleTexture
				isRightAngle = true
				getInputDirection()
	else:
		get_node("Area2D/Sprite").texture = regTexture
		isRightAngle=false
		getInputDirection()
	

	pass
# this is terrible code to fix later but it serves its purpose
func getInputDirection():
	var rotation:int = self.rotation_degrees
	rotation = rotation%360
	match rotation :
		0:
			if !isRightAngle and !mirrored:
				InputDirection = "LEFT"
				OutputDirection ="RIGHT"
			elif isRightAngle and !mirrored:
				InputDirection = "UP"
				OutputDirection ="RIGHT"
			else:
				InputDirection = "UP"
				OutputDirection ="LEFT"
		90:
			if !isRightAngle and !mirrored:
				InputDirection = "UP"
				OutputDirection = "DOWN"
			elif isRightAngle and !mirrored:
				InputDirection = "RIGHT"
				OutputDirection ="DOWN"
			else:
				InputDirection = "RIGHT"
				OutputDirection ="UP"
		180:
			if !isRightAngle and !mirrored:
				InputDirection = "RIGHT"
				OutputDirection = "LEFT"
			elif isRightAngle and !mirrored:
				InputDirection = "DOWN"
				OutputDirection ="LEFT"
			else:
				InputDirection = "DOWN"
				OutputDirection ="RIGHT"
		270:
			if !isRightAngle and !mirrored:
				InputDirection = "DOWN"
				OutputDirection = "UP"
			elif isRightAngle and !mirrored:
				InputDirection = "LEFT"
				OutputDirection ="UP"
			else:
				InputDirection = "LEFT"
				OutputDirection ="DOWN"
	
func array_clean(arrayOld):
	var arrayNew = []
	for i in arrayOld:
		if is_instance_valid(i):
			arrayNew.append(i)
	adjacentTiles=arrayNew
# Called when the node enters the scene tree for the first time.
func _ready():
	regTexture = load("res://Assets/Sprites/Cable_1.png")
	rightAngleTexture = load("res://Assets/Sprites/Cable_elbow.png")
	rightAngleTextureMirror = load("res://Assets/Sprites/Cable_elbow_mirrored.png")
	Board = get_parent()
	Board.connect("_simStarted",self,"_on_Board__simStarted")
	Sprite = get_node("Area2D/Sprite")
	Inventory = get_parent().get_parent().get_node("Inventory")
	getInputDirection()
func _on_Area2D_input_event(_viewport, event, _shape_idx):
	if simStarted:
		return
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
				if destroyable	:
					Board.deleteTile(self)
			BUTTON_MIDDLE:	
				if isRightAngle and !mirrored:
					Sprite.texture = rightAngleTextureMirror
					mirrored = true
				else:
					Sprite.texture = rightAngleTexture
					mirrored = false
				getInputDirection()
			BUTTON_WHEEL_DOWN:
				self.rotation_degrees += 90
				getInputDirection()
			BUTTON_WHEEL_UP:
				self.rotation_degrees-= 90
				getInputDirection()
# gets adjacent tiles
func _on_Area2D_area_entered(area):
	adjacentTiles.append(area.get_parent())
	array_clean(adjacentTiles)
	checkRightAngle()
func _on_Board__simStarted():
	simStarted=true
