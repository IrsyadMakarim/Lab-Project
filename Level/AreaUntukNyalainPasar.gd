extends Area2D

func _on_AreaUntukNyalainPasar_body_entered(body):
	Global.pasar = true
	print(Global.pasar)
