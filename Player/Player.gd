extends KinematicBody2D
#class_name Player

const ACCELERATION = 500
const MAX_SPEED = 80
const FRICTION = 500
var velocity = Vector2.ZERO

onready var animationPlayer = $AnimPlayer
onready var animationTree = $AnimTree
onready var animationState = animationTree.get("parameters/playback")

func _ready():
	Global.player = self
	animationTree.active = true
	position = Global.pos

func _process(delta):
	if Input.is_action_pressed("menu"):
		get_tree().change_scene("res://TitleScreen.tscn")

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")  #MOVEMENT KIRI DAN KANAN
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up") #MOVEMENT ATAS DAN BAWAH
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		animationTree.set("parameters/Idle/blend_position", input_vector)
		animationTree.set("parameters/Run/blend_position", input_vector)
		animationState.travel("Run") 
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
	else:
		animationState.travel("Idle")
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	
	velocity = move_and_slide(velocity)
	
	#move_and_collide(velocity * delta)
	#animationPlayer.play("IdleDown") #Jika tidak sedang ngapa2in maka akan Idle ke Kiri/Kanan/Atas/Bawah
	
	#Movement Basic
#if #Input.is_action_pressed("ui_right"):
		#velocity.x = 4
	#elif Input.is_action_pressed("ui_left"):
		#velocity.x = -4
	#elif Input.is_action_pressed("ui_up"):
		#velocity.y = -4
	#elif Input.is_action_pressed("ui_down"):
		#velocity.y = 4
	#else:
		#velocity.x = 0
		#velocity.y = 0
#Play animation
#		if input_vector.x > 0:
#			animationPlayer.play("RunRight") #Menjalankan Animasi Run ke Kanan 
#		else :
#			animationPlayer.play("RunLeft") #Menjalankan Animasi Run ke Kiri
#Cara Ngeflip Sprite 
	#if Input.get_action_strength("ui_left") :
		#get_node("Sprite").set_flip_h(true)  
	#else :
		#get_node("Sprite").set_flip_h(false)
		
	#if Input.get_action_strength("ui_up") :
		#get_node("Sprite").set_flip_v(true)  
	#else :
		#get_node("Sprite").set_flip_v(false)
#Catatan
# Jika ada $ berarti itu memanggil 

#Catatan SG
#var speed = 200
#var velocity = Vector2()

#func _physics_process(delta):
#	get_input()
#	velocity = move_and_slide(velocity)
#	pass

#func get_input():
#	velocity = Vector2()
#	if Input.is_action_pressed("right"):
#		velocity.x += 1
#	if Input.is_action_pressed("left"):
#		velocity.x += -1
#	if Input.is_action_pressed("up"):
#		velocity.y -= 1
#	if Input.is_action_pressed("down"):
#		velocity.y += 1
#Movement kedua
#var speed = 200
#var velocity2 = Vector2()
#Gravity 
#const gravity = 10
#var motion = Vector2()
#
#func get_input():
#	look_at(get_global_mouse_position())
#	velocity2 = Vector2()
#	if Input.is_action_pressed("down"):
#		velocity2 = Vector2(-speed,0).rotated(rotation)
#	if Input.is_action_pressed("up"):
#		velocity2 = Vector2(speed,0).rotated(rotation)
#
#func _physics_process(delta):
#	get_input()
#	velocity2 = move_and_slide(velocity)
#	Gravity
#	motion.y += gravity
#	motion = move_and_slide(motion)
