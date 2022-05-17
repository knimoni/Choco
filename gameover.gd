extends Control

func _ready():
	$VBoxContainer/playagain.grab_focus()

func _on_playagain_pressed():
	get_tree().change_scene("res://Town.tscn")
	print("gamud")

func _on_quit_pressed():
	get_tree().quit()

func _on_main_menu_pressed():
	get_tree().change_scene("res://Menu utama.tscn")
