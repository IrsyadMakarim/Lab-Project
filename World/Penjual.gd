extends TalkableCharacter

onready var ds = $CanvasLayer/Player_Penjual
onready var ds2 = $CanvasLayer/Player_Penjual2

func interaction_interact(interactionComponentParent : Node) -> void:
	print("Penjual bisa bicara!")
	if (Global.IsTulupan == false):
		ds.visible = true
	else:
		ds2.visible = true
