extends TalkableCharacter

onready var ds = $CanvasLayer/NPC1

func interaction_interact(interactionComponentParent : Node) -> void:
	ds.visible = true
	TalkNpc.play()
