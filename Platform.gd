extends Node2D

func _ready():
	$".".connect("body_entered", self, "bodyEntered")	
