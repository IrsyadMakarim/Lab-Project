extends TalkableCharacter

onready var ds = $CanvasLayer/Player_NPC

func interaction_interact(interactionComponentParent : Node) -> void:
	ds.visible = true
	TalkNpc.play()
