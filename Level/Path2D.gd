extends Path2D

onready var follow = $PathFollow2D

func _ready():
	pass # Replace with function body.

func _process(delta):
	follow.set_offset(follow.get_offset() + 50 * delta)
