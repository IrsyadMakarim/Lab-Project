extends ConsumableItem

func _ready():
	if(Global.koin3 == true):
		queue_free()

func interaction_interact(interactionComponentParent : Node) -> void:
	PickupItem.play()
	Global.koin += 1
	Global.koin3 = true
	queue_free()
