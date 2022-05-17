extends KinematicBody2D

signal dead

const SPEED = 120
const FLOOR = Vector2(0, -1)

var velocity = Vector2()

var direction = 1

func _ready():
	pass

func _physics_process(delta):
	velocity.x = SPEED * direction
	
	if direction == 1:
		$Sprite.play("right")
	else:
		$Sprite.play("left")
	
	velocity = move_and_slide(velocity, FLOOR)
	
	if is_on_wall():
		direction = direction * -1


func _on_Area2D_body_entered(body):
	emit_signal("dead")
	get_tree().change_scene("res://gameover.tscn")
	print("gamud")
