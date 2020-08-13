extends Area2D

func _on_ToPerumahan_body_entered(body):
	Global.pos2 = Vector2(240,169)
	get_tree().change_scene("res://Level/perumahan.tscn")
