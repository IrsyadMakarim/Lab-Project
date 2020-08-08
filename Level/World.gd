extends Node2D

onready var dialog = $Panel
onready var player = $YSort/Player
var saved_location

#func _ready():
#	Global.world = self

func _on_AreaDialog_body_entered(body):
	dialog.visible = true

func _on_AreaDialog_body_exited(body):
	dialog.visible = false
