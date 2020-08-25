extends TalkableCharacter

onready var ds = $CanvasLayer/Player_Ibu_Perumahan
onready var ds2 = $CanvasLayer/Player_Ibu_Perumahan2

func interaction_interact(interactionComponentParent : Node) -> void:
	if(Global.IsKelereng == false):
		ds.visible = true
		TalkNpc.play()
	else:
		ds2.visible = true
		TalkNpc.play()
