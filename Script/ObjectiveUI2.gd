extends Control

onready var label = $Label

func _process(delta):
	set_objective()

func set_objective():
	if (Global.penjual_start == false):
		label.text = ""
	elif (Global.penjual_start == true):
		label.text = "Cari koin untuk membeli bola!"
