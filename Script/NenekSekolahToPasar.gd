extends TalkableCharacter

onready var ds = $CanvasLayer/NenekSTP

func interaction_interact(interactionComponentParent : Node) -> void:
	ds.visible = true
	TalkNpc.play()
