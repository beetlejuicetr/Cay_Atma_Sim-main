extends Camera

var sector = {
	"1":0.62,"2":-0.15,"3":-0.83,"4":-1.4,
	"x":-2.42,"z":-9.429,
}
var a = 1
var current_sector = sector[str(a)]
var sectorrr = Vector3(sector["x"],current_sector,sector["z"])
var poss = Vector3()
# Called when the node enters the scene tree for the first time.
func _ready():
	poss = self.transform.origin
	pass # Replace with function body.

func _hareket():
	if Input.is_action_just_pressed("ui_down"):
		if current_sector == sector["4"]:
			current_sector = sector["1"]
			a = 1
		else:
			a += 1
			current_sector = sector[str(a)]
			print(current_sector)
	if Input.is_action_just_pressed("ui_up"):
		if current_sector == sector["1"]:
			current_sector = sector["4"]
			a = 4
		else:
			a -= 1
			_r()
			current_sector = sector[str(a)]
			print(current_sector)
	pass
func _physics_process(_delta):
	_hareket()
	_r()
var velocity = Vector3()
func _r():
	if current_sector >= 0:
		if self.transform.origin.y <= current_sector:
			self.transform.origin.y += 0.01
	else:
		if self.transform.origin.y >= current_sector:
			self.transform.origin.y -= 0.01
	if current_sector <= 0:
		if self.transform.origin.y <= current_sector:
			self.transform.origin.y += 0.01
	else:
		if self.transform.origin.y >= current_sector:
			self.transform.origin.y -= 0.01
	pass
