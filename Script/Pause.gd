extends Control

func _ready():
	$PauseMenu/VBoxContainer/ItemButton.grab_focus()
	for btn in $PauseMenu/VBoxContainer.get_children():
		btn.connect("pressed", self, "_on_Button_pressed", [btn.scene_load])

func _on_Button_pressed(scene_load):
	get_tree().change_scene(scene_load)
	get_tree().paused = false
	GameMusic.stop()
	MusicPlayer.play()

func _input(event):
	if event.is_action_pressed("pause"):
		var new_pause_state = not get_tree().paused
		get_tree().paused = new_pause_state
		visible = new_pause_state
