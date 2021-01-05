extends CanvasLayer

func _process(delta):
	if Input.is_action_pressed("tab"):
		$MainanUI.show()
		$KoinUI.show()
	else:
		$MainanUI.hide()
		$KoinUI.hide()
