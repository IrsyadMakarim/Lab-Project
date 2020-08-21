extends ConsumableItem

onready var ds = $CanvasLayer/DialogSystem

func _ready():
	if(Global.IsKelereng == true):
		queue_free()

func interaction_interact(interactionComponentParent : Node) -> void:
	print("Kelereng sudah diambil!")
	Global.item += 1
	Global.IsKelereng = true
	ds.visible = true
	yield(get_tree().create_timer(1.0), "timeout")
	queue_free()
