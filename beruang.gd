extends KinematicBody2D

const speed = 45
var move = Vector2.ZERO
var myself = null

func _physics_process(delta: float) -> void:
	move = Vector2.ZERO
	if myself:
		move = position.direction_to(myself.position) * speed
		move_and_slide(move)


func _on_Area2D_body_entered(body):
	myself = body

func _on_Area2D_body_exited(body):
	myself = null
