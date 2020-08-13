extends ConsumableItem

signal item_changed(value)

func _ready():
	if(Global.item >= 2):
		queue_free()

func interaction_interact(interactionComponentParent : Node) -> void:
	print("Layangan sudah diambil!")
	Global.item += 1
	queue_free()
