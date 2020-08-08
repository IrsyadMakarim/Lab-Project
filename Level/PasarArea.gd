extends Area2D

onready var ColPasar = $CollisionPasar

func _ready():
	if(Global.pasar == false):
		ColPasar.disabled = true
	else:
		ColPasar.disabled = false

func _on_PasarArea_body_entered(body):
	Global.pos = Vector2(310, 50)
	Global.pos2 = Vector2(310, 50)
	get_tree().change_scene("res://Level/pasar.tscn")
	
