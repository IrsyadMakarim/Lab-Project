extends Area2D

export var interaction_parent : NodePath

signal on_interactable_changed(newInteractable)

var interaction_target : Node

# Kepanggil setiap frame
func _process(delta):
	# Cek apakah player sedang ingin interact
	if (interaction_target != null and Input.is_action_just_pressed("interact")):
		# Panggil interaction_interact()
		if (interaction_target.has_method("interaction_interact")):
			interaction_target.interaction_interact(self)


# Signal triggered jika collider interact ber-collide 
func _on_InteractionComponent_body_entered(body):
	
	var canInteract := false
	
	if (body.has_method("interaction_can_interact")):
		canInteract = body.interaction_can_interact(get_node(interaction_parent))
	
	if not canInteract:
		return
		
	# Simpan hal yang ingin kita interaksi, jadi bisa kita panggil dari _process
	interaction_target = body
	emit_signal("on_interactable_changed", interaction_target)


func _on_InteractionComponent_body_exited(body):
	if (body == interaction_target):
		interaction_target = null
		emit_signal("on_interactable_changed", null)
