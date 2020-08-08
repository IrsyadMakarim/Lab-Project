extends Node2D

onready var save2 = $YSort/Player

#func _ready():
#	Global.level2 = self

func _on_Area2D_body_exited(body):
	Global.pos = Vector2(305,80)
	Global.pos2 = Vector2(305,80)
	get_tree().change_scene("res://Level/World.tscn")

