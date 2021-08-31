extends Camera

var sector = {
	"1":0.62,"2":-0.15,"3":-0.83,"4":-1.4,
	"x":-2.42,"z":-9.429,
}
var a = 1
var current_sector = sector[str(a)]
var sectorrr = Vector3(sector.x,current_sector,sector.z)
var poss = Vector3()
# Called when the node enters the scene tree for the first time.
func _ready():
	poss = self.transform.origin
	pass # Replace with function body.

func _hareket():
	if Input.is_action_just_pressed("ui_down"):
		if current_sector == sector["4"]:
			current_sector = sector["1"]
		else:
			a += 1
			current_sector = sector[str(a)]
		
	pass
var aa = 0
func _physics_process(_delta):
	_hareket()
	if transform.origin.y != current_sector:
		self.translation.y += 0.01
