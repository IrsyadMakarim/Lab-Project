extends Node2D

func _on_WorldArea_body_exited(body):
	Global.pos2 = Vector2(7, 76)
	get_tree().change_scene("res://Level/perumahan.tscn")
