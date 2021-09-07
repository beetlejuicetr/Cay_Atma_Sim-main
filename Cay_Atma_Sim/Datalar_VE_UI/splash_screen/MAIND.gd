extends Control



func _ready():
	$AnimationPlayer.play("goog")
	pass 
var a = true
func _physics_process(delta):
	if $AnimationPlayer.is_playing() == false && a == true:
		print("bum")
		a = false
