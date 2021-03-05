extends CanvasLayer

func _process(delta):
	if Input.is_action_pressed("tab"):
		$MainanUI.show()
		$KoinUI.show()
		$ObjectiveUI.show()
		$ObjectiveUI2.show()
	else:
		$MainanUI.hide()
		$KoinUI.hide()
		$ObjectiveUI.hide()
		$ObjectiveUI2.hide()
