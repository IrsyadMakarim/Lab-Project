extends Area2D

func _on_FromSekolahToRumah_body_entered(body):
	Global.pos2 = Vector2(309, 29)
	get_tree().change_scene("res://Level/perumahan.tscn")
