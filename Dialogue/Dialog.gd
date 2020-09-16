extends Control

export(Array, String) var dialog

var dialog_index = 0
signal dialog_finished

func _ready():
	_load_dialog()

func _load_dialog():
	if dialog_index < dialog.size():
		$Panel/RichTextLabel.text = dialog[dialog_index]
	else:
		index_reset()
		$Panel/RichTextLabel.text = dialog[dialog_index]
		visible = false
		get_tree().paused = false
	dialog_index += 1

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		_load_dialog()

func index_reset():
	dialog_index = 0
