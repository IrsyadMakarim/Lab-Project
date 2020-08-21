extends TalkableCharacter

onready var ds = $CanvasLayer/NPC2

func interaction_interact(interactionComponentParent : Node) -> void:
	ds.visible = true
