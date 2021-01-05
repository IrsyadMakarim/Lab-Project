extends Area2D

func _on_FromPEToPerumahan2_body_entered(body):
	$CanvasLayer/FadeIn.show()
	$CanvasLayer/FadeIn.fade_in()

func _on_FadeIn_fade_finished():
	Global.pos2 = Vector2(8, 92)
	get_tree().change_scene("res://Level/Perumahan2.tscn")
