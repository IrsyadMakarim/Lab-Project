extends Area2D

func _on_FromRumahToSekolah_body_entered(body):
	Global.pos2 = Vector2(8, 41)
	get_tree().change_scene("res://Level/sekolah.tscn")
