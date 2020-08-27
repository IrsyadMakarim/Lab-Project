extends Control

func _ready():
	yield(get_tree().create_timer(3.0), "timeout")
	$FadeIn.show()
	$FadeIn.fade_in()

func _on_FadeIn_fade_finished():
	get_tree().change_scene("res://Button/Credit.tscn")
