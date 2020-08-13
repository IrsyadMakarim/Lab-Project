extends Node

var character_name : String = "Irsyad"
var max_health : int = 100
var health : int = max_health #Copies the value
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func take_damage(amount:int) -> void :
	health -= amount
	health = max(0, health)
	
func heal(amount:int) :
	health += amount
	health = min(health, max_health)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
	
