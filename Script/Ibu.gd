extends TalkableCharacter

onready var ds = $CanvasLayer/Player_Ibu_Perumahan
onready var ds2 = $CanvasLayer/Player_Ibu_Perumahan2
onready var ds3 = $CanvasLayer/Ibu3

func interaction_interact(interactionComponentParent : Node) -> void:
	if(Global.IsKelereng == false):
		ds.visible = true
		TalkNpc.play()
	elif Global.item == 5 :
		ds3.visible = true
		TalkNpc.play()
		yield(get_tree().create_timer(30.0),"timeout")
		$CanvasLayer/FadeIn.show()
		$CanvasLayer/FadeIn.fade_in()
	else:
		ds2.visible = true
		TalkNpc.play()

func _on_FadeIn_fade_finished():
	get_tree().change_scene("res://Button/GameOver.tscn")
