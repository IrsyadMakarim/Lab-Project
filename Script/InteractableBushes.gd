extends InteractableItem
class_name InteractableBushes

export var interaction_texture : Texture = preload("res://UI/interactionhand.png")

func interaction_get_texture() -> Texture:
	return interaction_texture

func interaction_get_text() -> String:
	return "Interact"
