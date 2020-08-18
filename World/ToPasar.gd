extends InteractableBushes

signal true_changed(value)

func _ready():
	if(Global.IsKelereng == true):
		queue_free()

func interaction_interact(interactionComponentParent : Node) -> void:
	if (Global.IsKelereng == false):
		print("Kelereng belum diambil")
	else:
		queue_free()
	

