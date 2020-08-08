extends Area2D

func _on_Level2Area_body_exited(body):
	Global.pos = Vector2(16,80)
	Global.pos2 = Vector2(16,80)
	get_tree().change_scene("res://Level/Level2.tscn")
