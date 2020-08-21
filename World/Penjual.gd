extends TalkableCharacter

onready var ds = $CanvasLayer/Player_Penjual
onready var ds2 = $CanvasLayer/Player_Penjual2

func interaction_interact(interactionComponentParent : Node) -> void:
	if (Global.koin < 5):
		ds.visible = true
	elif (Global.koin == 5):
		ds2.visible = true
		Global.item += 1
