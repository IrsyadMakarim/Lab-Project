extends Area2D

func _on_AreaUntukMatiinLevel2_body_entered(body):
	Global.level2 = false
	print(Global.level2)
