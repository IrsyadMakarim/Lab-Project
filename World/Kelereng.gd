extends ConsumableItem

func _ready():
	if(Global.item >= 1):
		queue_free()

func interaction_interact(interactionComponentParent : Node) -> void:
	print("Kelereng sudah diambil!")
	Global.item += 1
	Global.IsKelereng = true
	queue_free()
