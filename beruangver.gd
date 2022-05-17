extends KinematicBody2D

signal dead

const SPEED = 70

var velocity = Vector2()

var direction = 1

func _ready():
	pass

func _physics_process(delta):
	velocity.y = SPEED * direction
	
	if direction == 1:
		$AnimatedSprite.play("down")
	else:
		$AnimatedSprite.play("up")
	
	velocity = move_and_slide(velocity)
	
	if is_on_wall():
		direction = direction * -1
		$RayCast2D.position.x *= -1
	
	if $RayCast2D.is_colliding() == true:
		direction = direction * -1
		$RayCast2D.position.y *= -1

func _on_Area2D_body_entered(body):
	emit_signal("dead")
	get_tree().change_scene("res://gameover.tscn")

