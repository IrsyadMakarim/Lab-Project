extends InteractableItem

onready var ds = $CanvasLayer/Door1
onready var dsTimer = $CanvasLayer/Door1/Panel/Timer
onready var ds2 = $CanvasLayer/Door2
onready var ds2Timer = $CanvasLayer/Door2/Panel/Timer

func interaction_interact(interactionComponentParent : Node) -> void:
	if Global.item < 5:
		ds.visible = true
		dsTimer.start()
	elif Global.mom_final == false:
		ds2.visible = true
		ds2Timer.start()
	else:
		$CanvasLayer/FadeIn.show()
		$CanvasLayer/FadeIn.fade_in()
