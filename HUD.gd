extends CanvasLayer

var cokelat = 0

func _ready():
	$Cokelatnya.text = String(cokelat)


func _on_Cokelat2_cokelat_collected():
	cokelat = cokelat+1
	_ready()
