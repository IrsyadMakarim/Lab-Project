extends ConsumableItem

func _ready():
	if(Global.koin1 == true):
		queue_free()

func interaction_interact(interactionComponentParent : Node) -> void:
	Global.koin += 1
	Global.koin1 = true
	queue_free()
