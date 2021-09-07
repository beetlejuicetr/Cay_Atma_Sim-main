extends RigidBody
# İlahi gücün masumlara yardımı -Ardacorex
var pop_plus = 0
onready var vs = get_node("VisibilityNotifier")
onready var cay_mat = preload("res://Probs/Caylar/Cay0/cay_mat.tres")
func _ready():
	vs.connect("screen_exited",self,"_ekranda_cikti")
	if ShopData.Current_Cay_Paketi["texture"] != null:
		cay_mat.albedo_texture = ShopData.Current_Cay_Paketi["texture"]
	if ShopData.Current_Cay_Paketi["pop_plus"] != null:
		pop_plus = ShopData.Current_Cay_Paketi["pop_plus"]
	print(pop_plus)
	if ShopData.Current_Cay_Paketi["mesh"] != null:
		$MeshInstance.mesh = ShopData.Current_Cay_Paketi["mesh"]
	pass


func _ekrandan_cikti():
	queue_free()
	pass
