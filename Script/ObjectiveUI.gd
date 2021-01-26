extends Control

onready var label = $Label

func _process(delta):
	set_objective()

func set_objective():
	if (Global.mom_start == false):
		label.text = "Berbicara kepada Ibu"
	elif (Global.mom_start == true):
		label.text = "Carilah mainan-mainan anda"
