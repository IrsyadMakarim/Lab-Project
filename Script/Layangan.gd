extends ConsumableItem

func _ready():
	if(Global.IsLayangan == true):
		queue_free()

func interaction_interact(interactionComponentParent : Node) -> void:
	print("Layangan sudah diambil!")
	Global.item += 1
	Global.IsLayangan = true
	queue_free()
