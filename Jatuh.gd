extends Area2D

signal dead# Declare member variables here. Examples:
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body


func _on_Area2D_body_entered(body):
	if body.name == "Choco":
		emit_signal("dead")
		get_tree().change_scene("res://fallingdown.tscn")

	# Replace with function body # Replace with function body.
