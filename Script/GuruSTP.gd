extends TalkableCharacter

onready var ds = $CanvasLayer/DaffaSTP

func interaction_interact(interactionComponentParent : Node) -> void:
	ds.visible = true
	TalkNpc.play()
