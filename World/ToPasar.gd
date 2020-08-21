extends InteractableBushes

signal true_changed(value)
onready var ds = $CanvasLayer/Bush_Larang

func _ready():
	if(Global.IsKelereng == true):
		queue_free()

func interaction_interact(interactionComponentParent : Node) -> void:
	if (Global.IsKelereng == false && Global.IsTomogachi == false && Global.IsTulupan == false):
		ds.visible = true
	else:
		queue_free()
	

