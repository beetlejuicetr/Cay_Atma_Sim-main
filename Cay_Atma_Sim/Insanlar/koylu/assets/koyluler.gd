extends Spatial
export (int) var vil_co = 5
var koyluler = preload("res://Insanlar/koylu/assets/minecraft_-_villager/scene.tscn")
var rng = RandomNumberGenerator.new()
var x
var z
func _ready():
	vs.connect("screen_exited",self,"_ekrandan_cikti")
	AArea.connect("body_entered",self,"_body_girdi")
	for i in vil_co:
		rng.randomize()
		var my_x = rng.randf_range(-0.1,0.7)
		var my_z = rng.randf_range(-0.1,0.7)
		var villager = koyluler.instance()
		villager.transform.origin = Vector3(my_x,0,my_z)
		add_child(villager)
	pass

onready var vs = get_node("VisibilityNotifier")
func _ekrandan_cikti():
	get_parent()._create_villager()
	queue_free()
	pass

var popi = 0
onready var AArea = get_node("MeshInstance/Area")
func _body_girdi(body):
	if body.is_in_group("CAY"):
		popi+=1
		
		body.queue_free()
		DATA.WUMPUS["populasyon"] +=1
		print(DATA.WUMPUS["populasyon"])
	pass
