extends Control
export var MAX_SPEND_NEEDED = 0 #The most money you would have to spend to complete the level
export var MONEY_SPENT = 0 #how much money has been spent
export var FREE_CABLE_CNT = 0 # How many free cables used
export var MAX_FREE_CABLES = 0 #Maximum free cables allowed
onready var MoneySpentLabel = get_node("HBoxContainer/SpentLabel")
onready var FreeCableNum = get_node("Free Cables Text/CableNum")
var selectedTile ="NULL" #which tile the player has selected
