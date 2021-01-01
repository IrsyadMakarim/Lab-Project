extends TalkableCharacter

onready var ds = $CanvasLayer/PakTika1
onready var cl = $CanvasLayer
onready var ds2 = $CanvasLayer/PakTika2
onready var db = $CanvasLayer/PakTika3
onready var dbTimer = $CanvasLayer/PakTika3/Timer

func interaction_interact(interactionComponentParent : Node) -> void:
	if(Global.IsTomogachi == false):
		ds.visible = true
		TalkNpc.play()
	else:
		ds2.visible = true
		TalkNpc.play()
