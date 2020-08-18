extends ConsumableItem

func _ready():
	if(Global.item >= 4):
		queue_free()

func interaction_interact(interactionComponentParent : Node) -> void:
	print("Tulupan sudah diambil!")
	Global.item += 1
	queue_free()
