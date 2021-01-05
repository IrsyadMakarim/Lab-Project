extends TalkableCharacter

onready var ds = $CanvasLayer/Player_Ibu_Perumahan
onready var dsTimer = $CanvasLayer/Player_Ibu_Perumahan/Panel/Timer
onready var ds2 = $CanvasLayer/Player_Ibu_Perumahan2
onready var ds2Timer = $CanvasLayer/Player_Ibu_Perumahan2/Panel/Timer
onready var ds3 = $CanvasLayer/Ibu3
onready var ds3Timer = $CanvasLayer/Ibu3/Panel/Timer
var final_dialogue = false

func _ready():
	Global.connect("final_dialogue", self, "Ibu_final_dialogue")

func interaction_interact(interactionComponentParent : Node) -> void:
	if(Global.IsKelereng == false):
		ds.visible = true
		dsTimer.start()
		Global.isDoorStart = true
		TalkNpc.play()
	elif Global.item == 5 :
		ds3.visible = true
		ds3Timer.start()
		Global.mom_final = true
		TalkNpc.play()
	else:
		ds2.visible = true
		ds2Timer.start()
		TalkNpc.play()

func Ibu_final_dialogue():
	final_dialogue = Global.isFinalDialogueDone

func _on_FadeIn_fade_finished():
	get_tree().change_scene("res://Button/GameOver.tscn")
