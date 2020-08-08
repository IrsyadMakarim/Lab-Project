extends ConsumableItem

signal item_changed(value)

func interaction_interact(interactionComponentParent : Node) -> void:
	print("Tulupan sudah diambil!")
	Global.item += 1
	Global.level2 = true
	print(Global.level2)
	queue_free()
