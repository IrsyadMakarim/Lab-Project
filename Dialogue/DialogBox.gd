extends RichTextLabel

export(Array, String) var dialogue
var page = 0

func _ready():
	set_bbcode(dialogue[page])
	set_visible_characters(0)
	set_process_input(true)

func _input(event):
	if Input.is_action_just_pressed("ui_accept"):
		if get_visible_characters() > get_total_character_count():
			if page < dialogue.size() -1:
				page += 1
				set_bbcode(dialogue[page])
				set_visible_characters(0)
			else:
				page = -1
		else:
			set_visible_characters(get_total_character_count())

func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)
