extends Area2D

func _ready():
	pass
	
func _on_Area2D_body_entered(body):
	if body.name == "Choco":
		get_tree().change_scene("res://Win.tscn")
		print("dahbubar")
