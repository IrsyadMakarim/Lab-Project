extends Area2D

func _on_FromPasarToPE_body_entered(body):
	$CanvasLayer/FadeIn.show()
	$CanvasLayer/FadeIn.fade_in()


func _on_FadeIn_fade_finished():
	Global.pos2 = Vector2(7, 89)
	get_tree().change_scene("res://Level/PasarExtended.tscn")
