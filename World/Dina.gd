extends TalkableCharacter

onready var ds = $CanvasLayer/Dina1
onready var ds2 = $CanvasLayer/Dina2

func interaction_interact(interactionComponentParent : Node) -> void:
	if (Global.IsTulupan == false):
		ds.visible = true
		TalkNpc.play()
	else:
		ds2.visible = true
		TalkNpc.play()
