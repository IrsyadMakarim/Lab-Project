extends ConsumableItem

func _ready():
	if(Global.koin7 == true):
		queue_free()

func interaction_interact(interactionComponentParent : Node) -> void:
	PickupItem.play()
	Global.koin += 1
	Global.koin7 = true
	queue_free()
