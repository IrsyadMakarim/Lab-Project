extends Area2D


func _on_FadeIn_fade_finished():
	Global.pos2 = Vector2(7, 76)
	get_tree().change_scene("res://Level/perumahan.tscn")


func _on_FromStartAreaToPerumahan_body_entered(body):
	$CanvasLayer/FadeIn.show()
	$CanvasLayer/FadeIn.fade_in()
