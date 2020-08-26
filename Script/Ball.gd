extends StaticBody2D

func _ready():
	if (Global.IsBola == true):
		queue_free()
