extends Area2D

onready var colLvl2 = $CollisionLevel2

func _ready():
	if (Global.level2 == true):
		colLvl2.disabled = false
	else:
		colLvl2.disabled = true

func _on_Level2Area_body_exited(body):
	Global.pos = Vector2(16,80)
	Global.pos2 = Vector2(16,80)
	get_tree().change_scene("res://Level/Level2.tscn")
