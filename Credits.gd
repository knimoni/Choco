extends Node2D

func _ready():
	$AnimationPlayer.play("blackout")

func _on_TextureButton_pressed():
	get_tree().change_scene("res://Menu utama.tscn")


func _on_AnimationPlayer_animation_finished(anim_name):
	$AnimationPlayer2.play("game design")
