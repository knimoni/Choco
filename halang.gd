extends KinematicBody2D

signal finish


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_Area2D_body_entered(body):
	emit_signal("finish")
	get_tree().change_scene("res://gameover.tscn")
	print("gamud")

