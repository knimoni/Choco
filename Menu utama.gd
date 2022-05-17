extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioStreamPlayer.play()

func _on_Start_pressed():
	get_tree().change_scene("res://Town.tscn")

func _on_Credits_pressed():
	get_tree().change_scene("res://Credits.tscn") # Replace with function body.

func _on_Quit_pressed():
	get_tree().quit()
