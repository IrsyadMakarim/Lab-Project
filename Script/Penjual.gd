extends TalkableCharacter

onready var ds = $CanvasLayer/Player_Penjual
onready var ds2 = $CanvasLayer/Player_Penjual2
var can_buy = true

signal buy

func _ready():
	connect("buy", self, "update_buy")

func interaction_interact(interactionComponentParent : Node) -> void:
	if can_buy == true:
		if (Global.koin < 5):
			ds.visible = true
			TalkNpc.play()
			Global.penjual_start = true
			emit_signal("buy")
	else:
		if (Global.koin == 5):
			$Ball.queue_free()
			ds2.visible = true
			TalkNpc.play()
			Global.IsBola = true
			Global.item += 1
			Global.koin -= 5
			Global.penjual_start = false

func update_buy():
	can_buy = false
