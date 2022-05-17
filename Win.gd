extends Control

var cokelat = 0

func _ready():
	$AudioStreamPlayer.play()

func _on_TextureButton_pressed():
	get_tree().change_scene("res://Menu utama.tscn")

