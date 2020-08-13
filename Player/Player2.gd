extends KinematicBody2D
class_name Player

const ACCELERATION = 300
const MAX_SPEED = 60
const FRICTION = 300
var velocity = Vector2.ZERO

onready var animPlay = $AnimationPlayer
onready var animTree = $AnimationTree
onready var animState = animTree.get("parameters/playback")

func _ready():
	position = Global.pos2
	animTree.active = true

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("right") - Input.get_action_strength("left")  #MOVEMENT KIRI DAN KANAN
	input_vector.y = Input.get_action_strength("down") - Input.get_action_strength("up") #MOVEMENT ATAS DAN BAWAH
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		if Input.get_action_strength("down"):
			$AnimatedSprite.play("WalkDown")
		if Input.get_action_strength("left"):
			$AnimatedSprite.play("WalkLeft")
		if Input.get_action_strength("up"):
			$AnimatedSprite.play("WalkUp")
		if Input.get_action_strength("right"):
			$AnimatedSprite.play("WalkRight")
		animTree.set("parameters/Afk/blend_position", input_vector)
#		animTree.set("parameters/Walk/blend_position", input_vector)
#		animState.travel("Walk") 
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
	else:
		$AnimatedSprite.stop()
		animState.travel("Afk")
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	
	velocity = move_and_slide(velocity)
