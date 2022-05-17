extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$HBoxContainer/playagain.grab_focus()
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_playagain_pressed():
	get_tree().change_scene("res://Town.tscn") # Replace with function body.


func _on_main_menu_pressed():
	get_tree().change_scene("res://menu utama.tscn")


func _on_quit_pressed():
	get_tree().quit()
