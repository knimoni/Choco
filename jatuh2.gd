extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal dead

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Platform_fly():
	queue_free()


func _on_Area2D_body_entered(body):
	if body.name == "Choco":
		emit_signal("dead")
		get_tree().change_scene("res://gameover.tscn") # Replace with function body.
