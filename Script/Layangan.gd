extends ConsumableItem

onready var ds = $CanvasLayer/Layangan

func _ready():
	if(Global.IsLayangan == true):
		queue_free()

func interaction_interact(interactionComponentParent : Node) -> void:
	PickupItem.play()
	Global.item += 1
	Global.IsLayangan = true
	ds.visible = true
	yield(get_tree().create_timer(.5), "timeout")
	queue_free()
