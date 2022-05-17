extends Area2D

signal cokelat_collected

func _ready():
	pass

func _on_Area2D_body_entered(body):
	if body.name == "Choco":
		emit_signal("cokelat_collected")
		queue_free()
		print("Horray")
