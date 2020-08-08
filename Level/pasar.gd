extends Node2D

#func _ready():
#	Global.pasar = self

func _on_WorldArea_body_exited(body):
	Global.pos = Vector2(21, 63)
	Global.pos2 = Vector2(21, 63)
	get_tree().change_scene("res://Level/World.tscn")
