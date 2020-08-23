extends TalkableCharacter

onready var ds = $CanvasLayer/PakTika1
onready var ds2 = $CanvasLayer/PakTika2

func interaction_interact(interactionComponentParent : Node) -> void:
	if(Global.IsTomogachi == false):
		ds.visible = true
	else:
		ds2.visible = true
