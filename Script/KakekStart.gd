extends TalkableCharacter

onready var ds = $CanvasLayer/KakekStart1
onready var ds2 = $CanvasLayer/KakekStart2
var isDialog = false

signal dialog_true

func _ready():
	connect("dialog_true", self, "update_status")

func interaction_interact(interactionComponentParent : Node) -> void:
	if isDialog == false:
		ds.visible = true
		TalkNpc.play()
		emit_signal("dialog_true")
	else:
		ds2.visible = true
		TalkNpc.play()

func update_status():
	isDialog = true
