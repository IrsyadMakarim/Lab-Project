extends Area2D

func _on_ToPasar_body_entered(body):
	$CanvasLayer/FadeIn.show()
	$CanvasLayer/FadeIn.fade_in()

func _on_FadeIn_fade_finished():
	Global.pos2 = Vector2(313,85)
	get_tree().change_scene("res://Level/Level2.tscn")
