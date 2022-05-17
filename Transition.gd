extends CanvasLayer

signal transitioned

func _ready():
	transition()

# Called when the node enters the scene tree for the first time.
func transition():
	$Animationplayer.play("Fade_to_black")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "Fade_to_black":
		emit_signal("transitioned")
		$AnimationPlayer.play("Fade_to_normal")
