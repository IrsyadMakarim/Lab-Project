extends TalkableCharacter

onready var ds = $CanvasLayer/Player_Nenek
onready var ds2 = $CanvasLayer/Player_Nenek2

func interaction_interact(interactionComponentParent : Node) -> void:
	if Global.IsBola == false:
		ds.visible = true
		TalkNpc.play()
	else:
		ds2.visible = true
		TalkNpc.play()
