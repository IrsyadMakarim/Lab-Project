extends TalkableCharacter

onready var ds = $CanvasLayer/Bukit1
onready var ds2 = $CanvasLayer/Bukit2

func interaction_interact(interactionComponentParent : Node) -> void:
	if (Global.IsLayangan == false):
		ds.visible = true
		TalkNpc.play()
	else:
		ds2.visible = true
		TalkNpc.play()
	
