extends TalkableCharacter

onready var ds = $CanvasLayer/DialogSystem

func interaction_interact(interactionComponentParent : Node) -> void:
	print("Nenek bisa bicara!")
	ds.visible = true
