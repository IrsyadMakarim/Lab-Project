extends TalkableCharacter

onready var ds = $CanvasLayer/Titan1
onready var ds2 = $CanvasLayer/Titan2
onready var ds3 = $CanvasLayer/Titan3
var rndvalue 

func _ready():
	randomize()
	rndvalue = randi() % 3


func interaction_interact(interactionComponentParent : Node) -> void:
	if rndvalue == 0:
		ds.visible = true
		TalkNpc.play()
	elif rndvalue == 1:
		ds2.visible = true
		TalkNpc.play()
	else:
		ds3.visible = true
		TalkNpc.play()
