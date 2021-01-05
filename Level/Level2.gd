extends Node2D

onready var save2 = $YSort/Player

func _on_Area2D_body_entered(body):
	Global.pos2 = Vector2(7, 76)
	get_tree().change_scene("res://Level/perumahan.tscn")
