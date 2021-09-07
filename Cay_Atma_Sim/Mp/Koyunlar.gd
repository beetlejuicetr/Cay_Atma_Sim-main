extends Spatial
# Koyunlar otobüsün üstündeki ilahi güce tapmak için vardır. -Ardacorex


var villager = preload("res://Insanlar/koylu/assets/koyluler.tscn")
var a = 1

func _ready():
	_create_villager()
	pass 


var vil_x = -5.5
var vil_z = 10
# randomNumber çıkarıcı
var rng = RandomNumberGenerator.new()
func _create_villager():
	var koylu = villager.instance()
	rng.randomize()
	var nm = rng.randi_range(2,3)
	for i in nm:
		koylu.transform.origin = Vector3(vil_x,1,vil_z)
		koylu.rotation_degrees = Vector3(0,90,0)
		self.add_child(koylu)
		
		vil_z += 50/nm
		i+=1
	pass


func _pop():
	pass
