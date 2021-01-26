extends Node

var player
var player2
var world
var item = 0 setget set_item
var max_item = 5
var pos2 = Vector2(80,12)
var tempPos 
var clearlocation = Vector2(180,180)
var IsLayangan = false setget set_true_layangan
var IsTulupan = false setget set_true_tulupan
var IsKelereng = false setget set_true_kelereng
var IsTomogachi = false setget set_true_tomogachi
var IsBola = false setget set_true_bola
var koin = 0 setget set_koin
var max_koin = 5
var koin1 = false
var koin2 = false
var koin3 = false
var koin4 = false
var koin5 = false
var isFinalDialogueDone = false
var mom_final = false
var mom_start = false
var isDoorStart = false

signal final_dialogue(value)
signal item_changed(value)
signal true_changed_kelereng(value)
signal true_changed_layangan(value)
signal true_changed_tulupan(value)
signal true_changed_tomogachi(value)
signal true_changed_bola(value)
signal koin_changed(value)

func set_item(value):
	item = value
	emit_signal("item_changed", item)

func set_true_layangan(value):
	IsLayangan = value
	emit_signal("true_changed_layangan", IsLayangan)

func set_true_tulupan(value):
	IsTulupan = value
	emit_signal("true_changed_tulupan", IsTulupan)

func set_true_tomogachi(value):
	IsTomogachi = value
	emit_signal("true_changed_tomogachi", IsTomogachi)

func set_true_kelereng(value):
	IsKelereng = value
	emit_signal("true_changed_kelereng", IsKelereng)

func set_true_bola(value):
	IsBola = value
	emit_signal("true_changed_bola", IsBola)

func set_koin(value):
	koin = value
	emit_signal("koin_changed", koin)
