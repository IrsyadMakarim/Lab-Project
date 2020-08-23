extends ConsumableItem

onready var ds = $CanvasLayer/Tamagochi

func _ready():
	if(Global.IsTomogachi == true):
		queue_free()

func interaction_interact(interactionComponentParent : Node) -> void:
	Global.item += 1
	Global.IsTomogachi = true
	ds.visible = true
	yield(get_tree().create_timer(1.0), "timeout")
	queue_free()
