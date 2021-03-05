extends Control

var scene_path_to_load 

func _ready():
	$"/root/MusicPlayer".play()
	$Menu/CenterRow/Buttons/NewGameButton.grab_focus()
	for button in $Menu/CenterRow/Buttons.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])

func _on_Button_pressed(scene_to_load):
	scene_path_to_load = scene_to_load
	$FadeIn.show()
	$FadeIn.fade_in()
	reset()

func reset():
	Global.pos2 = Vector2(80,12)
	Global.item = 0
	Global.koin = 0
	Global.IsBola = false
	Global.IsKelereng = false
	Global.IsLayangan = false
	Global.IsTomogachi = false
	Global.IsTulupan = false
	Global.koin1 = false
	Global.koin2 = false
	Global.koin3 = false
	Global.koin4 = false
	Global.koin5 = false
	Global.koin6 = false
	Global.koin7 = false
	Global.koin8 = false
	Global.isFinalDialogueDone = false
	Global.mom_final = false
	Global.mom_start = false
	Global.isDoorStart = false

func _on_FadeIn_fade_finished():
	get_tree().change_scene(scene_path_to_load)
	$"/root/MusicPlayer".stop()
	$"/root/GameMusic".play()
