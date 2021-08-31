extends RigidBody


onready var vs = get_node("VisibilityNotifier")
func _ready():
	vs.connect("screen_exited",self,"_ekranda_cikti")
	pass


func _ekrandan_cikti():
	queue_free()
	pass
