extends TalkableCharacter

onready var ds = $CanvasLayer/Player_Kakek_Pasar
onready var ds2 = $CanvasLayer/Player_Kakek_Pasar2

func interaction_interact(interactionComponentParent : Node) -> void:
	if Global.IsBola == false:
		ds.visible = true
	else:
		ds2.visible = true
