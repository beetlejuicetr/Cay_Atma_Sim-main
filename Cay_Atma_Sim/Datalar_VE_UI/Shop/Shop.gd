#
#
#
# # Çay Atma sim. Shop Scripti
#
#
#
#









extends Node



func _ready():
	ReyonMaterialCont._set_material()
	print(ShopData.Money)
	
	

onready var cay_paketi = get_node("RAF/reyon"+str(current_sector)+"/cay"+str(_hangi_cay))




var _hangi_cay = 0
var current_sector = 1
var z = "res://Datalar_VE_UI/Shop/reyon mat/reyon.tres"
var reyons = load("res://Datalar_VE_UI/Shop/reyon mat/reyon"+str(current_sector)+".tres") 
func _physics_process(delta):
	#--------------------------------------- Reyon Satın alma Kodu -------------------------#
	if Input.is_action_just_pressed("ui_accept"):
		# Ilk Değişken shop data'da ki reyonun durumunu alır , 2. değişken paranın yeterli olup olmadığını kontrol eder 
		if ShopData.Sectors["sector"+str(current_sector)]["status"] == false && ShopData.Money >= ShopData.Sectors["sector"+str(current_sector)]["price"] :
			reyons = load("res://Datalar_VE_UI/Shop/reyon mat/reyon"+str(current_sector)+".tres") 
			print(current_sector)
			reyons.albedo_color = Color.green
			ShopData.Money -= ShopData.Sectors["sector"+str(current_sector)]["price"] 
			ShopData.Sectors["sector"+str(current_sector)]["status"] = true
			print(ShopData.Money)
			SlProcess._save()
			yield(get_tree().create_timer(1),"timeout")
			a = false
			b = false
			_gogo()
			pass
	_hareket()
	_cay_ileri()
	_cay_geri()
	_gogo()
	_reset()
var a = true
var b = true
func _gogo():
	if a == false:
		reyons.rim_enabled = true
		if reyons.rim <= 0.5:
			reyons.rim  += 0.01
		else:
			
			a = true
	if b == false:
		if reyons.rim_tint >= 0:
			reyons.rim_tint -= 0.01
		else:
			b = true

onready var cay =get_node("RAF/reyon"+str(current_sector)+"/cay"+str(_hangi_cay))

func _hareket():
	#---------------------------- Çaylar Arasında Geçiş Kodu --------------------------------#
	if Input.is_action_just_pressed("ui_right") &&  ShopData.Sectors["sector"+str(current_sector)]["status"] == true:
		if _hangi_cay == 4:
			_hangi_cay = 1
			eski_cay_paketi = cay_paketi
			cay_paketi = get_node("RAF/reyon"+str(current_sector)+"/cay"+str(_hangi_cay))
		else:

			_cay_ileri()
			
			_hangi_cay += 1
			eski_cay_paketi = cay_paketi
			cay_paketi = get_node("RAF/reyon"+str(current_sector)+"/cay"+str(_hangi_cay))
			print(_hangi_cay)
		$MENU._changed_item("sector"+str(current_sector),"cay"+str(_hangi_cay))
		pass
	
		#---------------------------- Çaylar Arasında Geçiş Kodu --------------------------------#
	if Input.is_action_just_pressed("ui_left") &&  ShopData.Sectors["sector"+str(current_sector)]["status"] == true:
		if _hangi_cay <= 1:
			_hangi_cay = 4
			eski_cay_paketi = cay_paketi
			cay_paketi = get_node("RAF/reyon"+str(current_sector)+"/cay"+str(_hangi_cay))
		else:

			_cay_ileri()
			
			_hangi_cay -= 1
			eski_cay_paketi = cay_paketi
			cay_paketi = get_node("RAF/reyon"+str(current_sector)+"/cay"+str(_hangi_cay))
			print(_hangi_cay)
		$MENU._changed_item("sector"+str(current_sector),"cay"+str(_hangi_cay))
		pass
	
	
	if  Input.is_action_just_pressed("ui_accept"):
		#----------------------------çay satın alma & seçme kodları --------------------------------#
		if Input.is_action_just_pressed("ui_accept")&&_hangi_cay >= 1:
			if ShopData.Sectors["sector"+str(current_sector)]["cay"+str(_hangi_cay)]["status"] == false && ShopData.Money >= ShopData.Sectors["sector"+str(current_sector)]["cay"+str(_hangi_cay)]["price"]:
				cay_paketi = get_node("RAF/reyon"+str(current_sector)+"/cay"+str(_hangi_cay))
				ShopData.Money -= ShopData.Sectors["sector"+str(current_sector)]["cay"+str(_hangi_cay)]["price"]
				ShopData.Sectors["sector"+str(current_sector)]["cay"+str(_hangi_cay)]["status"] = true
				print(cay_paketi)
				SlProcess._save()
				$MENU._changed_item("sector"+str(current_sector),"cay"+str(_hangi_cay))
			pass
		if Input.is_action_just_pressed("ui_accept") && _hangi_cay >= 1:
			if ShopData.Sectors["sector"+str(current_sector)]["cay"+str(_hangi_cay)]["status"] == true:
				ShopData.Current_Cay_Paketi["texture"] = ShopData.Sectors["sector"+str(current_sector)]["cay"+str(_hangi_cay)]["texture"]
				ShopData.Current_Cay_Paketi["pop_plus"] = ShopData.Sectors["sector"+str(current_sector)]["cay"+str(_hangi_cay)]["pop_plus"]
				print(cay_paketi," selected! ",ShopData.Current_Cay_Paketi["texture"],ShopData.Current_Cay_Paketi["pop_plus"])
				SlProcess._save()
				$MENU._changed_item("sector"+str(current_sector),"cay"+str(_hangi_cay))
		pass
	pass

onready var eski_cay_paketi = get_node("RAF/reyon1/cay1")

#------------------------------- Seçilen Çayı ileri ve Geri Götürme Kodları ------------------#
func _cay_ileri():
	if _hangi_cay > 0:
		if cay_paketi.transform.origin.z <= -9.9:
			cay_paketi.transform.origin.z += 0.01
func _cay_geri():
	if eski_cay_paketi  != cay_paketi:
		if eski_cay_paketi != null:
			if eski_cay_paketi.transform.origin.z >= -10.05:
				eski_cay_paketi.transform.origin.z -= 0.01
	pass



# -------------------- Reyonlar Değiştiğinde Seçilen Çay Geri Fonksiyonlarına Döner --------------------#
func _reset():
	if Input.is_action_just_pressed("ui_end"):
		get_tree().change_scene("res://Mp/MP.tscn")
	if Input.is_action_just_pressed("ui_up") or Input.is_action_just_pressed("ui_down"):
		_hangi_cay = 0
		eski_cay_paketi = cay_paketi
		cay_paketi = get_node("RAF/reyon"+str(current_sector)+"/cay"+str(_hangi_cay))
		$MENU._changed_item("sector"+str(current_sector),"cay"+str(_hangi_cay))
		#sector,cay


