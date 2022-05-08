extends Node
var InventoryScript

func _ready():
	InventoryScript = get_parent().get_parent()
	
func _on_Button_pressed(extra_arg_0):
	InventoryScript.selectedTile = str(extra_arg_0)
	#print(InventoryScript.selectedTile)


