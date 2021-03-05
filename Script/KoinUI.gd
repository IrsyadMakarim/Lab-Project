extends Control

var coin = 0 setget set_coin
var max_coin = 5 setget set_max_coin

onready var label = $Label

func set_coin(value):
	coin = clamp(value, 0, max_coin)
	if label != null:
		label.text = "Koin = "+ str(coin)

func set_max_coin(value):
	max_coin = max(value, 1)

func _ready():
	self.coin = Global.koin
	self.max_coin = Global.max_koin
	Global.connect("koin_changed", self, "set_coin")
