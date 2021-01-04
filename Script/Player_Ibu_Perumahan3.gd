extends Control

export(Array, String) var dialog

onready var RTL  = $Panel/RichTextLabel
var dialog_index = 0
signal dialog_finished

func _ready():
	RTL.set_bbcode(dialog[dialog_index])
	RTL.set_visible_characters(0)
	set_process_input(true)

func _input(event):
	if Input.is_action_just_pressed("ui_accept"):
		if RTL.get_visible_characters() > RTL.get_total_character_count():
			if dialog_index < dialog.size() -1:
				dialog_index += 1
				RTL.set_bbcode(dialog[dialog_index])
				RTL.set_visible_characters(0)
			elif dialog_index >= dialog.size()-1:
				dialog_index = 0
				RTL.set_bbcode(dialog[dialog_index])
				visible = false
				Global.isFinalDialogueDone = true
		else:
			RTL.set_visible_characters(RTL.get_total_character_count())

#func _ready():
#	_load_dialog()
#
#func _load_dialog():
#	if dialog_index < dialog.size() - 1:
#		dialog_index += 1
#		$Panel/RichTextLabel.text = dialog[dialog_index]
#	else:
#		index_reset()
#		$Panel/RichTextLabel.text = dialog[dialog_index]
#		visible = false
#		get_tree().paused = false
#
#func _process(delta):
#	if Input.is_action_just_pressed("ui_accept"):
#		_load_dialog()
#
#func index_reset():
#	dialog_index = 0

func _on_Timer_timeout():
	RTL.set_visible_characters(RTL.get_visible_characters()+1)
