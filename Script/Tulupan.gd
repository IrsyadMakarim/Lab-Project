extends ConsumableItem

onready var ds = $CanvasLayer/Tulupan_Diambil

func _ready():
	if(Global.IsTulupan == true):
		queue_free()

func interaction_interact(interactionComponentParent : Node) -> void:
	print("Tulupan sudah diambil!")
	Global.item += 1
	Global.IsTulupan = true
	ds.visible = true
	yield(get_tree().create_timer(1.0), "timeout")
	queue_free()
