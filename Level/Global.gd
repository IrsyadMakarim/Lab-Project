extends Node

var player
var player2
var world
var item = 0 setget set_item
var max_item = 7
var pos2 = Vector2(103,68)
var clearlocation = Vector2(180,180)
var IsLayangan = false
var IsTulupan = false
var IsKelereng = false setget set_true
var IsTomogachi = false
#var current_scene = null

signal item_changed(value)
signal true_changed(value)

func set_item(value):
	item = value
	emit_signal("item_changed", item)

func set_true(value):
	IsKelereng = value
	emit_signal("true_changed", IsKelereng)
#func _ready():
#	var root = get_tree().get_root()
#	current_scene = root.get_child(root.get_child_count() -1)
#
#func goto_scene(path):
#	call_deferred("_deffered_goto_scene", path)
#
#func _deffered_goto_scene(path):
#	current_scene.free()
#	var s = ResourceLoader.load(path)
#	current_scene = s.instance()
#	get_tree().get_root().add_child(current_scene)
#	get_tree().set_current_scene(current_scene)
	
