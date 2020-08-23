extends Area2D

func _on_FromLapanganToSekolah_body_entered(body):
	Global.pos2 = Vector2(287, 166)
	get_tree().change_scene("res://Level/sekolah.tscn")
