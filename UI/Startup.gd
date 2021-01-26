extends CanvasLayer

func _ready():
	$FadeOut.show()
	$FadeOut.fade_out()
	yield(get_tree().create_timer(5.0),"timeout")
	$FadeIn.show()
	$FadeIn.fade_in()

func _on_FadeIn_fade_finished():
	get_tree().change_scene("res://Level/TitleScreen.tscn")
