extends Area2D

func _on_ToPasar_body_entered(body):
	Global.pos2 = Vector2(313,42)
	get_tree().change_scene("res://Level/pasar.tscn")
