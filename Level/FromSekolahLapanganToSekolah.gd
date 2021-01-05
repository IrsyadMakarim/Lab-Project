extends Area2D

func _on_FromSekolahLapanganToSekolah_body_entered(body):
	$CanvasLayer/FadeIn.show()
	$CanvasLayer/FadeIn.fade_in()


func _on_FadeIn_fade_finished():
	Global.pos2 = Vector2(312, 48)
	get_tree().change_scene("res://Level/sekolah.tscn")
