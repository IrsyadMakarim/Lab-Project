extends TalkableCharacter

onready var ds = $CanvasLayer/Player_Nenek

func interaction_interact(interactionComponentParent : Node) -> void:
	ds.visible = true
	TalkNpc.play()
