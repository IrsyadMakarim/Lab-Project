extends Control

var mainan = 0 setget set_mainan
var max_mainan = 5 setget set_max_mainan

onready var label = $Label

func set_mainan(value):
	mainan = clamp(value, 0, max_mainan)
	if label != null:
		label.text = "Mainan = "+ str(mainan) + " / 5"

func set_max_mainan(value):
	max_mainan = max(value,1)

func _ready():
	self.max_mainan = Global.max_item
	self.mainan = Global.item
	Global.connect("item_changed", self, "set_mainan")
	
