extends Area2D

signal nyemplung
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_lobangjatuh_body_entered(body):
	if body.name == "Choco":
		emit_signal("nyemplung")
		get_tree().change_scene("res://fallingdown.tscn")
		print("wadu") # Replace with function body.


