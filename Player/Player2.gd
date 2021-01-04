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
	Global.tempPos = position
	animTree.active = true

func _process(delta):
	_control_footstep()
	_control_menu()

func _control_footstep():
	if Input.is_action_just_pressed("left"):
		if not FootStep.is_playing():
			FootStep.play()
	elif Input.is_action_just_pressed("right"):
		if not FootStep.is_playing():
			FootStep.play()
	elif Input.is_action_just_pressed("down"):
		if not FootStep.is_playing():
			FootStep.play()
	elif Input.is_action_just_pressed("up"):
		if not FootStep.is_playing():
			FootStep.play()

func _control_menu():
	if Input.is_action_pressed("menu"):
		get_tree().change_scene("res://Level/TitleScreen.tscn")
		$"/root/MusicPlayer".play()
		$"/root/GameMusic".stop()

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("right") - Input.get_action_strength("left")  #MOVEMENT KIRI DAN KANAN
	input_vector.y = Input.get_action_strength("down") - Input.get_action_strength("up") #MOVEMENT ATAS DAN BAWAH
	input_vector = input_vector.normalized()
	
	if Input.is_action_just_pressed("cheat_button"):
		Global.item = 5
		Global.koin = 5
		Global.IsBola = true
		Global.IsKelereng = true
		Global.IsLayangan = true
		Global.IsTomogachi = true
		Global.IsTulupan = true
		Global.koin1 = true
		Global.koin2 = true
		Global.koin3 = true
		Global.koin4 = true
		Global.koin5 = true
	
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
		FootStep.stop()
		$AnimatedSprite.stop()
		animState.travel("Afk")
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	
	velocity = move_and_slide(velocity)
